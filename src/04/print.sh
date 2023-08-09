#!/bin/bash

color_name () {
  case $1 in
  1) echo "(white)";;
  2) echo "(red)";;
  3) echo "(green)";;
  4) echo "(blue)";;
  5) echo "(purple)";;
  6) echo "(black)";;
  esac
}

print_colors () {
  echo "Column 1 background = $(if [ ${default[0]} -eq 1 ]; then echo default
  else echo $ONE; fi;) $(color_name $ONE)"
  echo "Column 1 font color = $(if [ ${default[1]} -eq 1 ]; then echo default
  else echo $TWO; fi;) $(color_name $TWO)"
  echo "Column 2 background = $(if [ ${default[2]} -eq 1 ]; then echo default
  else echo $TRE; fi;) $(color_name $TRE)"
  echo "Column 2 font color = $(if [ ${default[3]} -eq 1 ]; then echo default
  else echo $FOR; fi;) $(color_name $FOR)"
}