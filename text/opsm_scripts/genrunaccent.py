import sys,os

regconst = [0.01, 0.1, 1, 10]

for s in range(8):
  for c in regconst:
    print '../../audio/bin/train -s ' + str(s) + ' -c ' + str(c) + ' ../label_feats/train_accent.lsvm accent.model'
    print '../../audio/bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent' + str(s) + 'c' + str(c) + '.txt'
