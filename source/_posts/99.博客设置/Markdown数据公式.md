---
title: Markdown数学公式
date: 2017-11-7 16:05:35
categories:
 - 99.博客设置
tags:
 - 数学公式
 - Markdown
---


<!--more-->
1. 平方差公式
\\(a^2-b^2= (a+b)(a-b)\\)
2. 立方差公式
> $a^3-b^3 = (a+b)(a^2-ab+b^2)$
3. 立方和公式
> $a^3+b^3 = (a-b)(a^2+ab+b^2)$
4. 完全平方公式
> $(a + b)^2  = a^2 + 2ab+b^2$
> $(a - b)^2  = a^2 - 2ab+b^2$
5. 一元二次方程求根公式
> $ax^2+bx+c =0$  
> $x_{1,2}=\frac{-b\pm\sqrt{b^2-4ac}}{2a}$
6. 韦达定理
> 设$x1,x2$是一元二次方程$ax^2+bx+c =0$的两个根，则$x1,x2$满足:  
> $x1+x2 = -\frac{b}{a}$  
> $x1 \cdot x2 = \frac{c}{a}$  
7. 有关集合的公式  
> 设$I$为全集，$\varnothing$为空集，如果$A$是$I$的子集,$B$是$I$的子集，则$A \subset I$,$B \subset I$。于是，  
> $I \cup A = I$  
> $I \cap \varnothing = \varnothing$  
> 若$\bar A =\{x|x \in I且x \notin A,A \subseteq I \}$,  
> $\bar B =\{x|x \in I且x \notin B,B \subseteq I \}$  
> 则  
> $A \cup  \bar A = I$  
> $A \cap \bar A = \varnothing$  
> $\overline {A \cap B} = \bar A \cup \bar B$  
> $\overline {A \cup B} = \bar A \cap \bar B$  
8. 不等式  
> $|a| \ge 0$  
> $|a|-|b| \le |a+b| \le |a|+|b|$  
> $|a| \le b$  
> $|a| \le b \Leftrightarrow -b \le a \le b　 (b>0)$  
> $a^2+b^2 \gt 2ab　(a,b \in R)$  
> $\frac{a+b}{2}  \ge \sqrt{ab}　(a,b \in R^+)$  
> $\frac{b}{a} + \frac{a}{b} \ge 2　(ab>0)$  
> $\frac{a+b+c}{3} \ge \sqrt[3]{abc}　(a,b,c \in R)$  
> $\frac{a_1+a_2+ \ldots +a_n}{n} \ge \sqrt[n]{a_1a_2\ldots a_n}　a_1,a_2, \ldots,a_n \in R^+ n \in N且n>1$  
9. 排列组合  
> $A_n^m = \frac{n!}{(n-m)!}$  
> $C_n^m = \frac{n!}{m!(n-m)!}$  
> $C_n^m = C_n^(n-m)$  
> $C_{n+1}^m = C_n^m + C_n^{m-1}$  
> $C_n^0+C_n^1+\ldots +C_n^n = 2^n$  

10. 积分公式  
> $\int sin(x)dx = cos(x) +C$  
> $\int cos(x)dx = -sin(x) +C$  
> $\int tan(x)dx = -ln|cos(x)| +C$  
> $\int cot(s)dx = ln|sin(x)| +C$  
> $\int sec^2(x)dx = tan(x) +C$  
11. 导数公式  
> $(C)'=0$  
> $(sin \,x)' = cos \,x$  
> $(tan \,x)' = sec^2 \,x$  
> $(sec \,x)' = sec \,xtan \,x$  
> $(a^x)' = a^xln \,x$  
> $(x^{\mu}) = \mu x^{\mu-1}$  
> $(cos \,x)' = -sin \,x$  
> $(cot \,x)' = -csc^2 \,x$  
> $(csc \,x)' = -csc \,xcot \,x$  
> $(e^x)' = e^x$  
> $$(log_ax)' = \frac{1}{xln \,a}$$  
> $$(ln \,x)' = \frac{1}{x}$$  
> $$(arcsin \,x)' = \frac{1}{\sqrt{1-x^2}}$$  
> $$(arccos \,x)' = -\frac{1}{\sqrt{1-x^2}}$$  
> $$(arctan \,x)' = \frac{1}{1+x^2}$$  
> $$(arccot \,x)' = -\frac{1}{1+x^2}$$  
12. 重要的极限  
> $$\lim_{x\to 0} \,{\frac{\sin x}{x}} = 1$$  
> $$\lim_{x\to \infty} \,{({1+ \frac{1}{x}})}^x =  e$$  

<br/>

参考地址：  
<http://blog.csdn.net/sanqima/article/details/48576361>
<http://www.ai-heng.cn/2017/08/03/hexo%E5%8D%9A%E5%AE%A2MathJax%E5%85%AC%E5%BC%8F%E6%B8%B2%E6%9F%93%E9%97%AE%E9%A2%98/>

<br/>
<br/>
<br/>
**欢迎评论、留言，一起交流死磕~~**

> ChangeLog:
>> 1. 创建于 2017-11-7 16:05:35


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
