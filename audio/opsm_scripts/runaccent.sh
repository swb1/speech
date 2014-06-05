#!/bin/sh
../bin/train -s 0 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent0c0.01.txt
../bin/train -s 0 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent0c0.1.txt
../bin/train -s 0 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent0c1.txt
../bin/train -s 0 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent0c10.txt
../bin/train -s 1 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent1c0.01.txt
../bin/train -s 1 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent1c0.1.txt
../bin/train -s 1 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent1c1.txt
../bin/train -s 1 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent1c10.txt
../bin/train -s 2 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent2c0.01.txt
../bin/train -s 2 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent2c0.1.txt
../bin/train -s 2 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent2c1.txt
../bin/train -s 2 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent2c10.txt
../bin/train -s 3 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent3c0.01.txt
../bin/train -s 3 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent3c0.1.txt
../bin/train -s 3 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent3c1.txt
../bin/train -s 3 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent3c10.txt
../bin/train -s 4 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent4c0.01.txt
../bin/train -s 4 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent4c0.1.txt
../bin/train -s 4 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent4c1.txt
../bin/train -s 4 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent4c10.txt
../bin/train -s 5 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent5c0.01.txt
../bin/train -s 5 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent5c0.1.txt
../bin/train -s 5 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent5c1.txt
../bin/train -s 5 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent5c10.txt
../bin/train -s 6 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent6c0.01.txt
../bin/train -s 6 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent6c0.1.txt
../bin/train -s 6 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent6c1.txt
../bin/train -s 6 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent6c10.txt
../bin/train -s 7 -c 0.01 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent7c0.01.txt
../bin/train -s 7 -c 0.1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent7c0.1.txt
../bin/train -s 7 -c 1 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent7c1.txt
../bin/train -s 7 -c 10 ../label_feats/train_accent.lsvm accent.model
../bin/predict ../label_feats/test_accent.lsvm accent.model accent.txt > accent7c10.txt
