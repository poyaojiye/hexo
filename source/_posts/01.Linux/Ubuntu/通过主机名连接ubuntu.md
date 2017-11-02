---
title: 通过主机名连接ubuntu
date: 2017-10-25 14:16:19
categories:
 - 01.Linux
tags:
 - 主机名
 - ubuntu
 - ssh
 - ping
---

### 背景
> 在vmware安装多个ubuntu虚拟机之后，使用了桥接的网络连接方式，因为考虑到dhcp的方式ip
可能是不固定的，所以在使用xshell连接的时候想用主机名代替ip连接，但是发现在windows机器
里可以通过ip ping ubuntu，通过主机名则不行。

### 把ubuntu机器加到win 10的工作组里面

#### 安装samba
    ```
    sudo apt-get install samba
    ```
#### 配置/etc/samba/smb.conf，win 10默认的工作组名为WORKGROUP，该文件中默认的也是WORKGROUP
    ```
    [global]
    ## Browsing/Identification ###
    # Change this to the workgroup/NT-domain name your Samba server will part of
   workgroup = WORKGROUP

    ```
#### 启动samba
    ```
    sudo /etc/init.d/samba start
    ```
### 现在可以在windows中通过主机名ssh等连接ubuntu，当然也是能ping通


<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
> 1. 创建于 2017-10-17 17:16:19

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
