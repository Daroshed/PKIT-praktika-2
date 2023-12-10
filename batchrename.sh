#!/bin/bash

directory=$1
original_ext=$2 
new_ext=$3

for f in "$directory"/*."$original_ext"; do
  filename=${f%.*}
  new_filename="$filename"."$new_ext"
  echo "Renaming $f to $new_filename"
  mv "$f" "$new_filename"
done
