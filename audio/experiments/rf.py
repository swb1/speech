import sys,os
import csv

import pylab as pl
import matplotlib as mpl
import numpy as np
from sklearn.ensemble import RandomForestClassifier

'''
  predict using random forest
  data file format: process lsvm file using process.py in this directory
  each row is a data point; the row is comma separated, the first element is the label, and the rest are the features
'''

prop = 'accent'
train_data = prop + '.train'
test_data = prop + '.test'

def loaddata(filename):
  reader=csv.reader(open(filename,"r"),delimiter=',')
  x=list(reader)
  result=np.array(x).astype('float')
  feats = result[:,1:]
  labels = result[:,0].astype('int')
  return (feats, labels)

(X_train, y_train) = loaddata(train_data)
(X_test, y_test) = loaddata(test_data)

n_classes = len(np.unique(y_train))
print('number of classes is ' + str(n_classes))

rf = RandomForestClassifier(n_estimators=100)
rf.fit(X_train, y_train)

def getacc(data, labels):
  results = rf.predict_proba(data)
  acc = 0.0
  for i,r in enumerate(results):
    r = r.tolist()
    pred = r.index(max(r))
    if pred == labels[i]:
      acc += 1
  return acc/len(labels)

print 'train accuracy:'
print getacc(X_train, y_train)
print 'test accuracy:'
print getacc(X_test, y_test)
