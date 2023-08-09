#!/bin/bash

source ./only_colors.sh

args () {
  if [ $1 -lt 4 ]; then
      echo -e "${RED}ERROR: ${OR}Not enough parameters: I need 4 numbers...${NC}"
      exit 1
  elif [ $1 -gt 4 ]; then
      echo -e "${RED}ERROR: ${OR}Too many parameters: I need 4 numbers...${NC}"
      exit 1
  fi
}