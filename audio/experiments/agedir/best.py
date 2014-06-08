'''
  print the best file's name and its train/valid acc, then compute test accuracy
'''

import sys,os
import csv

import pylab as pl
import matplotlib as mpl
import numpy as np
from sklearn import decomposition, svm

prop = 'age'

bestfile = ''
besttrainmae = 99999999
bestvalidmae = 99999999

for f in os.listdir('results'):
  g = open('results/' + f, 'r')
  lines = g.readlines()
#  assert(len(lines) == 5)
  if len(lines) == 5:
    train_mae = float(lines[2].strip())
    valid_mae = float(lines[4].strip())

    if valid_mae < bestvalidmae:
      bestvalidmae = valid_mae
      besttrainmae = train_mae
      bestfile = f
  
print bestfile
print 'best train mae: ' + str(besttrainmae)
print 'best valid mae: ' + str(bestvalidmae)

parts = bestfile.split('-')
ncomp = parts[0]
c = parts[1]
g = parts[2]

train_data = prop + '.train'
valid_data = prop + '.valid'
test_data = prop + '.test'

def loaddata(filename):
  reader=csv.reader(open(filename,"r"),delimiter=',')
  x=list(reader)
  result=np.array(x).astype('float')
  feats = result[:,1:]
  labels = result[:,0].astype('int')
  return (feats, labels)

(X_train, y_train) = loaddata(train_data)
(X_valid, y_valid) = loaddata(valid_data)
(X_test, y_test) = loaddata(test_data)

n_classes = len(np.unique(y_train))
print('number of classes is ' + str(n_classes))

#pca = decomposition.RandomizedPCA(n_components=150, whiten=True)
# accent - 100
# age - 150
pca = decomposition.PCA(n_components=int(ncomp), whiten=True)
pca.fit(X_train)
X_train_pca = pca.transform(X_train)
X_valid_pca = pca.transform(X_valid)
X_test_pca = pca.transform(X_test)

clf = svm.SVR(C=float(c), gamma=float(g))
clf.fit(X_train_pca, y_train)

def getacc(data, labels):
  results = clf.predict(data)
  preds = []
  err = 0.0
  for i,r in enumerate(results):
    preds.append(int(r))
    err += abs(r - labels[i])
  return (preds, err/len(labels))

#(preds, acc) = getacc(X_train_pca, y_train)
#(preds, acc) = getacc(X_valid_pca, y_valid)
(preds, acc) = getacc(X_test_pca, y_test)

print 'mae:'
print  acc

#h = open('../preds/real_age_train.pred', 'w')
#h = open('../preds/real_age_valid.pred', 'w')
h = open('../preds/real_age_test.pred', 'w')
for pred in preds:
  h.write(str(pred) + '\n')
h.close()
