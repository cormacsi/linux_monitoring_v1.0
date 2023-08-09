#!/bin/bash

source ./only_colors.sh

check_color () {
  if [[ $ONE == $TWO || $TRE == $FOR ]]; then
    if [ $ONE == $TWO ]; then
      echo -e "${RED}ERROR: ${OR}The first number should ${RED}NOT${OR} be the same as the second${NC}"
    elif [ $TRE == $FOR ]; then
      echo -e "${RED}ERROR: ${OR}The third number should ${RED}NOT${OR} be the same as the forth${NC}"
    fi
    echo -e "${OR}Do you wanna try one more time? (Y/N)${NC}"
    read ANSWER
    if [ "$ANSWER" = "Y" -o "$ANSWER" = "y" ]; then
      echo -e "${GR}WRITE 4 digits from 1 to 6${NC}"
      read DIG
      ./main.sh $DIG
    fi
    exit 1
  fi
}