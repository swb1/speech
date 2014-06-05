import sys,os
import csv

import pylab as pl
import matplotlib as mpl
import numpy as np
from sklearn.mixture import GMM

'''
  predict using gmm
  data file format: process lsvm file using process.py in this directory
  each row is a data point; the row is comma separated, the first element is the label, and the rest are the features
'''

prop = 'edu'
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

# Try GMMs using different types of covariances.
classifiers = dict((covar_type, GMM(n_components=n_classes,
                    covariance_type=covar_type, init_params='wc', n_iter=20))
                    for covar_type in ['spherical', 'diag', 'tied', 'full'])

for index, (name, classifier) in enumerate(classifiers.iteritems()):
    print(name)
    # Since we have class labels for the training data, we can
    # initialize the GMM parameters in a supervised manner.
    classifier.means_ = np.array([X_train[y_train == i].mean(axis=0) for i in xrange(n_classes)])

    # Train the other parameters using the EM algorithm.
    classifier.fit(X_train)

    y_train_pred = classifier.predict(X_train)
    train_accuracy = np.mean(y_train_pred.ravel() == y_train.ravel()) * 100
    print('train accuracy is ' + str(train_accuracy))

    y_test_pred = classifier.predict(X_test)
    test_accuracy = np.mean(y_test_pred.ravel() == y_test.ravel()) * 100
    print('test accuracy is ' + str(test_accuracy))
