#!/bin/sh
../audio/bin/train train_gender.lsvm gender.model
../audio/bin/predict test_gender.lsvm gender.model? gender.txt
