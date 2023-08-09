#!/bin/bash

RED='\033[1;91m'
GR='\033[1;92m'
OR='\033[1;93m'
NC='\033[0m'

run () {
  num="^[+-.]?[0-9]+$";
  if ! [[ $1 =~ $num ]]; then
    echo -e "${GR}The parameter is $1${NC}"
  else
    echo -e "${RED}ERROR: The parameter is a number!${NC}"
  fi
}
