#!/bin/bash

chmod +rx myscript.sh
source ./myscript.sh

if [ -z $1 ]
  then
    echo -e "${RED}ERROR: No parameter passed. ${OR}I need one...${NC}"
elif [ $# -eq 1 ]
  then
    run "$1"
else
  echo -e "${RED}ERROR: Too many parameters. ${OR}I need only one...${NC}"
fi