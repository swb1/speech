import sys,os
import csv

import pylab as pl
import matplotlib as mpl
import numpy as np
from sklearn import decomposition, svm

'''
  predict using svm
  data file format: process lsvm file using process.py in this directory
  each row is a data point; the row is comma separated, the first element is the label, and the rest are the features
'''

prop = sys.argv[1]
ncomp = sys.argv[2]
c = sys.argv[3]
g = sys.argv[4]

train_data = prop + '.train'
valid_data = prop + '.valid'

def loaddata(filename):
  reader=csv.reader(open(filename,"r"),delimiter=',')
  x=list(reader)
  result=np.array(x).astype('float')
  feats = result[:,1:]
  labels = result[:,0].astype('int')
  return (feats, labels)

(X_train, y_train) = loaddata(train_data)
(X_valid, y_valid) = loaddata(valid_data)

n_classes = len(np.unique(y_train))
print('number of classes is ' + str(n_classes))

#pca = decomposition.RandomizedPCA(n_components=150, whiten=True)
# accent - 100
# age - 150
pca = decomposition.PCA(n_components=int(ncomp), whiten=True)
pca.fit(X_train)
X_train_pca = pca.transform(X_train)
X_valid_pca = pca.transform(X_valid)

clf = svm.SVR(C=float(c), gamma=float(g))
clf.fit(X_train_pca, y_train)

def getacc(data, labels):
  results = clf.predict(data)
  err = 0
  for i,r in enumerate(results):
    err += abs(r - labels[i])
  return err/len(labels)

print 'train MAE:'
print getacc(X_train_pca, y_train)
print 'valid MAE:'
print getacc(X_valid_pca, y_valid)
