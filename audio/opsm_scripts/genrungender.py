import sys,os

regconst = [0.01, 0.1, 1, 10]

for s in range(8):
  for c in regconst:
    print '../bin/train -s ' + str(s) + ' -c ' + str(c) + ' ../label_feats/train_gender.lsvm gender.model'
    print '../bin/predict ../label_feats/test_gender.lsvm gender.model gender.txt > gender' + str(s) + 'c' + str(c) + '.txt'
