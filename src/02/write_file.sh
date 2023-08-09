#!/bin/bash

source ./colors.sh

ask_to_write () {
  echo -e "${GR}Do you want to write the data in a file? (Y/N)${NC}"
  read ANSWER
}
