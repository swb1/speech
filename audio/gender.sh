#!/bin/sh

./bin/train label_feats/train_gender.lsvm gender.model
./bin/predict label_feats/test_gender.lsvm gender.model gender.txt
