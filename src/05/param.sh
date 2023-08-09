#!/bin/bash

top_files () {
  for (( i = 1; i <= 10; i++ ))
  do
      FILE=$(find $1* 2>/dev/null -type f -exec du -h {} + | sort -rh | head -10 | sed "${i}q;d")
      if ! [[ -z $FILE ]]; then
          echo -n "$i - "
          echo -n "$(echo $FILE | awk '{print $2",", $1}'), "
          echo "$(echo $FILE | grep -m 1 -o -E "\.[^/.]+$" | awk -F . '{print $2}')"
      fi
  done
}

top_execute () {
  for (( i = 1; i <= 10; i++ ))
  do
      FILE=$(find $1* 2>/dev/null -type f -executable -exec du -h {} + | sort -rh | head -10 | sed "${i}q;d")
      if ! [[ -z $FILE ]]; then
          echo -n "$i - "
          echo -n "$(echo $FILE | awk '{print $2",", $1}'), "
          path=$(echo $FILE | awk '{print $2}')
          hash=$(md5sum $path | awk '{print $1}')
          echo "$hash"
      fi
  done
}

FOLDERS=$(find $1* 2>/dev/null -type d| wc -l)
TOP_FOLDERS=$(find $1* -type d -exec du -ch {} + 2>/dev/null | grep -v total | sort -hr | head -5 | awk '{print NR, "-", $2"/, "$1}')
NUM_FILES=$(find $1 -type f 2>/dev/null | wc -l)
CONF=$(find $1 -type f -name "*.conf" 2>/dev/null | wc -l)
TEXT=$(find $1 -type f -name "*.txt" 2>/dev/null | wc -l)
EXECUTE=$(find $1 -type f -executable 2>/dev/null | wc -l)
LOGS=$(find $1 -type f -name "*.log" 2>/dev/null | wc -l)
ARCHIVE=$(find $1 -type f -name "*.tar.gz" 2>/dev/null | wc -l)
LINKS=$(find $1 -type l 2>/dev/null | wc -l)
TOP_FILES=$(top_files)
TOP_EXECUTE=$(top_execute)
