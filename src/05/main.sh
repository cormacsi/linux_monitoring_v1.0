#!/bin/bash

START=$(date +%s)

chmod +rx args.sh only_colors.sh output.sh
source ./args.sh
source ./only_colors.sh
source ./output.sh

args $#

if ! [ -d $1 ]; then
  echo -e "${RED}NO such directory.${OR} PLEASE check the path...${NC}"
elif [ ${1: -1} != "/" ]; then
  echo -e "${OR}Directory ${RED}PATH ${OR}should end with ${RED}/${NC}"
else
  output $1
  END=$(date +%s)
  echo "Script execution time (in seconds) = $(($END - $START))"
fi
