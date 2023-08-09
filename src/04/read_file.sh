#!/bin/bash

chmod +rx default.sh
source ./default.sh

read_file() {
  DEFAULT=1
  source $FILE
  column[0]=$column1_background
  column[1]=$column1_font_color
  column[2]=$column2_background
  column[3]=$column2_font_color

  for i in "${!column[@]}"; do
    if [[ -z "${column[$i]}" ]]; then
      default[$i]=1
      column[$i]=$DEFAULT
      let "DEFAULT+=1"; let "DEFAULT%=6"
    elif [[ "${column[$i]}" != [1-6] ]]; then
      echo -e "ERROR: USE NUMBERS 1 to 6"
      exit 1
    fi
  done
  
  ONE=${column[0]}
  TWO=${column[1]}
  TRE=${column[2]}
  FOR=${column[3]}
  default_set
}