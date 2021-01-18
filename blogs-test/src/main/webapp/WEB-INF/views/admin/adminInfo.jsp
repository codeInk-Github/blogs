<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/18
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理</title>
</head>
</head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css" >
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome-4.7.0/css/font-awesome.css"><!-- CSS Files -->
<%--<link href="../assets/css/material-dashboard.min.css?v=2.2.2" rel="stylesheet" />--%>
<!-- CSS Just for demo purpose, don't include it in your project -->
<body>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
        <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/admin/menu">首页</a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/admin/manageUsers" >用户管理 </a></li>
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



<div style="margin-left: 100px" class="col-md-8" >
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">
            <h3 class="panel-title">基本信息</h3>
        </div>
        <div class="panel-body">
            <table class="table">
                <tr >
                    <th>用户名</th>
                    <td>${admin.username}
                </tr>

                <tr >
                    <th>昵称</th>
                    <td>${admin.nickName}
                    </td>

                </tr >
                <tr >
                    <th>园龄</th>
                    <td>${admin.registerTime}</td>
                </tr>
                <tr >
                    <th>粉丝数</th>
                    <td>${user.fansNum}</td>
                </tr>
                <tr >
                    <th>关注数</th>
                    <td>${admin.followersNum}</td>
                </tr>
                <tr >
                    <th>收藏数</th>
                    <td>${admin.favouriteNum}</td>
                </tr>
                <tr >
                    <th>邮箱/e-mail</th>
                    <td>${admin.email}</td>
                </tr>
                <tr >
                    <th>电话号码/Telephone</th>
                    <td>${admin.telephone}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
