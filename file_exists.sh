#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

file_name=$1

echo "Searching for $filename"

found=$(find . -type f -name "$filename")

if [ -n "$found" ]; then
  echo "Found!"
  echo "$found"

else
  echo "File $filename not found"
fi
