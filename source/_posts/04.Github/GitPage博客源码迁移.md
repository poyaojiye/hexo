---
title: GitPages博客源码迁移
date: 2017-10-28 23:20:03
categories:
 - 04.Github
tags:
 - Git Pages
 - 博客
 - 源码迁移
---

** [参考我的博客](https://poyaojiye.com/) **

### git pages 源码迁移的原因

> 需要更换git pages 源码所在的机器
> 重装系统
> 多终端使用编辑博客
<!--more-->

### 在旧终端上要做的操作

```
# 在github上新建repo，在本地hexo文件夹(你的源码文件夹)执行：
git init
git remote add origin https://github.com/poyaojiye/hexo.git
git add .
git commit -m "xxx"
git push origin master
```
#### 另外，自定义主题 themes/主题的同步问题，需要使用submodule解决

如果你的博客主题是直接clone了第三方的仓库，push hexo 到github 后，themes/主题文件夹是
空的，需要使用git 子模块解决
首先把主题fork到自己的github中，然后添加到子模块：

```
git submodule add git@github.com:poyaojiye/hexo-theme-next.git themes/next
```

### 安装环境，node.js，git

```
sudo apt install nodejs-legacy
sudo apt install npm
sudo apt install git
git config --global user.name "your github username"
git config --global user.email "your github email"
```

### 配置ssh，前面这几步类似新建博客环境

```
ssh-keygen -t rsa -C "your github email"
github 设置 添加pub key
测试连接：ssh -T git@github.com
```

### 安装hexo

`sudo npm install -g hexo-cli`

### clone源码

```
# 我的源码文件夹是hexo，创建源码文件夹hexo
# clone 源码到hexo
git clone https://github.com/poyaojiye/hexo.git ./
```
* <span style="color:red;font-weight:bold">禁执行 hexo init，会新生成配置
文件_config.yml覆盖原有文件</span>

### 安装node插件

```
#会根据原来的配置文件安装所需插件
npm install`
```

### 到themes/主题 下，用submodule处理自定义的主题

```
git submodule init
git submodule update
```
* 这一步的前提是在原来的机器上的源码处，把themes/next添加到了submodule中




### 注意

> \# 对于插件wordcount：
> \# Node 版本7.6.0之前,请安装 2.x 版本 (Node.js v7.6.0 and previous)
> npm install hexo-wordcount@2 --save

** [参考我的博客](https://poyaojiye.com/) **

<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
> 1. 创建于 2017-10-28 23:20:03

<br/>
<br/>

[comment]: <> (这是注释)
[comment]: <> (*斜体*)
[comment]: <> (**粗体**)
[comment]: <> (图片1: ![](url))
[comment]: <> (图片2:  <img src="./xxx.png" width = "300" height = "200" alt="" align=left />)
[comment]: <> (图片后换行：<div style="clear:both;"/> )
[comment]: <> (链接: [](url))
[comment]: <> (篇首图：layout: photo)
[comment]: <> (篇首图：photos: )
[comment]: <> (篇首图： - /images/win10_wallpaper/3d3dc256448421a24e704fa46a2e88b4c56b8634142bcf1fbb0742d2818120f8.jpg)
[comment]: <> (换行：<br/>)
