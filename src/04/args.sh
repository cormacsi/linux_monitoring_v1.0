#!/bin/bash

source ./only_colors.sh

args () {
  if [ $1 -ne 0 ]; then
    echo -e "${RED}ERROR: ${OR}Too many parameters: I DON't need them${NC}"
    exit 1
  fi
}