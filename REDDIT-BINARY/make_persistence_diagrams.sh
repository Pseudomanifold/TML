#!/usr/bin/env zsh

mkdir -p "Persistence diagrams/Inverted"
mkdir -p "Persistence diagrams/Normal"

OUT_NORMAL="Persistence diagrams/Normal"
OUT_INVERTED="Persistence diagrams/Inverted"
BIN=network_analysis

for file in GML/*.gml; do
  ${BIN} --normalize --output ${OUT_NORMAL}            $file 2
  ${BIN} --normalize --output ${OUT_INVERTED} --invert $file 2
done
