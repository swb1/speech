import sys,os
import random

outdir = 'label_mfcc_feats/'

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
train_age = open(outdir + 'train_mfcc_age.lsvm','w')
train_gender = open(outdir + 'train_mfcc_gender.lsvm','w')
train_edu = open(outdir + 'train_mfcc_edu.lsvm','w')
train_accent = open(outdir + 'train_mfcc_accent.lsvm','w')

# valid files
valid_age = open(outdir + 'valid_mfcc_age.lsvm','w')
valid_gender = open(outdir + 'valid_mfcc_gender.lsvm','w')
valid_edu = open(outdir + 'valid_mfcc_edu.lsvm','w')
valid_accent = open(outdir + 'valid_mfcc_accent.lsvm','w')

# test files
test_age = open(outdir + 'test_mfcc_age.lsvm','w')
test_gender = open(outdir + 'test_mfcc_gender.lsvm','w')
test_edu = open(outdir + 'test_mfcc_edu.lsvm','w')
test_accent = open(outdir + 'test_mfcc_accent.lsvm','w')

def process_lines(lines):
  # remove key
  lines.pop(0)

  random.shuffle(lines)
  count = 0
  ret = ''
  fcount = 1

  for line in lines:
    count += 1
    if count > 1000:
      break

    parts = line.split()
    if len(parts) == 14:
      parts.pop(13)

    for p in parts:
      ret += str(fcount) + ':' + p.strip() + ' '
      fcount += 1

  return ret

train_per = set()
valid_per = set()
test_per = set()

random.seed(10)
for f in os.listdir('mfcc'):
  if f.endswith('.ark'):
    # 64% train/ 16% valid/ 20% test
    option = 0
    r = random.random()
    if r <= 0.64:
      option = 0
    elif r <= 0.8:
      option = 1
    else:
      option = 2

    # f in the form of: raw_mfcc_sw0xxxx-A/B.ark
    filename = f[9:].split('.')[0] + '.txt'
    os.system('bin/copy-feats ark:mfcc/' + f.strip() + ' ark,t:- > ' + filename)

    (convid,perid) = getids(f[9:])
    g = open(filename, 'r')

    # pick 1000 samples
    lines = g.readlines()
    if len(lines) < 1000:
      continue
    line = process_lines(lines)

    os.system('rm ' + filename)
    g.close()

    if perid in train_per:
      option = 0
    elif perid in valid_per:
      option = 1
    elif perid in test_per:
      option = 2

    # age, gender, accent, education
    if option == 0:
      train_per.add(perid)
      train_age.write(person[perid][0] + ' ' + line + '\n')
      train_gender.write(person[perid][1] + ' ' + line + '\n')
      train_accent.write(person[perid][2] + ' ' + line + '\n')
      train_edu.write(person[perid][3] + ' ' + line + '\n')
    elif option == 1:
      valid_per.add(perid)
      valid_age.write(person[perid][0] + ' ' + line + '\n')
      valid_gender.write(person[perid][1] + ' ' + line + '\n')
      valid_accent.write(person[perid][2] + ' ' + line + '\n')
      valid_edu.write(person[perid][3] + ' ' + line + '\n')
    else:
      test_per.add(perid)
      test_age.write(person[perid][0] + ' ' + line + '\n')
      test_gender.write(person[perid][1] + ' ' + line + '\n')
      test_accent.write(person[perid][2] + ' ' + line + '\n')
      test_edu.write(person[perid][3] + ' ' + line + '\n')

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
