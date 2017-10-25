---
layout: photo
title: Git常用命令
date: 2017-10-16 08:49:19
categories: 
 - 04.Github
tags: 
 - Git
 - Github
---

### 参考链接
http://blog.csdn.net/free_wind22/article/details/50967723

### Git常用命令如下：
1. 创建一个空目录 XX指目录名)
    > mkdir XX
1. 显示当前目录的路径。
    > pwd
1. 把当前的目录变成可以管理的git仓库，生成隐藏.git文件。
    > git init
1. 把xx文件添加到暂存区去。
    > git add XX
1. 提交文件 –m 后面的是注释。
    > git commit –m “XX”
<!--more-->
1. 查看仓库状态
    > git status
1. 查看XX文件修改了那些内容
    > git diff  XX
1. 查看历史记录
    > git log
1. 回退到上一个版本
    > git reset  --hard HEAD^
1. 回退到上一个版本
    > git reset  --hard HEAD~
1. 如果想回退到100个版本，使用 )
    > git reset –hard HEAD~100
1. 查看XX文件内容
    > cat XX
1. 查看历史记录的版本号id
    > git reflog
1. 把XX文件在工作区的修改全部撤销。
    > git checkout -- XX
1. 删除XX文件
    > git rm XX
1. 关联一个远程库
    > git remote add origin https://github.com/....
1. 把当前master分支推送到远程库，第一次要用-u 以后不需要
    > git push –u origin master
1. 从远程库中克隆
    > git clone https://github.com/....
1. 创建dev分支 并切换到dev分支上
    > git checkout –b dev
1. 查看当前所有的分支
    > git branch
1. 切换回master分支
    > git checkout master
1. 在当前的分支上合并dev分支
    > git merge dev
1. 删除dev分支
    > git branch –d dev
1. 创建分支
    > git branch name
1. 把当前的工作隐藏起来 等以后恢复现场后继续工作
    > git stash
1. 查看所有被隐藏的文件列表
    > git stash list
1. 恢复被隐藏的文件，但是内容不删除
    > git stash apply
1. 删除文件
    > git stash drop
1. 恢复文件的同时 也删除文件
    > git stash pop
1. 查看远程库的信息
    > git remote
1. 查看远程库的详细信息
    > git remote –v
1. Git会把master分支推送到远程库对应的远程分支上
    > git push origin master
