#!/bin/sh

#python process_accent.py
#./bin/train label_feats/train_accent_formatted.lsvm accent.model
#./bin/predict label_feats/test_accent_formatted.lsvm accent.model accent.txt

../bin/train -s 2 ../label_mfcc_feats/train_mfcc_accent.lsvm accent.model
../bin/predict ../label_mfcc_feats/test_mfcc_accent.lsvm accent.model accent.txt
