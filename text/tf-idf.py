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

TRANSCRIPTDIRECTORYROOT = "test/"#"/afs/ir/data/linguistic-data/Switchboard/Switchboard-Transcripts/swb1/trans/"

termScorePerSpeakerDict = {}
speakersPerTerm = Counter()

globalTFIDF = Counter()
TFIDF = Counter()
stripCommentsRegex = re.compile('\{.+?\}')
stripSoundsRegex = re.compile('\[.+?\]')

def outputTFIDF():
    outputfile = open('output', 'w')
    outputfile2 = open('outputtop10', 'w')
    outputfile3 = open('outputtotal100', 'w')
    for speaker in globalTFIDF:
        outputfile.write(speaker + "---\n")
        outputfile2.write(speaker + "---\n")
        for term in globalTFIDF[speaker]:
            score = globalTFIDF[speaker][term]
            outputfile.write(term + "," + str(score) + "\n")
        for entry in globalTFIDF[speaker].most_common(10):
            outputfile2.write(entry[0] + "," + str(entry[1]) + "\n")
    for entry in TFIDF.most_common(100):
        outputfile3.write(entry[0] + "," + str(entry[1]) + "\n")
    outputfile.close()
    outputfile2.close()
    outputfile3.close()

def computeTFIDF():
    numSpeakers = len(termScorePerSpeakerDict)
    for speaker in termScorePerSpeakerDict:
        if speaker not in globalTFIDF:
            globalTFIDF[speaker] = Counter()
            
        for word in termScorePerSpeakerDict[speaker]:
            termscore = termScorePerSpeakerDict[speaker][word]
            inversedocfrequency = math.log(float(numSpeakers) / speakersPerTerm[word])

            globalTFIDF[speaker][word] = termscore * inversedocfrequency
            TFIDF[word] += termscore * inversedocfrequency

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
    
def readSpeechFile(filepath):
    curfile = open(filepath, 'r')
    fulltext = curfile.read()
    #skipping the file header and getting the speech segments divided up
    headertext = re.split("={10,}",fulltext)[0]
    speechtext = re.split("={10,}",fulltext)[1]
    speakertexts = speechtext.split("\n\n")[1:]
    wordsForSpeaker = {}
    
    
    for speakertext in speakertexts:
        components = speakertext.split(":")
        speaker = components[0][-1]
        if speaker not in wordsForSpeaker:
            wordsForSpeaker[speaker] = Counter()
        text = ''.join(components[1:]).strip()
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
    for file in files:
        if file.endswith(".txt"):
            readSpeechFile(directory + file)

def readPhase(path):
    cds = []
    for (dirpath, dirnames, filenames) in walk(path):
        cds.extend(dirnames)
        break
    for cd in cds:
        readFilesInDirectory(path + cd + "/")

def main():
    readPhase(TRANSCRIPTDIRECTORYROOT + "phase1/")
    readPhase(TRANSCRIPTDIRECTORYROOT + "phase2/")
    computeTFIDF()
    outputTFIDF()
    
if __name__ == "__main__":
    main()