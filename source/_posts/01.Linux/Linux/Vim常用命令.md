---
title: Vim常用命令
date: 2017-10-31 17:44:16
categories:
 - 01.Linux
tags:
 - Vim
 - 常用命令
---

1. 列编辑

> 1. 删除列
>> 1. 光标定位到要操作的地方。
>> 1. CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
>> 1. d 删除。
> 1. 插入列
>> 1. 插入操作的话知识稍有区别。例如我们在每一行前都插入"() "：
>> 1. 光标定位到要操作的地方。
>> 1. CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
>> 1. SHIFT+i(I) 输入要插入的内容。
>> 1. ESC 按两次，会在每行的选定的区域出现插入的内容。
<!--more-->

1. 复制/剪切--粘贴字符串

>     使用normal模式下的  v命令，进入visual模式，v+ j/k/h/l 进行文本选中
>     对于选中的文本进行如下按键：
>     d------剪切操作
>     y------复制操作
>     p------粘贴操作
>     ^------选中当前行，光标位置到行首（或者使用键盘的HOME键）
>     $------选中当前行，光标位置到行尾（或者使用键盘的END键）

1. Visual Line模式  按键V可以进入

> 按键V之后，进入Visual Line模式，使用 j/k键可以选中一行或者多行


<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
>> 1. 创建于 2017-10-31 17:44:16

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
