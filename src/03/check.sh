#!/bin/bash

source ./only_colors.sh

check_arg () {
  for var in "$@"; do
    if [[ $var =~ ^[0-9]+$ ]]; then
      if [[ $var != [1-6] ]]; then
        echo -e "${RED}ERROR: ${OR}The numbers should be from 1 to 6${NC}"
        exit 1
      fi
    else
      echo -e "${RED}ERROR: ${OR}Only numbers can be accepted${NC}"
      exit 1
    fi
  done
}