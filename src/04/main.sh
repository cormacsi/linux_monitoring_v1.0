#!/bin/bash

chmod +rx args.sh colors.conf colors.sh only_colors.sh 
chmod +rx colors.sh read_file.sh print.sh output.sh default.sh
source ./args.sh
source ./read_file.sh
source ./print.sh
source ./colors.sh
source ./output.sh

args $#

FILE=./colors.conf

if [ ! -f "$FILE" ]; then
  echo -e "${RED}NO colors.conf file in this directory${NC}"
  echo -e "${OR}Using ${GR}DEFAULT${OR} colors${NC}"
else
  ONE=0
  TWO=0
  TRE=0
  FOR=0

  default[0]=0
  default[1]=0
  default[2]=0
  default[3]=0

  read_file 
fi

INFO=$(print_colors)

set_color
output $ONE $TWO $TRE $FOR

echo "$INFO"
