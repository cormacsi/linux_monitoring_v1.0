#!/bin/bash

source ./colors.sh

args () {
  if [ $1 -ne 0 ]; then
      echo -e "${RED}ERROR: ${OR}No parameters needed.${NC}"
      exit 1
  fi
}