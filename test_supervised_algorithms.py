#!/usr/bin/env python

import numpy
import random
import sys

from sklearn import svm
from sklearn import model_selection

from sklearn.metrics import accuracy_score

fileNameKernel = sys.argv[1]
fileNameLabels = sys.argv[2]

K = numpy.loadtxt(fileNameKernel)
C = numpy.genfromtxt(fileNameLabels, dtype='str')

svm = svm.SVC(kernel='precomputed')

n = K.shape[0]
r = list()

loo    = model_selection.LeaveOneOut()
scores = list()

for algorithm in [svm]:
  for train, test in loo.split(K):
    kTrain = K[train][:,train]
    cTrain = C[train]

    # For the test kernel matrix, the values between *all* training
    # vectors and all test vectors must be provided.
    kTest  = K[train, test]
    if len(kTest.shape) < 2:
      kTest = kTest.reshape(1,-1)
      cTest = C[test].reshape(-1,1)
    else:
      cTest = C[test]

    algorithm.fit(kTrain, cTrain)
    prediction = algorithm.predict(kTest)
    score      = accuracy_score(cTest, prediction)
    scores.append(score)

print("Average accuracy:", sum(scores)/len(scores))
