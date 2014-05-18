#!/bin/sh

./bin/train label_feats/train_age.lsvm age.model
./bin/predict label_feats/test_age.lsvm age.model age.txt
