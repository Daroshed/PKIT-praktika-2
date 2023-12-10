#!/bin/bash

lastnum=$(ls -1 | grep -oE '[0-9]+$' | sort -n | tail -1) 

for ((i=lastnum+1; i<=lastnum+25; i++)); do
  filename=Andrii$i
  if [ ! -f $filename ]; then
    touch "$filename"
  fi
done
