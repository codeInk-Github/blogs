/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/1/13 7:22:05                            */
/*==============================================================*/

use blogtest;

drop table if exists User;

drop table if exists admin;

drop table if exists comments;

drop table if exists blogs;

drop table if exists favourite;

drop table if exists followers;

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
    username             varchar(20) not null,
    password             varchar(20),
    headPortrait         varchar(50),
    nickName             varchar(16),
    email                varchar(20),
    telephone            varchar(20),
    favourite            int,
    fans                 int,
    question             varchar(50),
    answer               varchar(50),
    registerTime         date,
    primary key (username)
);

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
    adminname            varchar(20) not null,
    adminpassword        varchar(20),
    nickname             varchar(20),
    realname             varchar(10),
    telephone            varchar(20),
    email                varchar(30),
    description          varchar(100),
    question             varchar(50),
    answer               varchar(50),
    registerTime         date,
    primary key (adminname)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

/*==============================================================*/
/* Table: blogs                                                 */
/*==============================================================*/
create table blogs
(
    blogId              int not null auto_increment,
    blogTitle           varchar(100),
    blogContext         longtext,
    likeNums            int,
    commentNums         int,
    creator              varchar(20),
    createTime          datetime,
    status               int comment '0草稿箱|1发布|2删除',
    primary key (blogId)
)
    auto_increment = 20180000
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

/*==============================================================*/
/* Table: comments                                              */
/*==============================================================*/
create table comments
(
    commentId           int auto_increment,
    blogId              int,
    commenterId         varchar(20),
    commenterName       varchar(20),
    commentTime         datetime,
    commentContext      varchar(200) ,
    annoy                 int comment '0匿名1实名',
    primary key (commentId)
)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

/*==============================================================*/
/* Table: favourite                                             */
/*==============================================================*/
create table favourite
(
    username             varchar(20),
    blogId              int
);

/*==============================================================*/
/* Table: followers                                             */
/*==============================================================*/
create table followers
(
    bloggerId           varchar(20) not null,
    fansId              varchar(20) not null,
    primary key (bloggerId, fansId)
);

alter table comments add constraint FK_Reference_1 foreign key (blogId)
    references blogs (blogId) on delete restrict on update restrict;


insert into
    User(username, password, nickName, email, telephone, favourite, fans,registerTime)
    values ("zucker","wqbssy1314.","酥酥susu","13127536467@163.com","123456",0,0,"2021-1-1");

insert into
    User(username, password, nickName, email, telephone, favourite, fans)
    values ("wqb","123456","酥酥susu","13127536467@163.com","123456",0,0);

insert into
    blogs(blogTitle, blogContext, likeNums, commentNums, creator, createTime, status)
    values("《Machine Learning in Action》 -- 浅谈","# [Jmeter 下载+安装+汉化+版本更新+备份使用（Jmeter 4+版本均适用）](https://www.cnblogs.com/tangbohu2008/p/14273027.html)

**目录**

[一、jdk 的安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t0)

[二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t1)

[三、配置系统环境变量](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t2)

[四、查看 jmeter 成功安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t3)

[五、jmeter 汉化](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t4)

[六、jmeter 可用已有的压缩包解压使用](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t5)

[七、新版本更新](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t6)

------

------

# 一、jdk 的安装

首先，需要先安装好jdk8（推荐）或jdk10，点击前往查看我的另一博文：[【jdk】window10：jdk 8下载和安装步骤](https://blog.csdn.net/qq_39720249/article/details/80721719)

------

------

# **二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘**

（一）jmeter官网地址：https://jmeter.apache.org [点击打开链接](https://jmeter.apache.org/)

![img](https://img-blog.csdn.net/20180706143706792?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（二）官网直接下载地址：https://jmeter.apache.org/download_jmeter.cgi  [点击打开链接](http://jmeter.apache.org/download_jmeter)



```
官网下载版本步骤：

→打开链接：https://jmeter.apache.org/download_jmeter.cgi

→找到：Apache JMeter 4.0 (Requires Java 8 or 9.)

→找到：Binaries

→选中：apache-jmeter-4.0.zip

→点击下载到任意磁盘，解压到英文目录下。
```





![img](https://img-blog.csdn.net/20180706143940882?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（三）下载压缩包至任意磁盘，直接解压到英文目录下即可，解压后原zip包可以删除。

![img](https://img-blog.csdn.net/2018070614433479?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **三、配置系统环境变量**



```
电脑搜索“高级系统设置”，查看高级系统属性，点击“环境变量”按钮，操作“系统属性”：

（1）设置jmeter解压目录的JMETER_HOME环境变量：

系统属性：

→新建

→变量名：JMETER_HOME

变量值：jmeter安装的路径（浏览目录：定位到jmeter-zip包的解压目录）

→确定。

（2）设置jmeter的bin目录的path环境变量：

系统属性：

→找到一个变量名为path（也可能是Path或PATH）的系统变量

→编辑

→新增变量值：变量值后加一个英文分号“；”，分号后输入jmeter的bin路径（浏览目录：定位到jmeter安装包下的bin目录）

→确定。

（3）设置jmeter的classpath变量：

系统属性：

→找到一个变量名为CLASSPATH的系统变量

→编辑

→变量值后新增：

;%JMETER_HOME%\lib\ext\ApacheJMeter_core.jar;%JMETER_HOME%\lib\jorphan.jar;

→确定。

（4）最后点击所有弹出窗后的“确定”，确认保存所设置的3个系统变量。
```



------

------

# **四、查看 jmeter 成功安装**

```
进入jmeter下的bin目录，点击打开jmeter.bat文件：


成功启动jmeter则表示成功安装jmeter，如果出现启动闪退，则将系统环境变量中的变量名为JMETER_HOME的系统变量删除，再启动该文件即可。
```



![img](https://img-blog.csdn.net/20180706142236675?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

![img](https://img-blog.csdn.net/20180706142629162?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **五、jmeter 汉化**

（1）**Jmeter 短期汉化**【默认英文版，修改时才显示中文简体版】：

```
打开jmeter的jmeter.bat文件，直接转换语言：

→option

→choose language

→Chinese simplified
```





![img](https://img-blog.csdn.net/20180706142641668?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（2）**Jmeter 长期汉化**（修改后，重启默认为中文简体版）：

```
修改配置文件 jmeter.properties ，添加以下字段：

language = zh_cn
```



![img](https://img-blog.csdnimg.cn/20190929022023388.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

![img](https://img-blog.csdnimg.cn/20190929005249114.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

------

（3）修改为其他默认语言，点击查看我的另一博文：

[【jmeter】Jmeter 修改启动默认语言：将英文版修改为其他语言版本](https://blog.csdn.net/qq_39720249/article/details/101654970)

------

------

# 六、jmeter 可用已有的压缩包解压使用



```
1、我们第一次安装jmeter之后，在使用期间会添加插件，将jmeter部署得更加适用，当你另换一台电脑，

又从头开始安装的话，我想没人乐意。


2、其实，已有的jmeter，可以直接打成压缩包，放到另一台电脑上，直接配置好系统环境变量，又可以直接使用了，

之前的插件只要有在这个压缩包里，就可以直接在另一台电脑上使用，完全不需要重装！
```



------

------

# 七、新版本更新

```
1、在使用的时候，如需使用新版本 jmeter，那么就把新版本压缩包下载下来，解压。


2、把旧版本的文件名更改一下，再把新版本解压后文件名修改为和旧版本文件名一样，这样就不用修改环境变量了。


3、先把旧版本所有文件进行复制，再黏贴到新版本文件中，跳过同名文件进行黏贴，注意：是跳过同名文件。

因为同名文件新版本或许有迭代，所以要使用最新的，这些不要覆盖到。


4、跳过同名黏贴后，使用名称排序查看各个目录文件，对于同名文件、不同版本的（尤其是 jar 包），

把旧版本删除，保留新版本文件。


5、对于配置文件jmeter.properties、build.xml 文件这些自己有去修改过的，还有 bin 目录下的 report-template 目录，

有修改过报告模板的，则使用复制黏贴，直接覆盖到新版本文件内，沿用旧版本配置。


6、测试一下，没问题就大功告成。


7、原文件打包压缩保存进 U 盘，万一需要回归则直接解压，改回原文件名，放进原路径下，即可直接使用。
``",20,24,"wqb","2021-1-1",2);

insert into
    blogs(blogTitle, blogContext, likeNums, commentNums, creator, createTime, status)
    values("Jmeter 下载+安装+汉化+版本更新+备份使用（Jmeter 4+版本均适用）",
"# [Jmeter 下载+安装+汉化+版本更新+备份使用（Jmeter 4+版本均适用）](https://www.cnblogs.com/tangbohu2008/p/14273027.html)

**目录**

[一、jdk 的安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t0)

[二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t1)

[三、配置系统环境变量](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t2)

[四、查看 jmeter 成功安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t3)

[五、jmeter 汉化](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t4)

[六、jmeter 可用已有的压缩包解压使用](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t5)

[七、新版本更新](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t6)

------

------

# 一、jdk 的安装

首先，需要先安装好jdk8（推荐）或jdk10，点击前往查看我的另一博文：[【jdk】window10：jdk 8下载和安装步骤](https://blog.csdn.net/qq_39720249/article/details/80721719)

------

------

# **二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘**

（一）jmeter官网地址：https://jmeter.apache.org [点击打开链接](https://jmeter.apache.org/)

![img](https://img-blog.csdn.net/20180706143706792?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（二）官网直接下载地址：https://jmeter.apache.org/download_jmeter.cgi  [点击打开链接](http://jmeter.apache.org/download_jmeter)



```
官网下载版本步骤：

→打开链接：https://jmeter.apache.org/download_jmeter.cgi

→找到：Apache JMeter 4.0 (Requires Java 8 or 9.)

→找到：Binaries

→选中：apache-jmeter-4.0.zip

→点击下载到任意磁盘，解压到英文目录下。
```





![img](https://img-blog.csdn.net/20180706143940882?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（三）下载压缩包至任意磁盘，直接解压到英文目录下即可，解压后原zip包可以删除。

![img](https://img-blog.csdn.net/2018070614433479?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **三、配置系统环境变量**



```
电脑搜索“高级系统设置”，查看高级系统属性，点击“环境变量”按钮，操作“系统属性”：

（1）设置jmeter解压目录的JMETER_HOME环境变量：

系统属性：

→新建

→变量名：JMETER_HOME

变量值：jmeter安装的路径（浏览目录：定位到jmeter-zip包的解压目录）

→确定。

（2）设置jmeter的bin目录的path环境变量：

系统属性：

→找到一个变量名为path（也可能是Path或PATH）的系统变量

→编辑

→新增变量值：变量值后加一个英文分号“；”，分号后输入jmeter的bin路径（浏览目录：定位到jmeter安装包下的bin目录）

→确定。

（3）设置jmeter的classpath变量：

系统属性：

→找到一个变量名为CLASSPATH的系统变量

→编辑

→变量值后新增：

;%JMETER_HOME%\lib\ext\ApacheJMeter_core.jar;%JMETER_HOME%\lib\jorphan.jar;

→确定。

（4）最后点击所有弹出窗后的“确定”，确认保存所设置的3个系统变量。
```



------

------

# **四、查看 jmeter 成功安装**

```
进入jmeter下的bin目录，点击打开jmeter.bat文件：


成功启动jmeter则表示成功安装jmeter，如果出现启动闪退，则将系统环境变量中的变量名为JMETER_HOME的系统变量删除，再启动该文件即可。
```



![img](https://img-blog.csdn.net/20180706142236675?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

![img](https://img-blog.csdn.net/20180706142629162?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **五、jmeter 汉化**

（1）**Jmeter 短期汉化**【默认英文版，修改时才显示中文简体版】：

```
打开jmeter的jmeter.bat文件，直接转换语言：

→option

→choose language

→Chinese simplified
```





![img](https://img-blog.csdn.net/20180706142641668?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（2）**Jmeter 长期汉化**（修改后，重启默认为中文简体版）：

```
修改配置文件 jmeter.properties ，添加以下字段：

language = zh_cn
```



![img](https://img-blog.csdnimg.cn/20190929022023388.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

![img](https://img-blog.csdnimg.cn/20190929005249114.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

------

（3）修改为其他默认语言，点击查看我的另一博文：

[【jmeter】Jmeter 修改启动默认语言：将英文版修改为其他语言版本](https://blog.csdn.net/qq_39720249/article/details/101654970)

------

------

# 六、jmeter 可用已有的压缩包解压使用



```
1、我们第一次安装jmeter之后，在使用期间会添加插件，将jmeter部署得更加适用，当你另换一台电脑，

又从头开始安装的话，我想没人乐意。


2、其实，已有的jmeter，可以直接打成压缩包，放到另一台电脑上，直接配置好系统环境变量，又可以直接使用了，

之前的插件只要有在这个压缩包里，就可以直接在另一台电脑上使用，完全不需要重装！
```



------

------

# 七、新版本更新

```
1、在使用的时候，如需使用新版本 jmeter，那么就把新版本压缩包下载下来，解压。


2、把旧版本的文件名更改一下，再把新版本解压后文件名修改为和旧版本文件名一样，这样就不用修改环境变量了。


3、先把旧版本所有文件进行复制，再黏贴到新版本文件中，跳过同名文件进行黏贴，注意：是跳过同名文件。

因为同名文件新版本或许有迭代，所以要使用最新的，这些不要覆盖到。


4、跳过同名黏贴后，使用名称排序查看各个目录文件，对于同名文件、不同版本的（尤其是 jar 包），

把旧版本删除，保留新版本文件。


5、对于配置文件jmeter.properties、build.xml 文件这些自己有去修改过的，还有 bin 目录下的 report-template 目录，

有修改过报告模板的，则使用复制黏贴，直接覆盖到新版本文件内，沿用旧版本配置。


6、测试一下，没问题就大功告成。


7、原文件打包压缩保存进 U 盘，万一需要回归则直接解压，改回原文件名，放进原路径下，即可直接使用。
``
",21,25,"wqb","2020-10-3",2);

insert into
    blogs(blogTitle, blogContext, likeNums, commentNums, creator, createTime, status)
    values("MySQL的架构",
"目录

一、MySQL简介
二、MySQL用户组管理
1，用户管理相关命令
2，MySQL的权限管理
三、MySQL配置文件
四、MySQL的逻辑架构
1，MySQL的分层思想
2，MySQL的四层架构
3，MySQL的查询流程
五、MySQL的存储引擎
1，查看MySQL的存储引擎
2，各存储引擎比较
3，MyIsam与InnoDB的索引结构


正文

回到顶部
一、MySQL简介
数据库是一个以某种有组织的方式存储的数据集合，它是一个按数据结构来存储和管理数据的计算机软件系统。理解数据库的一种最简单的办法是将其想象为一个文件柜，这个文件柜只是一个存储数据的空间，而数据库就是这么一个空间。
数据库管理系统（Database Management System, DBMS）是用于创建、管理、和维护数据库时所使用的软件，用以管理数据库，一定程度上，用户都是在操作DBMS，所以日常的数据库概念一般就是指DBMS。
MySQL是一种DBMS，而且是一种一个小型的开源的关系型数据库管理系统。2008年1月16日MySQL AB被Sun公司收购。而2009年，SUN又被Oracle收购。就这样如同一个轮回，MySQL成为了Oracle公司的另一个数据库项目。
MySQL支持大型数据库，支持5000万条记录的数据仓库，32位系统表文件最大可支持4GB，64位系统支持最大的表文件为8TB。
回到顶部
二、MySQL用户组管理
1，用户管理相关命令
　　a)创建用户
#创建用户:zs  密码:123456
create user zs identified by ''123456'';
　　b)查看用户权限
复制代码
select host, user, password, select_priv, insert_priv,drop_priv from mysql.user;
host :表示连接类型
　　% 表示所有远程通过 TCP 方式的连接
　　IP 地址 如 (192.168.1.2,127.0.0.1) 通过制定 ip 地址进行的 TCP 方式的连接
　　机器名 通过制定 i 网络中的机器名进行的 TCP 方式的连接
　　::1 IPv6 的本地 ip 地址 等同于 IPv4 的 127.0.0.1
　　localhost 本地方式通过命令行方式的连接 ， 比如 mysql -u xxx -p 123xxx 方式的连接。
user:表示用户名
　　同一用户通过不同方式链接的权限是不一样的。
password:密码
　　所有密码串通过 password(明文字符串) 生成的密文字符串。 加密算法为 MYSQLSHA1 ， 不可逆 。
　　mysql 5.7 的密码保存到 authentication_string 字段中不再使用 password 字段。
select_priv , insert_priv 等
　　为该用户所拥有的权限。
复制代码
　　c)修改密码
复制代码
#MySQL5.6使用
#基本使用 修改lisi密码为123456
update mysql.user set password=password(''123456'') where user=''lisi'';
#修改当前用户
set password =password(''123456'');
#刷新权限生效
flush privileges;

#MySQL5.7推荐使用
#基本使用 修改testuser用户密码为123456
ALTER USER testuser IDENTIFIED BY ''123456'';
#修改当前登录用户 密码为123456
ALTER USER USER() IDENTIFIED BY ''123456'';
复制代码
　　d)修改用户名
update mysql.user set user=''lisi'' where user=''wangwu'';
flush privileges;
　　e)删除用户
drop user lisi
2，MySQL的权限管理
　　a)授予权限
#grant 权限 1,权限 2,…权限 n on 数据库名称.表名称 to 用户名@用户地址 identified by ''连接口令''
#给 lisi 用户用本地命令行方式下， 授予 test这个库下的所有 表的插删改查的权限。
grant select,insert,delete,drop on test.* to lisi@''%'' ;
#授予通过网络方式登录的的 jack 用户，对所有库所有表的全部权 限， 密码设为 123
grant all privileges on *.* to jack@''%'' identified by ''123'';
　　b)收回权限
复制代码
#查看当前用户权限
show grants;
#收回权限
#revoke [权限 1,权限 2,…权限 n] on 库名.表名 from 用户名@用户地址;
#收回全库全表的所有权限
REVOKE ALL PRIVILEGES ON *.* FROM jack@''%'';
#收回 mysql 库下的所有表的插删改查 权限
REVOKE select,insert,update,delete ON mysql.* FROM jack@''%'';
复制代码
回到顶部
三、MySQL配置文件
二进制日志文件 log-bin：用于主从复制
错误日志log-error：默认关闭，记录严重的警告和错误信息，每次启动和关闭的详细信息等
查询日志log：默认关闭，记录查询的sql语句，如果开启会降低mysql的整体性能，因为记录日志也是需要消耗系统资源的
数据文件
数据库文件存储：默认为 /var/lib/mysql
frm文件：存放表结构(都存在)
idb文件：存放表的数据(InnoDB)
myd文件：存放表数据(MyIsam)
myi文件：存放表索引(MyIsam)
回到顶部
四、MySQL的逻辑架构
1，MySQL的分层思想
与其它数据库相比，MySQL有点与众不同，它的架构可以在多种不同场景中应用并发挥良好作用。主要体现在存储引擎的架构上。
插件式的存储引擎架构将查询处理和其它的系统任务以及数据的存储提取相分离。这种架构可以根据业务的需求和实际需要选择合适的存储引擎。


2，MySQL的四层架构
连接层：最上层是一些客户端和连接服务，包含本地socket通信和大多数基于客户端/服务端工具实现的类似于tcp/ip的通信。主要完成类似于连接处理、授权认证、以及相关的安全方案。在该层上引入了线程池的概念，为通过认证安全接入的客户端提供线程。同样在该层上可以实现基于SSL的安全链接。服务器也会为安全接入的每个客户端验证它所具有的操作权限。
服务层：第二层架构主要完成大多数的核心服务功能，比如SQL接口，并完成缓存的查询，SQL的分析和优化及部分内置函数的执行。所有跨存储引擎的功能也在这一层实现，如过程、函数等。在该层，服务器会解析查询并创建相应的内部解析树，并对其完成相应的优化如确定查询表的顺序，是否利用索引等，最后生成相应的执行操作。如果是select语句，服务器还会查询内部的缓存。如果缓存空间足够大，这样在解决大量读操作的环境中能够很好的提升系统的性能。
Management Serveices & Utilities	系统管理和控制工具
SQL Interface	SQL 接口。 接受用户的 SQL 命令， 并且返回用户需要查询的结果。 比如 select from 就是调用 SQL Interface
Parser	解析器。 SQL 命令传递到解析器的时候会被解析器验证和解析
Optimizer	查询优化器。 SQL 语句在查询之前会使用查询优化器对查询进行优化， 比如有 where 条件时， 优化器来决定先投影还是先过滤。
Cache 和 Buffer	查询缓存。 如果查询缓存有命中的查询结果， 查询语句就可以直接去查询缓存中取 数据。 这个缓存机制是由一系列小缓存组成的。 比如表缓存， 记录缓存， key 缓存， 权限缓存等
引擎层：存储引擎层，存储引擎真正的负责了MySQL中数据的存储和提取，服务器通过API与存储引擎进行通信。不同的存储引擎具有的功能不同，这样我们可以根据自己的实际需要进行选取。
存储层：数据存储层，主要是将数据存储在运行于裸设备的文件系统之上，并完成与存储引擎的交互。
3，MySQL的查询流程


客户端向MySQL服务器发送一条查询请求
服务器首先检查查询缓存，如果命中缓存，则立刻返回存储在缓存中的结果。否则进入下一阶段
服务器进行SQL解析、预处理、再由优化器生成对应的执行计划
MySQL根据执行计划，调用存储引擎的API来执行查询
将结果返回给客户端，同时缓存查询结果
回到顶部
五、MySQL的存储引擎
1，查看MySQL的存储引擎
#查看MySQL支持的存储引擎
show engines;
#查看当前使用的存储引擎
show variables like ''%storage_engine%'';
　　关于当前存储引擎出现：disabled_storage_engines

2，各存储引擎比较
a）InnoDB存储引擎（默认存储引擎），支持事务安全表（ACID），支持行锁定和外键

设计遵循ACID模型，支持事务，具有从服务崩溃中恢复数据的能力，能够最大限度包含用户的数据
支持行级所，可以提升多用户并发时的读写性能
支持外键，保持数据的一致性和完整性
innoDB拥有自己独立的缓冲池，常用的数据和索引都在缓存中
b）MyISAM存储引擎：MyISAM基于ISAM存储引擎，并对其进行扩展。它是在Web、数据仓储和其他应用环境下最常使用的存储引擎之一。MyISAM拥有较高的插入、查询速度，但不支持事物。

默认MyISAM的表会在磁盘中产生三个文件：.frm、.MYD和.MYI
MyISAM单表最大支持的数据量是2的64次方条记录
每个表最多可以建立64个索引
如果是复合索引，每个复合索引最多包含16个列，索引值最大长度是1000B
MyISAM引擎的存储格式：定长（FIXED 静态）：是指字段中不包含VARCHAR\TEXTBLOB；动态（DYNAMIC）：只要字段中包含VARCHAR\TEXTBLOB；压缩（COMPRESSED）:myisampack创建
c）MEMORY存储引擎：将表中的数据存储到内存中，未查询和引用其他表数据提供快速访问。

磁盘中产生一个以表名为名称的.frm文件，只保存表结构
如果关闭MySQL服务，此时数据会产生都是rr
max_head_table_size默认16MB
d）ARCHIVE存储引擎：

适合对于不经常访问又删除不了的数据做归档储存
.frm文件结构文件，.arz数据文件
插入效率很高，而且占用空间小
ARCHIVE存储引擎只支持INSERT和SELECT操作，不支持UPDATE/DELECT/
功 能	MYISAM	Memory	InnoDB	Archive
存储限制	256TB	RAM	64TB	None
支持事物	No	No	Yes	No
支持全文索引	Yes	No	No(5.7之后支持)	No
支持数索引	Yes	Yes	Yes	No
支持哈希索引	No	Yes	No	No
支持数据缓存	No	N/A	Yes	No
支持外键	No	No	Yes	No
3，MyIsam与InnoDB的索引结构


　　从图中可以看出：由于MyIsam的存储文件中多了一个.MYI的文件,所以建立的索引为非聚集索引都会指向对应的地址值；而Innodb建立的主键索引为聚合索引，所以当以普通字段建索引时，也称之为二级索引，其建立的索引必须关联对应的主键id，所以查询会执行两次。


",21,25,"wqb","2020-10-3",2);

insert into
    blogs(blogTitle, blogContext, likeNums, commentNums, creator, createTime, status)
    values("Jmeter 下载+安装+汉化+版本更新+备份使用（Jmeter 4+版本均适用）",
"# [Jmeter 下载+安装+汉化+版本更新+备份使用（Jmeter 4+版本均适用）](https://www.cnblogs.com/tangbohu2008/p/14273027.html)

**目录**

[一、jdk 的安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t0)

[二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t1)

[三、配置系统环境变量](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t2)

[四、查看 jmeter 成功安装](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t3)

[五、jmeter 汉化](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t4)

[六、jmeter 可用已有的压缩包解压使用](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t5)

[七、新版本更新](https://www.cnblogs.com/tangbohu2008/p/14273027.html#t6)

------

------

# 一、jdk 的安装

首先，需要先安装好jdk8（推荐）或jdk10，点击前往查看我的另一博文：[【jdk】window10：jdk 8下载和安装步骤](https://blog.csdn.net/qq_39720249/article/details/80721719)

------

------

# **二、官网下载 jmeter 安装 zip 包，直接解压到电脑任意硬盘**

（一）jmeter官网地址：https://jmeter.apache.org [点击打开链接](https://jmeter.apache.org/)

![img](https://img-blog.csdn.net/20180706143706792?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（二）官网直接下载地址：https://jmeter.apache.org/download_jmeter.cgi  [点击打开链接](http://jmeter.apache.org/download_jmeter)



```
官网下载版本步骤：

→打开链接：https://jmeter.apache.org/download_jmeter.cgi

→找到：Apache JMeter 4.0 (Requires Java 8 or 9.)

→找到：Binaries

→选中：apache-jmeter-4.0.zip

→点击下载到任意磁盘，解压到英文目录下。
```





![img](https://img-blog.csdn.net/20180706143940882?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（三）下载压缩包至任意磁盘，直接解压到英文目录下即可，解压后原zip包可以删除。

![img](https://img-blog.csdn.net/2018070614433479?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **三、配置系统环境变量**



```
电脑搜索“高级系统设置”，查看高级系统属性，点击“环境变量”按钮，操作“系统属性”：

（1）设置jmeter解压目录的JMETER_HOME环境变量：

系统属性：

→新建

→变量名：JMETER_HOME

变量值：jmeter安装的路径（浏览目录：定位到jmeter-zip包的解压目录）

→确定。

（2）设置jmeter的bin目录的path环境变量：

系统属性：

→找到一个变量名为path（也可能是Path或PATH）的系统变量

→编辑

→新增变量值：变量值后加一个英文分号“；”，分号后输入jmeter的bin路径（浏览目录：定位到jmeter安装包下的bin目录）

→确定。

（3）设置jmeter的classpath变量：

系统属性：

→找到一个变量名为CLASSPATH的系统变量

→编辑

→变量值后新增：

;%JMETER_HOME%\lib\ext\ApacheJMeter_core.jar;%JMETER_HOME%\lib\jorphan.jar;

→确定。

（4）最后点击所有弹出窗后的“确定”，确认保存所设置的3个系统变量。
```



------

------

# **四、查看 jmeter 成功安装**

```
进入jmeter下的bin目录，点击打开jmeter.bat文件：


成功启动jmeter则表示成功安装jmeter，如果出现启动闪退，则将系统环境变量中的变量名为JMETER_HOME的系统变量删除，再启动该文件即可。
```



![img](https://img-blog.csdn.net/20180706142236675?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

![img](https://img-blog.csdn.net/20180706142629162?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

------

# **五、jmeter 汉化**

（1）**Jmeter 短期汉化**【默认英文版，修改时才显示中文简体版】：

```
打开jmeter的jmeter.bat文件，直接转换语言：

→option

→choose language

→Chinese simplified
```





![img](https://img-blog.csdn.net/20180706142641668?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

------

（2）**Jmeter 长期汉化**（修改后，重启默认为中文简体版）：

```
修改配置文件 jmeter.properties ，添加以下字段：

language = zh_cn
```



![img](https://img-blog.csdnimg.cn/20190929022023388.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

![img](https://img-blog.csdnimg.cn/20190929005249114.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM5NzIwMjQ5,size_16,color_FFFFFF,t_70)

------

（3）修改为其他默认语言，点击查看我的另一博文：

[【jmeter】Jmeter 修改启动默认语言：将英文版修改为其他语言版本](https://blog.csdn.net/qq_39720249/article/details/101654970)

------

------

# 六、jmeter 可用已有的压缩包解压使用



```
1、我们第一次安装jmeter之后，在使用期间会添加插件，将jmeter部署得更加适用，当你另换一台电脑，

又从头开始安装的话，我想没人乐意。


2、其实，已有的jmeter，可以直接打成压缩包，放到另一台电脑上，直接配置好系统环境变量，又可以直接使用了，

之前的插件只要有在这个压缩包里，就可以直接在另一台电脑上使用，完全不需要重装！
```



------

------

# 七、新版本更新

```
1、在使用的时候，如需使用新版本 jmeter，那么就把新版本压缩包下载下来，解压。


2、把旧版本的文件名更改一下，再把新版本解压后文件名修改为和旧版本文件名一样，这样就不用修改环境变量了。


3、先把旧版本所有文件进行复制，再黏贴到新版本文件中，跳过同名文件进行黏贴，注意：是跳过同名文件。

因为同名文件新版本或许有迭代，所以要使用最新的，这些不要覆盖到。


4、跳过同名黏贴后，使用名称排序查看各个目录文件，对于同名文件、不同版本的（尤其是 jar 包），

把旧版本删除，保留新版本文件。


5、对于配置文件jmeter.properties、build.xml 文件这些自己有去修改过的，还有 bin 目录下的 report-template 目录，

有修改过报告模板的，则使用复制黏贴，直接覆盖到新版本文件内，沿用旧版本配置。


6、测试一下，没问题就大功告成。


7、原文件打包压缩保存进 U 盘，万一需要回归则直接解压，改回原文件名，放进原路径下，即可直接使用。
``
",201,215,"zucker","2021-1-5",2);

# blogs(blog_title, blog_context, like_nums, comment_nums, creator, create_time, status)
