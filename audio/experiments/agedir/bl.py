import sys,os

train = open('age.train', 'r')
test = open('age.test', 'r')

avgtrain = 0.0
counttrain = 0
for line in train:
  counttrain += 1
  parts = line.split(',')
  age = int(parts[0])
  avgtrain += age

avgtrain /= counttrain

counttest = 0
avgerr = 0.0
for line in test:
  counttest += 1
  parts = line.split(',')
  age = int(parts[0])
  avgerr += abs(age - avgtrain)

print (avgerr/counttest)
