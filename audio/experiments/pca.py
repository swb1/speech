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

#pca = decomposition.RandomizedPCA(n_components=150, whiten=True)
# accent - 100
# age - 150
pca = decomposition.PCA(n_components=int(ncomp), whiten=True)
pca.fit(X_train)
X_train_pca = pca.transform(X_train)
X_test_pca = pca.transform(X_test)

clf = svm.SVC(C=float(c), gamma=float(g))
clf.fit(X_train_pca, y_train)

def getacc(data, labels):
  results = clf.predict(data)
  acc = 0.0
  for i,r in enumerate(results):
    pred = int(r)
    if pred == labels[i]:
      acc += 1
  return acc/len(labels)

print 'train accuracy:'
print getacc(X_train_pca, y_train)
print 'test accuracy:'
print getacc(X_test_pca, y_test)
