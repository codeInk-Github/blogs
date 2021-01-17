<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的收藏</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css" >
    <!-- 引入editormd样式文件 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
</head>
<body>
<!-- 构造form表单，以便提交数据-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 语*</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/home">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/user/${username}">我的文章 </a></li>
                <li><a href="${pageContext.request.contextPath}/user/Info">个人信息</a></li>

            </ul>
            <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索" name="search">
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>

        </div>
    </div>
</nav>
<div class="col-xs-1" >
    <ul class="nav nav-pills nav-stacked" >
        <li></li>
        <li></li>
        <br>
        <li ><a href="${pageContext.request.contextPath}/post/create"><img src="${pageContext.request.contextPath}/static/css/images/writeblog.png" height="20" />写博客</a></li>
        <li><a href="${pageContext.request.contextPath}/drafts"><img src="${pageContext.request.contextPath}/static/css/images/draft.png" height="20" />草稿箱</a></li>
        <li ><a href="${pageContext.request.contextPath}/user/editInfo">资料修改</a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/user/myFavourite">我的收藏</a></li>
        <li><a href="${pageContext.request.contextPath}/user/myComments">我的评论</a></li>
        <li><a href="${pageContext.request.contextPath}/user/followed">我的粉丝</a></li>
        <li><a href="${pageContext.request.contextPath}/user/following">我的关注</a></li>
        <li></li>
        <li></li>
    </ul>
</div>
<div class="col-md-8" style="margin-left: 100px">
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">
            我的收藏 <span style="float: right">共 ${user.favouriteNum} 篇</span>
        </div>
        <div class="panel-body">
            <table class="table">
                <tbody>
                <c:forEach var="c" items="${favourite_blogs}">
                    <tr>
                        <td>
                            <a href="${pageContext.request.contextPath}/a/${c.blogId}" target="_blank" >
                                ${c.blogTitle}
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
