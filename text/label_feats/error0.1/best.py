'''
  print the best file's name and its train/valid acc, then compute test accuracy
'''

import sys,os
import csv

import pylab as pl
import matplotlib as mpl
import numpy as np
from sklearn import decomposition, svm

prop = sys.argv[1]

bestfile = ''
besttrainacc = -1
bestvalidacc = -1

for f in os.listdir(prop):
  g = open(prop + '/' + f, 'r')
  lines = g.readlines()
#  assert(len(lines) == 5)
  if len(lines) == 4:
    train_acc = float(lines[1].strip().split("=")[1].split("%")[0].strip())
    valid_acc = float(lines[3].strip().split("=")[1].split("%")[0].strip())

    if valid_acc > bestvalidacc:
      bestvalidacc = valid_acc
      besttrainacc = train_acc
      bestfile = f
  
print bestfile
print 'best train acc: ' + str(besttrainacc)
print 'best valid acc: ' + str(bestvalidacc)

parts = bestfile.split('-')
c = parts[0]
g = parts[1]
print "S: " + str(c) 
print "C: " + str(g)

train_data = prop + '.train'
test_data = prop + '.test'
