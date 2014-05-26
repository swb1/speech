#!/bin/sh
../audio/bin/train train_age.lsvm age.model
../audio/bin/predict test_age.lsvm age.model? age.txt
