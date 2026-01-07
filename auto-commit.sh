#!/bin/bash

while true; do
  git diff --quiet
  if [ $? -ne 0 ]; then
    git add .
    git commit -m "Auto-save update"
    git push
  fi
  sleep 10
done
