import sys,os
import random

prop = sys.argv[1]

def avgresult():
  audio_test=open(prop+'audio_test.txt')
  text_test=open(prop+'text_test.txt')

  auds = []
  texts = []

  for line in audio_test:
    auds.append(int(line.strip()))

  for line in audio_test:
    auds.append(int(line.strip()))

  audio_test.close()
  text_test.close()
