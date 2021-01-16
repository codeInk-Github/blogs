<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); response.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" >
    <!-- 引入editormd样式文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/editor.md/css/editormd.css" >
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
    <script src="${pageContext.request.contextPath}/static/editor.md/editormd.js" ></script> </head>
<body>
<!-- 构造form表单，以便提交数据-->
<!-- 构造form表单，以便提交数据-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 宇*</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px" ><a href="#">首页</a></li>
                <li ><a href="#">我的文章 </a></li>
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
        <li class="active"><a href="${pageContext.request.contextPath}/post/create">写博客</a></li>
        <li><a href="#">草稿箱</a></li>
        <li ><a href="#">资料修改</a></li>
        <li><a href="#">我的收藏</a></li>
        <li><a href="#">我的评论</a></li>
        <li><a href="#">我的粉丝</a></li>
        <li><a href="#">我的关注</a></li>
        <li></li>
        <li></li>
    </ul>
</div>
<div class="col-md-11">
    <form>
        <div class="form-group" >

            <div class="col-xs-5">
                <input style="margin-left: 400px" type="text" class="form-control" name="blogTitle" id="blogTitle" placeholder="请输入标题">
            </div>
            <div class="col-md-6">
                <%--                <input style="margin-left: 400px"type="button" class="btn btn-info" value="发布" />--%>
                <button style="margin-left: 400px" type="button" class="btn btn-info" id="btn-blog-post">发布</button>
                <button type="button" class="btn btn-info" id="btn-blog-save">保存至草稿箱</button>
            </div>
        </div>

        <div id="test-editor" >
            <textarea id="blog-content" name="blog-content"style="display:none;">这是我首次使用</textarea>
        </div>


    </form>
</div>
</body>
<script>
    $(function() {
        var editor = editormd("test-editor", {
            height:'750px',
            syncScrolling : "single",
            emoji:true,
            //启动本地图片上传功能
            imageUpload: false,
            watch:true,
            imageFormats   : ["jpg", "jpeg", "gif", "png", "bmp", "webp","zip","rar"],
            path   : "../static/editor.md/lib/",
            imageUploadURL : "./upload.php",    //文件提交请求路径
            saveHTMLToTextarea : true,          //注意3：这个配置，方便post提交表单
            previewTheme : "lightblue",         //预览主题样式
        });
    })
    $(function (){
        $('#btn-blog-save').click(function (){
            if ("" === $('#blogTitle').val())
                alert("请输入标题")
            else{
                $.ajax({
                    url: "${pageContext.request.contextPath}/post/save",
                    type: "POST",
                    data: {
                        blog_content: $('#blog-content').val()

                    },
                    dataType : 'json',
                    success:function (data){
                        console.log("点击!!"+this.url+"       "+$('#blog-content').val());
                        alert("已保存至草稿箱!")
                        window.location.href='${pageContext.request.contextPath}/home'
                    },
                    error: function (er){
                        console.log("未成功"+this.url+"       "+$('#blog-content').val())
                    }
                })
            }

        })
        $('#btn-blog-post').click(function (){
            if ($('#blogTitle').val()==="")
                alert("请输入标题")
            else{
                $.ajax({
                    url: "${pageContext.request.contextPath}/post/post",
                    type: "POST",
                    data: {
                        blog_content: $('#blog-content').val(),
                        blog_title: $('#blogTitle').val()
                    },
                    dataType : 'json',
                    success:function (data){
                        console.log("点击!!"+this.url+"       "+$('#blog-content').val());
                        alert("已发布!")
                        window.location.href='${pageContext.request.contextPath}/home'

                    },
                    error: function (er){
                        console.log("未成功"+this.url+"       "+$('#blog-content').val())
                    }
                })
            }
        })
    })
    // function show(){
    //     val = document.getElementById("inp-content")
    //
    //     alert(val.value)
    // }
    // $('#btn-blog-save').click(function (){
    // $('#inp-content').val(editormd.getMarkdown())
    // alert($('#inp-content').val(editormd.getMarkdown())
    // )
    //     $('#blog-edit-form').submit()
    // });
    //     $('#btn-blog-save').click(function (){
    //     // $('#inp-content').val(editormd.getMarkdown())
    //     // alert($('#inp-content').val(editormd.getMarkdown())
    //     // )
    //     $('#blog-edit-form').submit()
    // })
</script>
</html>