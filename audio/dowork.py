'''
  generate original labelled files for all four categories
'''

import sys,os
import random

# populate conv2per
def getconv2per():
  conv2per = {}
  fconv2per = open('../shared/conv2per.txt','r')
  for line in fconv2per:
    parts = line.split()
    conv2per[parts[0]] = (parts[1], parts[2])
  fconv2per.close()
  return conv2per

# get person's id
def getids(filename):
  temp = filename.split('.')[0]
  person = temp.split('-')[1]
  convid = temp.split('-')[0][3:]
  if person == 'A':
    return (convid,conv2per[convid][0])
  else:
    assert person == 'B'
    return (convid,conv2per[convid][1])

# populate person
def getperson():
  person = {}
  fper = open('../shared/person.txt','r')
  for line in fper:
    parts = line.split()
    # age, gender, accent, education
    person[parts[0]] = (parts[1], parts[2], parts[3], parts[4])
  fper.close()
  return person

conv2per = getconv2per()
person = getperson()

# training files
train_age = open('train_age.lsvm','w')
train_gender = open('train_gender.lsvm','w')
train_edu = open('train_edu.lsvm','w')
train_accent = open('train_accent.lsvm','w')

# test files
test_age = open('test_age.lsvm','w')
test_gender = open('test_gender.lsvm','w')
test_edu = open('test_edu.lsvm','w')
test_accent = open('test_accent.lsvm','w')

random.seed(10)
for f in os.listdir('feats'):
  # 80% train/20% test
  istrain = True
  if random.random() <= 0.2:
    istrain = False

  (convid,perid) = getids(f)
  g = open('feats/' + f, 'r')

  line = ''
  # only 1 line in g
  for l in g:
    line = l[1:].strip()

  # age, gender, accent, education
  if istrain:
    train_age.write(person[perid][0] + ' ' + line + '\n')
    train_gender.write(person[perid][1] + ' ' + line + '\n')
    train_accent.write(person[perid][2] + ' ' + line + '\n')
    train_edu.write(person[perid][3] + ' ' + line + '\n')
  else:
    test_age.write(person[perid][0] + ' ' + line + '\n')
    test_gender.write(person[perid][1] + ' ' + line + '\n')
    test_accent.write(person[perid][2] + ' ' + line + '\n')
    test_edu.write(person[perid][3] + ' ' + line + '\n')

train_age.close()
train_gender.close()
train_edu.close()
train_accent.close()

test_age.close()
test_gender.close()
test_edu.close()
test_accent.close()
