@echo off
call hexo clean
call hexo g
start hexo s
hexo d&exit
exit
