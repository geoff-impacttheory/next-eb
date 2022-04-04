#!/bin/bash

# Assign the filename
filename="Dockerfile"

# Take the search string
# read -p "Enter the search string: " search

# Take the replace string
# read -p "Enter the replace string: " replace

SEARCH_FOR=$1
REPLACE_WITH=$2

# replace="Happy Birthday! Many Many Happy Returns!"
REPLACE_WITH_ESCAPED="${REPLACE_WITH////\\/}"

if [[ $REPLACE_WITH_ESCAPED != "" ]]; then
sed -i '' "s/$SEARCH_FOR/$REPLACE_WITH_ESCAPED/" "Dockerfile"
fi
