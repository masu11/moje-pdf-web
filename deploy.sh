#!/bin/bash
# Quick deploy script - edit the USERNAME and REPO below before running.
USERNAME="<GITHUB_USERNAME>"
REPO="<REPO_NAME>"

if [ "$USERNAME" = "<GITHUB_USERNAME>" ] || [ "$REPO" = "<REPO_NAME>" ]; then
  echo "Please edit the script and set USERNAME and REPO variables."
  exit 1
fi

git init
git add .
git commit -m "Initial commit - PDF web"
git branch -M main
git remote add origin https://github.com/${USERNAME}/${REPO}.git
git push -u origin main
echo "Files pushed. Now enable GitHub Pages in repository settings (branch main / root)."
