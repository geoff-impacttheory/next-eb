#!/bin/bash

# Assign the filename
filename="Dockerfile"

# Take the search string
# read -p "Enter the search string: " search

# Take the replace string
# read -p "Enter the replace string: " replace

API_ENDPOINT=$1
OTHER_VAR=$2

# replace="Happy Birthday! Many Many Happy Returns!"
API_ENDPOINT_ESCAPED="${API_ENDPOINT////\\/}"
OTHER_VAR_ESCAPED="${OTHER_VAR////\\/}"
# echo $escaped

if [[ $API_ENDPOINT_ESCAPED != "" ]]; then
sed -i '' "s/api_endpoint/$API_ENDPOINT_ESCAPED/" $filename
fi

if [[ $OTHER_VAR_ESCAPED != "" ]]; then
sed -i '' "s/secondvar/$OTHER_VAR_ESCAPED/" $filename
fi