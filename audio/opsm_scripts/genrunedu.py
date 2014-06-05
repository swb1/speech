import sys,os

regconst = [0.01, 0.1, 1, 10]

for s in range(8):
  for c in regconst:
    print '../bin/train -s ' + str(s) + ' -c ' + str(c) + ' ../label_feats/train_edu.lsvm edu.model'
    print '../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu' + str(s) + 'c' + str(c) + '.txt'
