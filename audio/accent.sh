#!/bin/sh

./bin/train label_feats/train_accent.lsvm accent.model
./bin/predict label_feats/test_accent.lsvm accent.model accent.txt
