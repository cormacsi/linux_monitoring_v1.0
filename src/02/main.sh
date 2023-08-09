#!/bin/bash

chmod +rx write_file.sh args.sh output.sh colors.sh
source ./write_file.sh
source ./args.sh
source ./output.sh

args "$#"

OUTPUT=$(output)

echo "$OUTPUT"

ask_to_write
if [ "$ANSWER" = "Y" -o "$ANSWER" = "y" ]
  then
    echo "$OUTPUT" > $(date +"%d_%m_%y_%H_%M_%S").status
fi
