<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <meta charset="utf-8">
    <title>管理员首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css">
</head>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>

<!-- CSS Files -->
<%--<link href="../assets/css/material-dashboard.min.css?v=2.2.2" rel="stylesheet" />--%>
<!-- CSS Just for demo purpose, don't include it in your project -->

<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 语 管 理*</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" class="active"><a href="${pageContext.request.contextPath}/admin/menu">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/admin/manageUsers" >用户管理 </a></li>
                <li><a href="${pageContext.request.contextPath}/admin/manageBlogs">博客管理</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/modifyInfo">个人信息</a></li>

            </ul>

            <form class="navbar-form navbar-collapse" role="search">
                <div class="form-group">
                    <input style="margin-left: 800px" type="text" class="form-control" placeholder="更多" name="search">
                </div>

                <button type="submit" class="btn btn-default">搜索</button>


            </form>
        </div>
    </div>
</nav>
<div class="col-md-8" style="margin-left: 100px">
    <div id="main_content">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators轮播指标 -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active">
                <li data-target="#carousel-example-generic" data-slide-to="1">
                <li data-target="#carousel-example-generic" data-slide-to="2">
            </ol>
            <!-- Wrapper for slides 轮播项目-->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="../static/css/images/pic1.png" alt="png">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="../static/css/images/pic2.png" alt="png">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="../static/css/images/pic3.png" alt="png">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br>
    <c:forEach var="c" items="${blogs_selection}">
        <ul class="list-group">

            <div class="list-group-item">
                <a href="${pageContext.request.contextPath}/a/${c.blogId}" style="color:black"><h3
                        class="list-group-item-heading" style="color:black">
                        ${c.blogTitle}</h3></a><span>${fn:substring(c.blogContext,0,30)}</span>...
                <p style="float: right;margin-right: 50px">
                    评论量:${c.commentNums}发表日期:${fn:substring(c.createTime,0,10)}</p>
            </div>
        </ul>
    </c:forEach>
</div>
</div>
</div>
</div>
<div class="col-sm-3">
    <div id="content">
        <div class="panel panel-default">
            <div class="panel-heading" style="background: floralwhite">
                <h3 class="panel-title">评论排行榜</h3>
            </div>
            <div class="panel-body">
                <c:forEach var="c" items="${blogs_comment}">
                    <li><a href="${pageContext.request.contextPath}/a/${c.blogId}">${c.blogTitle}</a></li>
                </c:forEach>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" style="background: floralwhite">
                <h3 class="panel-title">收藏排行榜</h3>
            </div>
            <div class="panel-body">
                <c:forEach var="c" items="${blogs_like}">
                    <li><a href="${pageContext.request.contextPath}/a/${c.blogId}">${c.blogTitle}</a></li>
                </c:forEach>
            </div>

        </div>
    </div>
</div>
</div>
</div>


</body>
</html>
