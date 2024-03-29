<%--
  Created by IntelliJ IDEA.
  User: zucker
  Date: 2021/1/17
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改信息</title>
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
<div style="margin-left: 200px" class="col-md-9">
    <div class="panel panel-default">
        <div class="panel-heading"  style="background: floralwhite">
            <h3 class="panel-title">修改信息</h3>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" role="form" action="#" style="margin-top: 20px;margin-left: 10px">
                <div class="form-group">
                    <label  class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="username" value="${user.username}" readonly>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="password"  value="${user.password}">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="nickName" value="${user.nickName}">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" name="email" value="${user.email}">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">电话号码</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="telephone" value="${user.telephone}">
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-sm-2 control-label">密保问题</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="question"  value="${user.question}">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">密保答案</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="answer" value="${user.answer}">
                    </div>
                </div>

                <input style="margin-left: 400px" type="button" id="btn-save-info" class="btn btn-info" value="保存">

            </form>
        </div>
    </div>
</div>
<script>
    $(function (){
        $("#btn-save-info").click(function (){
            console.log("${pageContext.request.contextPath}/admin/update/"+$('input[name=username]').val()+"/"
                +$('input[name=password]').val()+"/"
                +$('input[name=nickName]').val()+"/"+$('input[name=email]').val()+"/"
                +$('input[name=telephone]').val()+"/"+$('input[name=question]').val()+"/"
                +$('input[name=answer]').val())
            $.ajax({
                url:"${pageContext.request.contextPath}/admin/update/"+$('input[name=username]').val()+"/"
                    +$('input[name=password]').val()+"/"
                    +$('input[name=nickName]').val()+"/"+$('input[name=email]').val()+"/"
                    +$('input[name=telephone]').val()+"/"+$('input[name=question]').val()+"/"
                    +$('input[name=answer]').val(),
                dataType:"json",
                success:function (data){
                    if ("okdata.msg)
                    alert(url);
                    window.location.onload();
                }

            })
        })
    })
</script>
</body>
</html>
