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
train_age = open('label_feats/train_age.lsvm','w')
train_gender = open('label_feats/train_gender.lsvm','w')
train_edu = open('label_feats/train_edu.lsvm','w')
train_accent = open('label_feats/train_accent.lsvm','w')

# valid files
valid_age = open('label_feats/valid_age.lsvm','w')
valid_gender = open('label_feats/valid_gender.lsvm','w')
valid_edu = open('label_feats/valid_edu.lsvm','w')
valid_accent = open('label_feats/valid_accent.lsvm','w')

# test files
test_age = open('label_feats/test_age.lsvm','w')
test_gender = open('label_feats/test_gender.lsvm','w')
test_edu = open('label_feats/test_edu.lsvm','w')
test_accent = open('label_feats/test_accent.lsvm','w')

train_count = 0.0
valid_count = 0.0
test_count = 0.0

train_pers = set()
valid_pers = set()
test_pers = set()

random.seed(10)
for f in os.listdir('feats'):
  # 64% train/ 16% valid/ 20% test

  # 0 - train, 1 - valid, 2 - test
  option = 0
  r = random.random()
  if r <= 0.64:
    option = 0
  elif r <= 0.8:
    option = 1
  else:
    assert r<= 1
    option = 2

  (convid,perid) = getids(f)
  g = open('feats/' + f, 'r')

  if perid in train_pers:
    option = 0
  elif perid in valid_pers:
    option = 1
  elif perid in test_pers:
    option = 2

  line = ''
  # only 1 line in g
  for l in g:
    line = l[1:].strip()

  # age, gender, accent, education
  if option == 0:
    train_pers.add(perid)
    train_age.write(person[perid][0] + ' ' + line + '\n')
    train_gender.write(person[perid][1] + ' ' + line + '\n')
    train_accent.write(person[perid][2] + ' ' + line + '\n')
    train_edu.write(person[perid][3] + ' ' + line + '\n')
    train_count += 1
  elif option == 1:
    valid_pers.add(perid)
    valid_age.write(person[perid][0] + ' ' + line + '\n')
    valid_gender.write(person[perid][1] + ' ' + line + '\n')
    valid_accent.write(person[perid][2] + ' ' + line + '\n')
    valid_edu.write(person[perid][3] + ' ' + line + '\n')
    valid_count += 1
  else:
    test_pers.add(perid)
    test_age.write(person[perid][0] + ' ' + line + '\n')
    test_gender.write(person[perid][1] + ' ' + line + '\n')
    test_accent.write(person[perid][2] + ' ' + line + '\n')
    test_edu.write(person[perid][3] + ' ' + line + '\n')
    test_count += 1

train_age.close()
train_gender.close()
train_edu.close()
train_accent.close()

valid_age.close()
valid_gender.close()
valid_edu.close()
valid_accent.close()

test_age.close()
test_gender.close()
test_edu.close()
test_accent.close()

tot = train_count + valid_count + test_count
print('training percentage is ' + str(train_count/tot))
print('valid percentage is ' + str(valid_count/tot))
print('test percentage is ' + str(test_count/tot))
