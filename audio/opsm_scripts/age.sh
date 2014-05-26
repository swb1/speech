#!/bin/sh

#python process_age.py
../bin/train -s 5 ../label_mfcc_feats/train_mfcc_age.lsvm age.model
../bin/predict ../label_mfcc_feats/test_mfcc_age.lsvm age.model age.txt
