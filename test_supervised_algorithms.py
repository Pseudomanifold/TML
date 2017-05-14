#!/usr/bin/env python

import numpy
import random
import sys

from sklearn import svm
from sklearn.metrics import accuracy_score

fileNameKernel = sys.argv[1]
fileNameLabels = sys.argv[2]

K = numpy.loadtxt(fileNameKernel)
C = numpy.genfromtxt(fileNameLabels, dtype='str')

svm = svm.SVC(kernel='precomputed')

#
# LOOCV: Leave-one-out cross validation first because it is
# easiest to implement.
#

n = K.shape[0]
r = list()

for i in range(0,n):
  K = numpy.loadtxt(fileNameKernel)
  C = numpy.genfromtxt(fileNameLabels, dtype='str')

  L = numpy.delete(K[i], i)
  L = L.reshape(1,-1)
  K = numpy.delete(K, i, axis=0)
  K = numpy.delete(K, i, axis=1)

  D = C[i]
  D = D.reshape(-1,1)
  C = numpy.delete(C, i)

  svm.fit(K, C)

  E = svm.predict(L)

  r.append(accuracy_score(D, E))

print(sum(r)/len(r))
