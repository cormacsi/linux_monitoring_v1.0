#!/bin/bash

source ./only_colors.sh

args () {
  if [ $1 -eq 0 ]; then
    echo -e "${RED}ERROR: ${OR}Not enough parameters: I need ONE WAY...${NC}"
    exit 1
  elif [ $1 -gt 1 ]; then
    echo -e "${RED}ERROR: ${OR}Too many parameters: I need ONE WAY...${NC}"
    exit 1
  fi
}