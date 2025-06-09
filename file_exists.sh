#!/bin/bash
if [ -z "$1" ]; then
  echo "File not supplied. Usage: $0 <filename>"
  exit 1
fi

file_name="$1"

echo "Searching for $file_name in current directory..."

found=$(find . -type f -name "$file_name")

if [ -n "$found" ]; then
  echo "Found!"
  echo "$found"

else
  echo "File $file_name not found"
fi
