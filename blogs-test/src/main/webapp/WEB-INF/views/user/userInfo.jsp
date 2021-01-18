<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>个人信息</title>
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
            <a class="navbar-brand" style="margin-left: 30px" href="#">博 宇</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" ><a href="${pageContext.request.contextPath}/home">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/user/${username}">我的文章 </a></li>
                <li  class="active"><a href="${pageContext.request.contextPath}/user/Info" >个人信息</a></li>
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
                    <li ><a href="${pageContext.request.contextPath}/post/create"><img src="${pageContext.request.contextPath}/static/css/images/writeblog.png"  height="20" />写博客</a></li>
                    <li><a href="${pageContext.request.contextPath}/drafts"><img src="${pageContext.request.contextPath}/static/css/images/draft.png"  height="20" />草稿箱</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/editInfo">资料修改</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/myFavourite">我的收藏</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/myComments">我的评论</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/followed">我的粉丝</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/following">我的关注</a></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div style="margin-left: 100px" class="col-md-6" >
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">
            <h3 class="panel-title">基本信息</h3>
        </div>
        <div class="panel-body">
            <table class="table">
                <tr >
                    <th>用户名</th>
                    <td>${user.username}


                </tr>

                <tr >
                    <th>昵称</th>
                    <td>${user.nickName}
                    </td>

                </tr >
                <tr >
                    <th>园龄</th>
                    <td>${user.registerTime}</td>
                </tr>
                <tr >
                    <th>粉丝数</th>
                    <td>${user.fansNum}</td>
                </tr>
                <tr >
                    <th>关注数</th>
                    <td>${user.followersNum}</td>
                </tr>
                <tr >
                    <th>收藏数</th>
                    <td>${user.favouriteNum}</td>
                </tr>
                <tr >
                    <th>邮箱/e-mail</th>
                    <td>${user.email}</td>
                </tr>
                <tr >
                    <th>电话号码/Telephone</th>
                    <td>${user.telephone}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>