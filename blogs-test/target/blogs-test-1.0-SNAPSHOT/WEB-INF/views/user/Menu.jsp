<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); response.setCharacterEncoding("utf-8");%>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>

</head>


<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css">

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css">
<!-- CSS Files -->
<%--<link href="../assets/css/material-dashboard.min.css?v=2.2.2" rel="stylesheet" />--%>
<!-- CSS Just for demo purpose, don't include it in your project -->

<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 宇*</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/home">首页</a></li>
                <li class="active"><a href="#" >我的文章 </a></li>
                <li><a href="#">个人信息</a></li>

            </ul>
            <form class="navbar-form navbar-right" action="">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索" name="search">
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>

        </div>
    </div>
</nav>


<div id="main_content" >
    <div id="main" class="main">
        <div id="side_nav" class="side-left tab-bar" style="background: white">
            <!--<div class="container" >-->
            <!--    <div class="row" >-->
            <div class="col-xs-1" >
                <ul class="nav nav-pills nav-stacked" >
                    <li></li>
                    <li></li>
                    <br>
                    <li class="write"><a href="${pageContext.request.contextPath}/post/create">  <img src="${pageContext.request.contextPath}/static/css/images/writeblog.png"  height="20" />写博客</a></li>
                    <li class="draft"><a href="${pageContext.request.contextPath}/user/${username}/drafts">  <img src="${pageContext.request.contextPath}/static/css/images/draft.png"  height="20" />草稿箱</a></li>
                    <li><a href="#">资料修改</a></li>
                    <li><a href="#">我的收藏</a></li>
                    <li><a href="#">我的评论</a></li>
                    <li><a href="#">我的粉丝</a></li>
                    <li><a href="#">我的关注</a></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>

            <div class="col-md-8">
                <div id="content" >
                    <c:forEach items="${blogs_list}" var="c">
                        <ul class="list-group" >
                            <div class="list-group-item">
                                <a href="${pageContext.request.contextPath}/a/${c.blogId}" style="color:black">
                                    <h3 > ${c.blogTitle} </h3>
                                </a>
                                <h4 class="list-group-item-heading" style="color:black">${c.blogContext}</h4>
                                <a href="#" style="float: right">编辑</a>
                                <p  style="float: right;margin-right: 50px">
                                    &nbsp;评论量:&nbsp;${c.commentNums}:</p>
                            </div>
                        </ul>
                    </c:forEach>
                </div>
            </div>
            <div class="col-sm-3">
                <div id="content1" >
                    <div class="panel panel-default">
                        <div class="panel-heading"  style="background: floralwhite">
                            <h3 class="panel-title">个人简介</h3>
                        </div>
                        <div class="panel-body">
                            <p>昵称:${blogger.nickName}
                            <p>粉丝:${blogger.fans}
                            <p>关注:${blogger.favourite}
                            <p>园龄:${blogger.registerTime}
                            <p>邮箱:${blogger.email}
                        </div>

                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading"  style="background: floralwhite">
                            <h3 class="panel-title">最近的文章</h3>
                        </div>
                        <div class="panel-body">
                            <c:forEach var="c" items="${blog_recent}">
                                <li><a href="${pageContext.request.contextPath}/a/${c.blogId}">${c.blogTitle}</a></li>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</body>
</html>

