#!/usr/bin/env python

import numpy
import random
import sys

import sklearn.cluster
import sklearn.metrics

fileNameKernel = sys.argv[1]
fileNameLabels = sys.argv[2]

K = numpy.loadtxt(fileNameKernel)
C = numpy.genfromtxt(fileNameLabels, dtype='str')

sc = sklearn.cluster.SpectralClustering(affinity='precomputed', n_clusters=2)
sc.fit(K)

labels = sc.labels_

print(sklearn.metrics.adjusted_rand_score(C, labels))
