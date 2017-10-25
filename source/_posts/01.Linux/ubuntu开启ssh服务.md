---
title: ubuntu开启ssh服务
date: 2017-10-17 17:16:19
categories:
 - 01.Linux
tags:
 - ubuntu
 - ssh
---

### 安装openssh-server

```
sudo apt-get update
sudo apt-get install openssh-server
```

### 查看ssh服务

```
sudo ps -e|grep ssh #是否存在sshd进程
```
如果没有sshd进程，执行：
```
sudo service ssh start
```

### 查看ubuntu IP
```
ifconfig
```

### 使用ssh客户端工具连接

```
ssh 你的ip
```

### 通过主机名连接

请参见另一篇


<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
> 1. 创建于 2017-10-17 17:16:19
> 2. 更新于 2017-10-24 8:16:19

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
