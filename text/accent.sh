#!/bin/sh
../audio/bin/train train_accent.lsvm accent.model
../audio/bin/predict test_accent.lsvm accent.model? accent.txt
