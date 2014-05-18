#!/bin/sh

./bin/train label_feats/train_edu.lsvm edu.model
./bin/predict label_feats/test_edu.lsvm edu.model edu.txt
