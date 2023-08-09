#!/bin/bash

chmod +rx args.sh check.sh colors.sh output.sh only_colors.sh
source ./args.sh
source ./check.sh
source ./colors.sh
source ./output.sh
source ./set_color.sh

args "$#"

ONE=$1
TWO=$2
TRE=$3
FOR=$4

check_arg $ONE $TWO $TRE $FOR
check_color

set_color
output $ONE $TWO $TRE $FOR