#!/bin/bash

if [ -z "$1" ]; then
  echo "Directory not supplied. Use like this: $0 <directory path>"
fi

directory="$1"

if [ -d "$directory" ]; then
  file_count=$(find "$directory" -maxdepth 1 -type f | wc -l)
  folder_count=$(find "$directory" -maxdepth 1 -type d | wc -l)
  hidden_count=$(find "$directory" -maxdepth 1 -name ".*" | wc -l)

  echo "Result..."
  echo -e "Files: $file_count\nFolders: $folder_count\nHidden: $hidden_count"
else
  echo "Directory $directory does not exist"
fi
