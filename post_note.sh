#!/bin/bash
FILE="twtxt.txt"
echo "Enter your twtxt note:"
read -r NOTE
if [ -z "$NOTE" ]; then
  echo "Empty note. Aborted."
  exit 1
fi

DATE=$(date -u +"%Y-%m-%dT%H:%M:%S%z")

echo -e "$DATE\t$NOTE" >> "$FILE"
echo "Note added to $FILE"

echo "Publishing to GitHub..."

git add "$FILE"
git commit -m "Add twtxt note"
git pull origin main --rebase
git push origin main

echo "Done"
