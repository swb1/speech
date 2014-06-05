import sys,os
import math
from os import walk
from collections import Counter
import re

#Here we are computing TF-IDF on the corpus. We are treating each side of the conversation as a seperate document,
#as we are interested in the characteristics of each individual speaker, not necessarily the conversation as a whole

#There are a few transcript notation quirks to be aware of

# double parens indicate transcriber was unsure what he heard, is a best guess (( ))
# colons indicate special sounds, ie [clicking]. There's a whole bunch of these
# curly braces indicate a comment on the part of the transcriber, ie {very faint}

TRANSCRIPTDIRECTORYROOT = "/afs/ir/data/linguistic-data/Switchboard/Switchboard-Transcripts/swb1/trans/"
SUPPORTFILESDIR = "../shared/"

globalTFIDFunigram = Counter()
globalTFIDFbigram = Counter()
stopwords = Counter()
scorePerTerm = Counter()
labelCounts = Counter()
KLScoresUnigram = Counter()
KLScoresBigram = Counter()

scorePerLabelAndTerm = {}
speakerToLabels = {}

stripCommentsRegex = re.compile('\{.+?\}')
stripSoundsRegex = re.compile('\[.+?\]')

#top 1k unigrams
#top 1k bigrams
#all stopwords
#all bigrams consisting of 2 stopwords
def outputTFIDF(TFIDFunigram, TFIDFbigram):
    outputfile2 = open('outputtop10unigram', 'w')
    outputfile3 = open('outputtop10bigram', 'w')
    outputfile4 = open('outputtotal1000unigram', 'w')
    outputfile5 = open('outputtotal1000bigram', 'w')
    outputfile6 = open('outputtotal1000KLunigram', 'w')
    outputfile7 = open('outputtotal1000KLbigram', 'w')
    for speaker in TFIDFunigram:
        outputfile2.write(speaker + "---\n")
        for entry in TFIDFunigram[speaker].most_common(10):
            outputfile2.write(entry[0] + "," + str(entry[1]) + "\n")
    
    for speaker in TFIDFbigram:
        outputfile3.write(speaker + "---\n")
        for entry in TFIDFbigram[speaker].most_common(10):
            outputfile3.write(entry[0] + "," + str(entry[1]) + "\n")
            
    for entry in globalTFIDFunigram.most_common(1000):
        outputfile4.write(entry[0] + "," + str(entry[1]) + "\n")
    for entry in globalTFIDFbigram.most_common(1000):
        outputfile5.write(entry[0] + "," + str(entry[1]) + "\n")
    for entry in KLScoresUnigram.most_common(1000):
        outputfile6.write(entry[0] + "," + str(entry[1]) + "\n")
    for entry in KLScoresBigram.most_common(1000):
        outputfile7.write(entry[0] + "," + str(entry[1]) + "\n")
    outputfile2.close()
    outputfile3.close()
    outputfile4.close()
    outputfile5.close()
    outputfile6.close()
    outputfile7.close()

def computeTFIDF(TFIDFunigram, TFIDFbigram, speakersPerTerm, termScorePerSpeakerDict, computeKL):
    numSpeakers = len(termScorePerSpeakerDict)
    print "num speakers: " + str(numSpeakers)
    for speaker in termScorePerSpeakerDict:
        if speaker not in TFIDFunigram:
            TFIDFunigram[speaker] = Counter()
        if speaker not in TFIDFbigram:
            TFIDFbigram[speaker] = Counter()  
        
        for word in termScorePerSpeakerDict[speaker]:
            termscore = termScorePerSpeakerDict[speaker][word]
            #boost stopwords
            #if (word in stopwords or (len(word.split()) > 1 and word.split()[0] in stopwords and word.split()[1] in stopwords)):
            #    termscore = termscore * 2
            inversedocfrequency = (float(numSpeakers) / speakersPerTerm[word])
            
            if len(word.strip().split()) > 1:
                TFIDFbigram[speaker][word] = termscore #* inversedocfrequency
                globalTFIDFbigram[word] = max(float(termscore) * inversedocfrequency, globalTFIDFbigram[word]) #/ numSpeakers
            else:
                TFIDFunigram[speaker][word] = termscore #* inversedocfrequency
                globalTFIDFunigram[word] = max(float(termscore) * inversedocfrequency, globalTFIDFunigram[word]) #/ numSpeakers
    
    if computeKL:
        totalTermCount = 0
        for word in scorePerTerm:
            totalTermCount += scorePerTerm[word]
        totalLabels = 0
        for label in labelCounts:
            totalLabels += labelCounts[label]
            
        for word in scorePerTerm:
            KL_DivergenceScore = 0
            isValid = True
            for label in labelCounts:
                if scorePerLabelAndTerm[label][word] < 3:
                    isValid = False
                    break
            
            if isValid:
                for label in labelCounts:
                    p_ClassGivenWord = (float(scorePerLabelAndTerm[label][word]) / totalTermCount) / (float(scorePerTerm[word]) / totalTermCount)
                    p_Class = float(labelCounts[label]) / totalLabels
                    #print str(word) + "," + str(p_ClassGivenWord) + "," + str(p_Class) + "," + str(scorePerLabelAndTerm[label][word]) + "," + str(scorePerTerm[word]) + "," + str(totalTermCount) + "," + str(totalLabels)
                    if p_ClassGivenWord == 0:
                        KL_DivergenceScore += -0.000000000000000000001
                    else:
                        KL_DivergenceScore += p_ClassGivenWord * math.log(p_ClassGivenWord / p_Class)
                if len(word.strip().split()) > 1:
                    KLScoresBigram[word] = KL_DivergenceScore
                else:
                    KLScoresUnigram[word] = KL_DivergenceScore

def processSpeakerText(speaker, text, wordsForSpeaker):
    #We strip out any double parens, for tf-idf we don't care about we assume the transcriber's guess was correct
    text = text.replace("((","").replace("))","")
    #Strip out any curly-braces, as we don't want to count transcriber comments 
    text = stripCommentsRegex.sub('', text)
    text = stripSoundsRegex.sub('', text)
    text = text.replace(",", "").replace(".","").replace("?","").replace("#","")
    
    text = text.lower()
    words = text.split()
    
    prevword = "[start]"
    for word in words:    
        wordsForSpeaker[speaker][word] += 1
        wordsForSpeaker[speaker][prevword + " " + word] += 1
        prevword = word
    if len(words) > 0:
        wordsForSpeaker[speaker][words[-1] + " [end]"] += 1
    #num times this term occurs in this doc * (number of documents / number of documents containing the term)

def readSpeechFile(filepath, speakersPerTerm, termScorePerSpeakerDict, convtospeakers, curlabel):
    curfile = open(filepath, 'r')
    fulltext = curfile.read()
    #skipping the file header and getting the speech segments divided up
    headertext = re.split("={10,}",fulltext)[0]
    speechtext = re.split("={10,}",fulltext)[1]
    speakertexts = speechtext.split("\n\n")[1:]
    wordsForSpeaker = {}
    
    convID = filepath.split("/")[-1][2:-4]
    if convID not in convtospeakers:
        return
        
    #print filepath
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
    
    speakerIDs = convtospeakers[convID]
    for speaker in wordsForSpeaker:
        if speaker == "A":
            speakerID = speakerIDs[0]
        else:
            speakerID = speakerIDs[1]
        topfrequency = wordsForSpeaker[speaker].most_common(1)[0][1]
        
        thislabel = speakerToLabels[speakerID][curlabel]
        if thislabel not in scorePerLabelAndTerm:
            scorePerLabelAndTerm[thislabel] = Counter()
        
        labelCounts[thislabel] += 1
        
        for term in wordsForSpeaker[speaker]:
            count = wordsForSpeaker[speaker][term]
            augmentedFrequency = 0.5 + (0.5 * float(count) / topfrequency)
            
            if speakerID not in termScorePerSpeakerDict:
                termScorePerSpeakerDict[speakerID] = {}
                termScorePerSpeakerDict[speakerID][term] = augmentedFrequency
            else:
                if term not in termScorePerSpeakerDict[speakerID]:
                    termScorePerSpeakerDict[speakerID][term] = augmentedFrequency
                else:
                    termScorePerSpeakerDict[speakerID][term] += augmentedFrequency
            
            scorePerLabelAndTerm[thislabel][term] += count #augmentedFrequency         
            scorePerTerm[term] += count
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

def loadLabels():
    curfile = open(SUPPORTFILESDIR + "person.txt", 'r')
    for line in curfile:
        elements = line.split()
        speaker = elements[0]
        labelA = elements[1]
        labelB = elements[2]
        labelC = elements[3]
        labelD = elements[4]
        speakerToLabels[speaker] = [labelA, labelB, labelC, labelD]
        
def getLabels(speakerlist, labelToUse):
    speakervector = []
    for speaker in speakerlist:
        speakervector.append(speakerToLabels[speaker][labelToUse])
        
    return speakervector

    
def getVocabulary(allterms):
    validvocab = []
    #topunigrams = globalTFIDFunigram.most_common(1200)
    #topbigrams = globalTFIDFbigram.most_common(1200)
    topKLunigrams = KLScoresUnigram.most_common(10000)
    topKLbigrams = KLScoresBigram.most_common(10000)
    for term in allterms:
        if len(term.strip().split()) > 1:
            if term.strip().split()[0] in stopwords and term.strip().split()[1] in stopwords:
                validvocab.append(term)
                continue
            #else:
            #    for entry in topKLbigrams:#topbigrams:
            #        if term == entry[0]:
            #            validvocab.append(term)
            #            break
        else:
            if term in stopwords:
                validvocab.append(term)
                continue
            #else:
            #    for entry in topKLunigrams:#topunigrams:
            #        if term == entry[0]:
            #            validvocab.append(term)
            #            break
    validvocab.extend(topKLunigrams)
    validvocab.extend(topKLbigrams)
    return validvocab


def getVectors(speakersPerTermTrain, TFIDFunigram, TFIDFbigram, speakerlist, terms):
    vector = []
    #print len(speakerlist)
    #print len(terms)
    averagepercent = 0

    #for speaker in speakerlist:
    #vector = [[KLScoresBigram[term] if term in KLScoresBigram else KLScoresUnigram[term] if term in KLScoresUnigram else "0" for term in terms] for speaker in speakerlist]
    vector = [[TFIDFbigram[speaker][term]*KLScoresBigram[term] if term in TFIDFbigram[speaker] else TFIDFunigram[speaker][term]*KLScoresUnigram[term] if term in TFIDFunigram[speaker] else "0" for term in terms] for speaker in speakerlist]
    #    vector.append(termvector)
    #print ("Average zero percentage:")
    #print (float(averagepercent) / (len(speakerlist)*len(terms)))
    return vector
    
def outputCalculation(prefix, vectors, labels):
    curfile = open(prefix + ".lsvm", 'w')
    for i in range(0,len(labels)):
        outputstr = ""
        outputstr += labels[i] + " "
        for j in range(0,len(vectors[i])):
            outputstr += str(j+1) + ":" + str(vectors[i][j]) + " "
        outputstr = outputstr.strip() + "\n"
        #print outputstr
        curfile.write(outputstr)
        
def loadStopList():
    curfile = open("stopwords", 'r')
    for word in curfile:
        stopwords[word.strip()] += 1
    
def main():
    loadStopList()
    loadLabels()
    labelToUse = int(sys.argv[1])
    labelname = ""
    if labelToUse == 0:
        labelname = "age"
    elif labelToUse == 1:
        labelname = "gender"
    elif labelToUse == 2:
        labelname = "accent"
    elif labelToUse == 3:
        labelname = "edu"
    
    #isBuildStep = sys.argv[1]
    speakersPerTermTrain = Counter()
    speakersPerTermTest = Counter()
    termScorePerSpeakerDictTrain = {}
    termScorePerSpeakerDictTest = {}
    TFIDFtrainunigram = {}
    TFIDFtrainbigram = {}
    totalfiles = []

    totalfiles.extend(readPhase(TRANSCRIPTDIRECTORYROOT + "phase1/"))
    totalfiles.extend(readPhase(TRANSCRIPTDIRECTORYROOT + "phase2/"))
    trainfiles = totalfiles[:int(len(totalfiles)*0.8)]
    testfiles = totalfiles[int(len(totalfiles)*0.8):]
    
    convtospeakers = getConvToSpeakers()
    
    print "before read in"
    for file in trainfiles:
        readSpeechFile(file, speakersPerTermTrain, termScorePerSpeakerDictTrain, convtospeakers, labelToUse)
    print "after read in"
    computeTFIDF(TFIDFtrainunigram, TFIDFtrainbigram, speakersPerTermTrain, termScorePerSpeakerDictTrain, True)
    print "after compute tfidf"
    outputTFIDF(TFIDFtrainunigram, TFIDFtrainbigram)
    print "after output"
    speakers = TFIDFtrainunigram.keys()
    
    terms = getVocabulary(sorted(speakersPerTermTrain.keys()))
    
    print "after get convtospeaker"
    vectors = getVectors(speakersPerTermTrain, TFIDFtrainunigram, TFIDFtrainbigram, speakers, terms)
    #print vectors
    print "after get vectors"
    labels = getLabels(speakers, labelToUse)
    print "after get labels"
    
    outputCalculation("./label_feats/train_" + labelname, vectors, labels)
    #clf = svm.SVC()
    #clf.fit(vectors, labels)
    print "after svm fit"
    TFIDFtestunigram = {}
    TFIDFtestbigram = {}
    for file in testfiles:
        readSpeechFile(file, speakersPerTermTest, termScorePerSpeakerDictTest, convtospeakers, labelToUse)
    print "after read test"
    computeTFIDF(TFIDFtestunigram, TFIDFtestbigram, speakersPerTermTest, termScorePerSpeakerDictTest, False)
    speakers = TFIDFtestunigram.keys()
    testvectors = getVectors(speakersPerTermTrain, TFIDFtestunigram, TFIDFtestbigram, speakers, terms)
    testlabels = getLabels(speakers, labelToUse)
    outputCalculation("./label_feats/test_" + labelname,testvectors,testlabels)
    
    
    print "before predict"
    #predictions = clf.predict(testvectors)
    print "after predict"
    #correct = 0
    #total = 0
    #for i in range(0,len(predictions)):
    #    if predictions[i] == testlabels[i]:
    #        correct += 1
    #    total += 1
    
    #print "Accuracy for gender: "
    #print float(correct) / total
    
    #clf.predict([[2., 2.]])
    
    #trainSVM(TFIDFtrain, convtospeakers,labels)
    #trainSVM
    
if __name__ == "__main__":
    main()
