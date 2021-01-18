<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css">
</head>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<!-- 构造form表单，以便提交数据-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 语 管 理*</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/admin/menu">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/admin/manageUsers" >用户管理 </a></li>
                <li><a href="${pageContext.request.contextPath}/admin/manageBlogs">博客管理</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/modifyInfo">个人信息</a></li>

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
<div class="col-md-10" style="margin-left: 100px">
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">用户列表</div>
    </div>
    <table class="table" style="margin-top: 30px">
        <tbody>
        <tr>
            <th>用户ID</th>
            <th style="width: 900px">昵称</th>
            <th >操作</th>
        </tr>
        <c:forEach var="c" items="${user_list}">
            <tr>
                <td>${c.username}</td>
                <td style="width: 900px"><a href="#" style="color: black">${c.nickName}</a></td>
                <td>
                    <a class="btn btn-default" href="${pageContext.request.contextPath}/admin/${c.username}/modifyInfo">修改信息</a> &nbsp;
                    <a class="btn btn-default" href="${pageContext.request.contextPath}/admin/${c.username}/delete">删除信息</a>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
