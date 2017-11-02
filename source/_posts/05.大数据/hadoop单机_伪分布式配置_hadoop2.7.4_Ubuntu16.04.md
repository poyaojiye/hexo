---
title: hadoop单机/伪分布式配置_hadoop2.7.4/Ubuntu16.04
date: 2017-10-31 15:00:12
categories:
 - 05.大数据
tags:
 - hadoop
 - 单机
 - 伪分布
 - Ubuntu
---

### 安装hadoop
1. 本教程需要些许linux基础
1. 下载最新稳定版hadoop
    当前最新稳定版，stable，是hadoop-2.7.4.tar.gz：
    https://dist.apache.org/repos/dist/release/hadoop/common/
    ```
    # wget的-c是断点续传，6不6
    wget -c https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.7.4/hadoop-2.7.4.tar.gz
    # 同时建议下载，内含校验码判断文件是否下载完整，不然安装到一半报异常神烦啊，
    wget -c https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.7.4/hadoop-2.7.4.tar.gz.mds
    # 使用md5sum校验，与mds文件中的md5码比较即可
    md5sum hadoop-2.7.4.tar.gz|tr [a-z] [A-Z]
    ```
<!--more-->
1. 安装jre获jdk，jdk中包含jre，具体步骤另见教程
1. 添加hadoop用户
    ```
    sudo useradd -m hadoop -s /bin/bash
    # 设置密码
    sudo passwd hadoop
    # 增加管理员权限
    sudo adduser hadoop sudo
    ```
1. 把tar包解压到/usr/local/，解压出来的文件
    ```
    tar -zxvf hadoop-2.7.4.tar.gz -C /usr/local
    cd /usr/local/
    sudo mv ./hadoop-2.7.4/ ./hadoop
    sudo chown -R hadoop ./hadoop
    ```
1. 然后可以执行hadoop查看版本，表示hadoop已安装成功
    ```
    cd cd /usr/local/hadoop
    ./bin/hadoop version
    ```

### hadoop单机配置
1. 通过上面的配置，现在可以查看hadoop自带的一些实例，运行：
    ```
    cd /usr/local/
    ./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.4.jar
    ```
    可以看到wordcout,grep等多个示例

### hadoop伪分布配置
1. 配置/usr/local/hadoop/etc/hadoop/中的
    1. **core-site.xml**,如果要切回hadoop单机模式，需要把改文件配置清空**（敲黑板擦，划重点）**
        ```
        <configuration>
            <property>
                 <name>hadoop.tmp.dir</name>
                 <value>file:/usr/local/hadoop/tmp</value>
                 <description>Abase for other temporary directories.</description>
            </property>
            <property>
                 <name>fs.defaultFS</name>
                 <value>hdfs://localhost:9000</value>
            </property>    
        </configuration>
        ```
    1. **hdfs-site.xml**
        ```
        <configuration>
            <property>
                 <name>dfs.replication</name>
                 <value>1</value>
            </property>
            <property>
                 <name>dfs.namenode.name.dir</name>
                 <value>file:/usr/local/hadoop/tmp/dfs/name</value>
            </property>
            <property>
                 <name>dfs.datanode.data.dir</name>
                 <value>file:/usr/local/hadoop/tmp/dfs/data</value>
            </property>
    </configuration>
        ```
1. 配置完成后格式化NameNode
    ```
    ./bin/hdfs namenode -format
    ```
    执行成功会显示：
    name has been successfully formatted.
    Exitting with status 0.
1. 启动hdfs,包含两个进程NameNode和DataNode
    ```
    ./sbin/start-dfs.sh
    ```
1. 通过`jps`可以查看存在的java进程中是否存在NameNode和DataNode
1. 成功启动后，可以访问 Web 界面 http://localhost:50070 查看 NameNode 和 Datanode 信息，及HDFS 中的文件。
1. 停止hdfs的命令：
    ```
    ./sbin/stop-dfs.sh
    ```
1. 其中，hadoop伪分布式的运行实例
    ```
    #创建用户目录
    ./bin/hdfs dfs -mkdir -p /user/hadoop
    #创建input目录
    ./bin/hdfs dfs -mkdir input
    #上传数据文件
    ./bin/hdfs dfs -put ./etc/hadoop/*xml input
    #查看input目录
    ./bin/hdfs dfs -ls input
    #执行MapReduce作业
    ./bin/hadoop jar ./share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar grep input output 'dfs[a-z.]+'
    #查看执行结果
    ./bin/hdfs dfs -cat output/*
    #下载/取回执行结果
    ./bin/hdfs dfs -get output ./output
    #清除结果目录，执行前output不能已存在
    ./bin/hdfs dfs -rm -r output
    ```
### 启动YARN（yet another resource negotiator）
1. 配置/usr/local/hadoop/etc/hadoop/mapred-site.xml
1. 原文件名为mapred-site.xml.template，重命名为mapred-site.xml
    ```
    mv mapred-site.xml.template mapred-site.xml
    ```
1. 配置mapred-site.xml
    ```
    <configuration>
        <property>
             <name>mapreduce.framework.name</name>
             <value>yarn</value>
        </property>
    </configuration>
    ```
1. 配置yarn-site.xml
    ```
    <configuration>
        <property>
             <name>yarn.nodemanager.aux-services</name>
             <value>mapreduce_shuffle</value>
            </property>
    </configuration>
    ```
1. 启动停止yarn
    ```
    #启动yarn
    ./sbin/start-dfs.sh
    ./sbin/start-yarn.sh
    ./sbin/mr-jobhistory-daemon.sh start historyserver

    #停止yarn
    ./sbin/stop-yarn.sh
    ./sbin/mr-jobhistory-daemon.sh stop historyserver
    ./sbin/stop-dfs.sh
    ```
1. 其中，启动yarn后可以通过jps看到 NodeManager 和 ResourceManager 两个Java进程
1. hadoop启动没有NodeManager,需要在yarn-site.xml中增加下面的配置,下面的内存我的机器里配置为3072才可以较为正常运行（敲黑板擦，划重点），所以伪分布式使用yarn不仅没有性能提升，反而更慢，龟速。中间修改配置文件需要重启yarn才能生效：
    ```
    <property>
        <name>yarn.nodemanager.resource.memory-mb</name>
        <value>3072</value>
    </property>
    <property>
        <name>yarn.nodemanager.resource.cpu-vcores</name>
        <value>1</value>
    </property>
    ```
1. 配置完成后运行方式和伪单机命令相同，可以在
http://localhost:8088/cluster
查看状态信息。

### tips：
* 可以通过配置环境变量和设置软连接的方式减少目录的切换和输入
* hadoop不只是可扩展性，还有可收缩性，有点逆向思维。


<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
> 1. 创建于 2017-10-31 15:00:23

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
