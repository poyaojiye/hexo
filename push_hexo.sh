#!/bin/sh

git pull origin master
git add .
git commit -m "update"
git push origin master

cd themes/next
git pull origin master
git add .
git commit -m "update"
git push origin master

