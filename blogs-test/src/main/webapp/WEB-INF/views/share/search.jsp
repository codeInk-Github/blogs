<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>博语</title>
</head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css" >
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css"><!-- CSS Files -->
<%--<link href="../assets/css/material-dashboard.min.css?v=2.2.2" rel="stylesheet" />--%>
<!-- CSS Just for demo purpose, don't include it in your project -->
<body>

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
                <li  class="active"><a href="${pageContext.request.contextPath}/user/Info" >个人信息</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索" name="search">
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>

        </div>
    </div>
</nav>
<div class="col-md-10" style="margin-left: 100px">
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">搜索结果</div>
    </div>
    <table class="table" style="margin-top: 30px">
        <tbody>
        <c:forEach var="c" items="${blogs_searched}">
            <tr>
                <td style="width: 800px"><a href="${pageContext.request.contextPath}/a/${c.blogId}" ><h3 style="color: black">${c.blogTitle}</h3></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
