import sys,os
import math
import sklearn
from os import walk
from collections import Counter
import re
from sklearn import svm

#Here we are computing TF-IDF on the corpus. We are treating each side of the conversation as a seperate document,
#as we are interested in the characteristics of each individual speaker, not necessarily the conversation as a whole

#There are a few transcript notation quirks to be aware of

# double parens indicate transcriber was unsure what he heard, is a best guess (( ))
# colons indicate special sounds, ie [clicking]. There's a whole bunch of these
# curly braces indicate a comment on the part of the transcriber, ie {very faint}

TRANSCRIPTDIRECTORYROOT = "/afs/ir/data/linguistic-data/Switchboard/Switchboard-Transcripts/swb1/trans/"
SUPPORTFILESDIR = "../shared/"

globalTFIDF = Counter()

stripCommentsRegex = re.compile('\{.+?\}')
stripSoundsRegex = re.compile('\[.+?\]')

def outputTFIDF(TFIDF):
    outputfile = open('output', 'w')
    outputfile2 = open('outputtop10', 'w')
    outputfile3 = open('outputtotal100', 'w')
    for speaker in TFIDF:
        outputfile.write(speaker + "---\n")
        outputfile2.write(speaker + "---\n")
        for term in TFIDF[speaker]:
            score = TFIDF[speaker][term]
            outputfile.write(term + "," + str(score) + "\n")
        for entry in TFIDF[speaker].most_common(10):
            outputfile2.write(entry[0] + "," + str(entry[1]) + "\n")
    for entry in globalTFIDF.most_common(100):
        outputfile3.write(entry[0] + "," + str(entry[1]) + "\n")
    outputfile.close()
    outputfile2.close()
    outputfile3.close()

def computeTFIDF(TFIDF, speakersPerTerm, termScorePerSpeakerDict):
    numSpeakers = len(termScorePerSpeakerDict)
    for speaker in termScorePerSpeakerDict:
        if speaker not in globalTFIDF:
            TFIDF[speaker] = Counter()
            
        for word in termScorePerSpeakerDict[speaker]:
            termscore = termScorePerSpeakerDict[speaker][word]
            inversedocfrequency = math.log(float(numSpeakers) / speakersPerTerm[word])

            TFIDF[speaker][word] = termscore * inversedocfrequency
            globalTFIDF[word] += termscore * inversedocfrequency

def processSpeakerText(speaker, text, wordsForSpeaker):
    #We strip out any double parens, for tf-idf we don't care about we assume the transcriber's guess was correct
    text = text.replace("((","").replace("))","")
    #Strip out any curly-braces, as we don't want to count transcriber comments 
    text = stripCommentsRegex.sub('', text)
    text = stripSoundsRegex.sub('', text)
    text = text.replace(",", "").replace(".","").replace("?","").replace("#","")
    
    text = text.lower()
    words = text.split()
    
    for word in words:            
        wordsForSpeaker[speaker][word] += 1
        

    #num times this term occurs in this doc * (number of documents / number of documents containing the term)
    
def readSpeechFile(filepath, speakersPerTerm, termScorePerSpeakerDict):
    curfile = open(filepath, 'r')
    fulltext = curfile.read()
    #skipping the file header and getting the speech segments divided up
    headertext = re.split("={10,}",fulltext)[0]
    speechtext = re.split("={10,}",fulltext)[1]
    speakertexts = speechtext.split("\n\n")[1:]
    wordsForSpeaker = {}
    print filepath
    previousspeaker = ""
    previouspreviousspeaker = ""    
    for speakertext in speakertexts:
        if speakertext != "":
            components = speakertext.split(":")
            if components[0].strip() == "":
                components[0] = previouspreviousspeaker
            speaker = components[0].strip()[-1]
            previouspreviousspeaker = previousspeaker
            previousspeaker = speaker
            text = ''.join(components[1:]).strip()
            if speaker not in wordsForSpeaker and text != '':
                wordsForSpeaker[speaker] = Counter()
            
            if text != '':
                processSpeakerText(speaker, text, wordsForSpeaker)
    
    for speaker in wordsForSpeaker:
        topfrequency = wordsForSpeaker[speaker].most_common(1)[0][1]
        for term in wordsForSpeaker[speaker]:
            count = wordsForSpeaker[speaker][term]
            augmentedFrequency = 0.5 + (0.5 * float(count) / topfrequency)
            
            if filepath+speaker not in termScorePerSpeakerDict:
                termScorePerSpeakerDict[filepath+speaker] = {}
                termScorePerSpeakerDict[filepath+speaker][term] = augmentedFrequency
            else:
                if term not in termScorePerSpeakerDict[filepath+speaker]:
                    termScorePerSpeakerDict[filepath+speaker][term] = augmentedFrequency
                else:
                    termScorePerSpeakerDict[filepath+speaker][term] += augmentedFrequency
                       
            speakersPerTerm[term] += 1
            
    
def readFilesInDirectory(directory):
    files = []
    for (dirpath, dirnames, filenames) in walk(directory):
        files.extend(filenames)
        break
    returnlist = []
    for file in files:
        if file.endswith(".txt"):
            returnlist.append(directory + file)
    return returnlist

def readPhase(path):
    cds = []
    for (dirpath, dirnames, filenames) in walk(path):
        cds.extend(dirnames)
        break
    totalfiles = []    
    for cd in cds:
        totalfiles.extend(readFilesInDirectory(path + cd + "/"))
    return totalfiles

def getConvToSpeakers():
    curfile = open(SUPPORTFILESDIR + "conv2per.txt", 'r')
    skippedfirstline = False
    convToSpeaker = {}
    for line in curfile:
        if not skippedfirstline:
            skippedfirstline = True
            continue
        elements = line.split()
        conv = elements[0]
        speakerA = elements[1]
        speakerB = elements[2]
        convToSpeaker[conv] = [speakerA, speakerB]
    return convToSpeaker
    
def getLabels(speakerlist, convtospeakers):
    curfile = open(SUPPORTFILESDIR + "person.txt", 'r')
    speakerToLabels = {}
    speakervector = []
    for line in curfile:
        elements = line.split()
        speaker = elements[0]
        labelA = elements[1]
        labelB = elements[2]
        labelC = elements[3]
        labelD = elements[4]
        speakerToLabels[speaker] = [labelA, labelB, labelC, labelD]   
    for speaker in speakerlist:
        speakerLetter = speaker[-1]
        convId = speaker.split("/")[-1][2:-5]
        print convId
        #FIX MISSING ENTRY IN CONVMAPPINGFILE later
        if convId in convtospeakers:
            if speakerLetter == "A":
                speakerId = convtospeakers[convId][0]
                speakervector.append(speakerToLabels[speakerId][1])
            elif speakerLetter == "B":
                speakerId = convtospeakers[convId][1]
                speakervector.append(speakerToLabels[speakerId][1])
            else:
                print speaker
                print speakerLetter
                asdasdads
        else:
            speakervector.append("0")
    return speakervector

def getVectors(speakersPerTermTrain, TFIDF, speakerlist):
    terms = sorted(speakersPerTermTrain.keys())
    vector = []
    for speaker in speakerlist:
        termvector = []
        for term in terms:
            if term in TFIDF[speaker]:
                termvector.append(TFIDF[speaker][term])
            else:
                termvector.append("0")
        vector.append(termvector)
    return vector
        
def main():
    speakersPerTermTrain = Counter()
    speakersPerTermTest = Counter()
    termScorePerSpeakerDictTrain = {}
    termScorePerSpeakerDictTest = {}
    TFIDFtrain = {}
    
    totalfiles = []
    totalfiles.extend(readPhase(TRANSCRIPTDIRECTORYROOT + "phase1/"))
    totalfiles.extend(readPhase(TRANSCRIPTDIRECTORYROOT + "phase2/"))
    trainfiles = totalfiles[:int(len(totalfiles)*0.8)]
    testfiles = totalfiles[int(len(totalfiles)*0.8):]
    print "before read in"
    for file in trainfiles:
        readSpeechFile(file, speakersPerTermTrain, termScorePerSpeakerDictTrain)
    print "after read in"
    computeTFIDF(TFIDFtrain, speakersPerTermTrain, termScorePerSpeakerDictTrain)
    print "after compute tfidf"
    outputTFIDF(TFIDFtrain)
    print "after output"
    speakers = TFIDFtrain.keys()
    convtospeakers = getConvToSpeakers()
    print "after get convtospeaker"
    vectors = getVectors(speakersPerTermTrain, TFIDFtrain, speakers)
    print "after get vectors"
    labels = getLabels(speakers, convtospeakers)
    print "after get labels"
    clf = svm.SVC()
    clf.fit(vectors, labels)
    print "after svm fit"
    TFIDFtest = {}
    for file in testfiles:
        readSpeechFile(file, speakersPerTermTest, termScorePerSpeakerDictTest)
    print "after read test"
    
    
    computeTFIDF(TFIDFtest, speakersPerTermTest, termScorePerSpeakerDictTest)
    speakers = TFIDFtest.keys()
    testvectors = getVectors(speakersPerTermTrain, TFIDFtest, speakers)
    testlabels = getLabels(speakers, convtospeakers)
    print "before predict"
    predictions = clf.predict(testvectors)
    print "after predict"
    correct = 0
    total = 0
    for i in range(0,len(predictions)):
        if predictions[i] == testlabels[i]:
            correct += 1
        total += 1
    
    print "Accuracy for gender: "
    print float(correct) / total
    
    #clf.predict([[2., 2.]])
    
    #trainSVM(TFIDFtrain, convtospeakers,labels)
    #trainSVM
    
if __name__ == "__main__":
    main()
