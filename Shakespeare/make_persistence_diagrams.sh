#!/usr/bin/env zsh

mkdir -p "Persistence diagrams/Inverted"
mkdir -p "Persistence diagrams/Normal"

for file in ~/Research/Papers/Vis2017_Networks/Data/Literature/Shakespeare/Graphs/*.net; do
  ~/Projects/Aleph/build/tools/network-persistence-diagrams --normalize $file 20
  mv /tmp/${file:t:r}_d??.txt ./Persistence\ diagrams/Normal/

  ~/Projects/Aleph/build/tools/network-persistence-diagrams --normalize --invert-weights $file 20
  mv /tmp/${file:t:r}_d??.txt ./Persistence\ diagrams/Inverted/
done
