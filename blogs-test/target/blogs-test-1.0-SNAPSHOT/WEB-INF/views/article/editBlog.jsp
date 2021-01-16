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
    <link rel="stylesheet" href="../static/editor.md/css/editormd.css" >
    <script src="../static/js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" ></script>
    <script src="../static/editor.md/editormd.js" ></script> </head>
<body>
<!-- 构造form表单，以便提交数据-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" style="margin-left: 30px" href="#">*博 宇*</a >
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li style="margin-left: 50px"class="active"><a href="#">首页</a></li>
            </ul>

            <form class="navbar-form navbar-left" role="search">

                <div class="form-group">
                    <input style="margin-left: 900px"type="text" class="form-control" placeholder="更多" name="search">
                </div>

                <button type="submit"  class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav">
                <li style="margin-left: 20px"><a href="login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <form id="blog-edit-form" >
<%--    <form id="blog-edit-form" action="${pageContext.request.contextPath}/post/save">--%>
       <input type="button" id="btn-blog-save" >
        <div id="test-editor">
            <textarea id="blog-content" name="blog-content" style="display:none;">这是我首次使用</textarea>
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
            $.ajax({
                url: "${pageContext.request.contextPath}/post/savedd",
                type: "POST",
                data: {
                    blog_content: $('#blog-content').val()
                },
                dataType : 'json',
                success:function (data){
                    console.log("点击!!"+this.url+"       "+$('#blog-content').val());
                },
                error: function (er){
                    console.log("未成功"+this.url+"       "+$('#blog-content').val())
                }
            })
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