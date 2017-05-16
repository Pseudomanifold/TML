#!/usr/bin/env python

import numpy
import random
import sys

from sklearn import svm
from sklearn import model_selection

from sklearn.metrics import accuracy_score
from sklearn.metrics import roc_auc_score

fileNameKernel = sys.argv[1]
fileNameLabels = sys.argv[2]

K = numpy.loadtxt(fileNameKernel)
C = numpy.genfromtxt(fileNameLabels)

svm = svm.SVC(kernel='precomputed', probability=True)

n = K.shape[0]
r = list()

loo            = model_selection.LeaveOneOut()
lpo            = model_selection.LeavePOut(p=3)
kf             = model_selection.KFold(n_splits=10)
ss             = model_selection.ShuffleSplit(n_splits=3, test_size=0.1, random_state=18)

cv             = lpo
scores         = list()
roc_auc_scores = list()

for algorithm in [svm]:
  for train, test in cv.split(K):
    kTrain = K[train][:,train]
    cTrain = C[train]

    # For the test kernel matrix, the values between *all* training
    # vectors and all test vectors must be provided.
    #kTest  = K[train, test]
    kTest = K[test]
    kTest = kTest[:,train]

    cTest = C[test]

    algorithm.fit(kTrain, cTrain)
    prediction = algorithm.predict(kTest)
    score      = accuracy_score(cTest, prediction)
    scores.append(score)

    if 0 in cTest and 1 in cTest:
      rs = roc_auc_score(cTest, algorithm.decision_function(kTest))
      roc_auc_scores.append(rs)

print("  Average accuracy:", sum(scores)/len(scores))
print("  Average ROC AUC: ", sum(roc_auc_scores)/len(roc_auc_scores))
