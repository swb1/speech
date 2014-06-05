#!/bin/sh

#python process_edu.py
#./bin/train label_feats/train_edu_formatted.lsvm edu.model
#./bin/predict label_feats/test_edu_formatted.lsvm edu.model edu.txt

../bin/train -s 6 ../label_mfcc_feats/train_mfcc_edu.lsvm edu.model
../bin/predict ../label_mfcc_feats/test_mfcc_edu.lsvm edu.model edu.txt
