#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <prefix> <start> <end>"
  exit 1
fi

prefix="$1"
start="$2"
end="$3"

if [ "$end" -lt "$start" ]; then
  echo "Error: end number can't be less then start number"
  exit 1
fi

for ((i = start; i <= end; i+));
do
  name="${prefix}_${i}"
  mkdir "$name"
done

exit 0
