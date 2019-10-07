#!/bin/bash

echo -n "Checking Home Assistant configuration: "
hassio homeassistant check

git add .
git status

echo -n "Enter commit description: "
read COMMIT_DESC

git commit -m "${COMMIT_DESC}"
git push origin master

exit