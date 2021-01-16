<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/16
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑博客</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="../assets/css/material-dashboard.min.css?v=2.2.2" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project --> </head>
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
                <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/user/${username}">我的文章 </a></li>
                <li><a href="#">个人信息</a></li>

            </ul>
            <form class="navbar-form navbar-right" action="/survey/querySurveyByTopic">
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
        <li ><a href="${pageContext.request.contextPath}/post/create"><img src="${pageContext.request.contextPath}/static/css/images/writeblog.png"  height="20" />写博客</a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/user/${username}/drafts"><img src="${pageContext.request.contextPath}/static/css/images/draft.png"  height="20" />草稿箱</a></li>
        <li ><a href="#">资料修改</a></li>
        <li><a href="#">我的收藏</a></li>
        <li><a href="#">我的评论</a></li>
        <li><a href="#">我的粉丝</a></li>
        <li><a href="#">我的关注</a></li>
        <li></li>
        <li></li>
    </ul>
</div>
<div style="margin-left: 90px" class="col-md-8" >
    <span  class="list-group-item " style="background: floralwhite">草稿箱</span>
    <c:forEach var="c" items="${drafts_list}">
        <ul class="list-group" >

            <div class="list-group-item">
                <a href="#" style="color:black"> <h3 class="list-group-item-heading" style="color:black">
                        ${c.blogTitle}</h3></a><span>${fn:substring(c.blogContext,0,30)}
                <button style="float: right">发布</button>
                 <button style="float: right">编辑</button>
                  <button style="float: right">删除</button>
            </span>

                <p style="float: right;margin-right: 100px">
                    发表日期:${c.createTime}</p>

            </div>
        </ul>
    </c:forEach>
</div>
</body>
</html>