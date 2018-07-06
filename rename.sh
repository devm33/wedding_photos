#!/bin/bash

index=0

ls *jpg | sort -V | while read f; do
  ((index++))
  echo "renaming $f to ${index}.jpg"
  mv "$f" "${index}.jpg"
done
