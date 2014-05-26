#!/bin/sh
../audio/bin/train train_edu.lsvm edu.model
../audio/bin/predict test_edu.lsvm edu.model? edu.txt
