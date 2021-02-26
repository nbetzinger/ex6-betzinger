#!/bin/bash
rm -fr eclipse-src/
git clone https://github.com/eclipse/eclipse.jdt.core.git eclipse-src

for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_NAME="$(realpath "${f}")"
    SIZE="$(du -sh "${f}" | cut -f1)"
    COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Processing $FILE_NAME"
    echo "File Size: $SIZE"
    echo "Word Count: $COUNT"
  fi
done
