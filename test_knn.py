#!/usr/bin/env python

import numpy
import random
import sys

from sklearn import neighbors
from sklearn.metrics import accuracy_score

fileNameMatrix = sys.argv[1]
fileNameLabels = sys.argv[2]

M   = numpy.loadtxt(fileNameMatrix)
L   = numpy.genfromtxt(fileNameLabels, dtype='str')
knn = neighbors.KNeighborsClassifier(n_neighbors=3, metric='precomputed')

knn.fit(M,L)
l = knn.predict(M)

print("Accuracy:", accuracy_score(L,l))
