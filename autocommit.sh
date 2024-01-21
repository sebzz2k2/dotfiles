#!/bin/bash
# This script is supposed to run every 6 hours
REPO_PATH=~/dotfiles

cd $REPO_PATH

if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Auto-commit at $(date +'%Y-%m-%d %H:%M:%S')"
    git push origin master
fi

