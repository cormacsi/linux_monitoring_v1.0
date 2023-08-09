#!/bin/bash

default_set () {
  if [ $ONE -eq $TWO ]; then
    if [[ ${default[0]} == 0 && ${default[1]} == 0 ]]; then
      echo -e "${RED}ERROR: use different colors for ONE and TWO${NC}"
      exit 1
    else
      while [ $ONE -eq $TWO ]; do
        if [ ${default[0]} == 1 ]; then
          let "ONE+=1"; let "ONE%=6"
        else
          let "TWO+=1"; let "TWO%=6"
        fi
      done
    fi
  fi

  if [ $TRE -eq $FOR ]; then
    if [[ ${default[2]} == 0 && ${default[3]} == 0 ]]; then
      echo -e "${RED}ERROR: use different colors for THREE and FOUR${NC}"
      exit 1
    else
      while [ $TRE -eq $FOR ]; do
        if [ ${default[2]} == 1 ]; then
          let "TRE+=1"; let "TRE%=6"
        else
          let "FOR+=1"; let "FOR%=6"
        fi
      done
    fi
  fi
}