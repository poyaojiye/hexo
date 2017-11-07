#!/bin/sh

git add .
git commit -m "update"
git push origin master

cd themes/next
git add .
git commit -m "update"
git push origin master

