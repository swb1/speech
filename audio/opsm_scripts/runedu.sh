#!/bin/sh
../bin/train -s 0 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu0c0.01.txt
../bin/train -s 0 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu0c0.1.txt
../bin/train -s 0 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu0c1.txt
../bin/train -s 0 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu0c10.txt
../bin/train -s 1 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu1c0.01.txt
../bin/train -s 1 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu1c0.1.txt
../bin/train -s 1 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu1c1.txt
../bin/train -s 1 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu1c10.txt
../bin/train -s 2 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu2c0.01.txt
../bin/train -s 2 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu2c0.1.txt
../bin/train -s 2 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu2c1.txt
../bin/train -s 2 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu2c10.txt
../bin/train -s 3 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu3c0.01.txt
../bin/train -s 3 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu3c0.1.txt
../bin/train -s 3 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu3c1.txt
../bin/train -s 3 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu3c10.txt
../bin/train -s 4 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu4c0.01.txt
../bin/train -s 4 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu4c0.1.txt
../bin/train -s 4 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu4c1.txt
../bin/train -s 4 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu4c10.txt
../bin/train -s 5 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu5c0.01.txt
../bin/train -s 5 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu5c0.1.txt
../bin/train -s 5 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu5c1.txt
../bin/train -s 5 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu5c10.txt
../bin/train -s 6 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu6c0.01.txt
../bin/train -s 6 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu6c0.1.txt
../bin/train -s 6 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu6c1.txt
../bin/train -s 6 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu6c10.txt
../bin/train -s 7 -c 0.01 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu7c0.01.txt
../bin/train -s 7 -c 0.1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu7c0.1.txt
../bin/train -s 7 -c 1 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu7c1.txt
../bin/train -s 7 -c 10 ../label_feats/train_edu.lsvm edu.model
../bin/predict ../label_feats/test_edu.lsvm edu.model edu.txt > edu7c10.txt
