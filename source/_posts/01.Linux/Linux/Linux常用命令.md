---
title: Linux常用命令--持续更新
date: 2017-10-31 13:18:37
categories:
 - 01.Linux
tags:
 - Linux
 - 常用命令
---

1. 压缩/解压
    ```
    # 压缩
    gzip filename
    gzip *
    # 解压
    gzip -d filename.gz
    gzip -d *.gz
    # 打包
    tar -cvf xxx.tar /dir
    # 压缩打包
    tar -zcvf xxx.tar.gz /dir
    # 解包
    tar -xvf xxx.tar ./
    # 解包解压，参数z可以省略，tar自动识别
    tar -zxvf xxx.tar.gz ./
    # 到指定目录
    gzip -c filename>/dir/xxx.gz
    gzip -cd xxx.gz>/dir/filename
    tar -cvf /dir/xxx.tar /dir
    tar -xvf xxx.tar -C /dir
    ```
<!--more-->
1. 新增用户
    ```
    # -m 创建用户主目录的，默认为/home/用户名，-s指定登录默认的shell
    useradd -m hadoop -s /bin/bash
    ```
1. 软链接

    `ln -s /source_path link`

1. 硬链接
    ```
    # create hard link
    ln filename hard_link
    # view file's hard link after permissions
    ll filename
    ```

1. 递归创建文件夹
    `mkdir -P folder`

1. 查看主机名
    ```
    hostname
    cat /etc/hostname
    ```
1. grep

    ```
    grep -n 'str' file # show the line number
    grep -P 'regex' file # by the regular expression
    ```
1. find--查找

    ```
    find   -name april*                     在当前目录下查找以april开始的文件
    find   -name   april*   fprint file        在当前目录下查找以april开始的文件，并把结果输出到file中
    find   -name ap* -o -name may*   查找以ap或may开头的文件
    find   /mnt   -name tom.txt   -ftype vfat   在/mnt下查找名称为tom.txt且文件系统类型为vfat的文件
    find   /mnt   -name t.txt ! -ftype vfat   在/mnt下查找名称为tom.txt且文件系统类型不为vfat的文件
    find   /tmp   -name wa* -type l            在/tmp下查找名为wa开头且类型为符号链接的文件
    find   /home   -mtime   -2                 在/home下查最近两天内改动过的文件
    find /home    -atime -1                  查1天之内被存取过的文件
    find /home -mmin    +60                  在/home下查60分钟前改动过的文件
    find /home   -amin   +30                  查最近30分钟前被存取过的文件
    find /home   -newer   tmp.txt             在/home下查更新时间比tmp.txt近的文件或目录
    find /home   -anewer   tmp.txt            在/home下查存取时间比tmp.txt近的文件或目录
    find   /home   -used   -2                  列出文件或目录被改动过之后，在2日内被存取过的文件或目录
    find   /home   -user cnscn                列出/home目录内属于用户cnscn的文件或目录
    find   /home   -uid   +501                  列出/home目录内用户的识别码大于501的文件或目录
    find   /home   -group   cnscn              列出/home内组为cnscn的文件或目录
    find   /home   -gid 501                   列出/home内组id为501的文件或目录
    find   /home   -nouser                    列出/home内不属于本地用户的文件或目录
    find   /home   -nogroup                   列出/home内不属于本地组的文件或目录
    find   /home    -name tmp.txt    -maxdepth   4   列出/home内的tmp.txt 查时深度最多为3层
    find   /home   -name tmp.txt   -mindepth   3   从第2层开始查
    find   /home   -empty                     查找大小为0的文件或空目录
    find   /home   -size   +512k                查大于512k的文件
    find   /home   -size   -512k               查小于512k的文件
    find   /home   -links   +2                查硬连接数大于2的文件或目录
    find   /home   -perm   0700                查权限为700的文件或目录
    find   /tmp   -name tmp.txt   -exec cat {} \;
    find   /tmp   -name   tmp.txt   -ok   rm {} \;
    find    /   -amin    -10     # 查找在系统中最后10分钟访问的文件
    find    /   -atime   -2        # 查找在系统中最后48小时访问的文件
    find    /   -empty             # 查找在系统中为空的文件或者文件夹
    find    /   -group   cat        # 查找在系统中属于 groupcat的文件
    find    /   -mmin   -5         # 查找在系统中最后5分钟里修改过的文件
    find    /   -mtime   -1       #查找在系统中最后24小时里修改过的文件
    find    /   -nouser           #查找在系统中属于作废用户的文件
    find    /   -user    fred     #查找在系统中属于FRED这个用户的文件
    ```
1. which--追踪命令路径
    ```
    which grep
    which python3
    ```
1. 时间
    ```
    cal  日期表
    date 格式输出
    date +%Y%m%d  #20171001
    date +%Y-%m-%d #2017-10-01
    ntp 对时
    ```

1. ps--查看进程

    ```
    ps -ef|grep test
    ```

1. kill--杀死进程

    ```
    kill processid
    kill -9 processid # 强制杀死
    ```

1. top/htop--查看系统性能

1. 查看空间

    ```
    df -h
    du -h
    ```

1. ifconfig --查看、修改网卡信息，ip信息

1. 用户和用户组操作

    ```
    useradd hadoop -m -s /bin/bash # 创建home目录和指定默认bash
    sudo passwd hadoop # 修改密码
    sudo adduser xxxx sudo # 添加用户到sudo
    userdel # 删除用户
    userdel -r # 删除home目录
    cat /etc/passwd # 查看是否有用户
    sudo -s # 执行环境变数中的 SHELL 所指定的 shell
    groupadd
    groupdel
    groupmod
    sudo usermod -a -G sudo xxxx
    sudo usermod -g 默认用户组 xxxx
    sudo adduser xxxx sudo
    chown username file
    chgrp groupname file
    chmod u=rwx file
    chmod g=rwx file
    chmod o=rwx file
    ```

1. 关机/重启

    ```
    reboot
    shutdown
    init
    ```
1. split和cat重定向--拆分和合并

<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
> 1. 创建于 2017-10-31 13:18:37

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
