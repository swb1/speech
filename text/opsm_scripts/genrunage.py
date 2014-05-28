import sys,os

regconst = [0.01, 0.1, 1, 10]

for s in range(8):
  for c in regconst:
    print '../../audio/bin/train -s ' + str(s) + ' -c ' + str(c) + ' ../label_feats/train_age.lsvm age.model'
    print '../../audio/bin/predict ../label_feats/test_age.lsvm age.model age.txt > age' + str(s) + 'c' + str(c) + '.txt'
