#!/bin/sh

#python process_gender.py
#./bin/train label_feats/train_gender_formatted.lsvm gender.model
#./bin/predict label_feats/test_gender_formatted.lsvm gender.model gender.txt

../bin/train -s 6 ../label_mfcc_feats/train_mfcc_gender.lsvm gender.model
../bin/predict ../label_mfcc_feats/test_mfcc_gender.lsvm gender.model gender.txt
