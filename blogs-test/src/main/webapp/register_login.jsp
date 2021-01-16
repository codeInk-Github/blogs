<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>欢迎使用问卷小猩</title>
    <link rel="icon" type="image/x-icon" href="./img/logo.png" />
<%--    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
    <style type="text/css">

        /*@import url('img');*/
        /*html {*/
        /*    background-image: url("");*/
        /*}*/
        body{
            font-family: 'Mukta', sans-serif;
            height:100vh;
            min-height:550px;
            background-image: url("static/img/back.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position:center;
            position:relative;
            overflow-y: hidden;
        }
        a{
            text-decoration:none;
            color:#444444;
        }
        .login-reg-panel{
            position: relative;
            top: 50%;
            transform: translateY(-50%);
            text-align:center;
            width:70%;
            right:0;left:0;
            margin:auto;
            height:400px;
            background-color: rgb(43, 43, 43);
        }
        .white-panel{
            background-color: rgba(255,255, 255, 1);
            height:500px;
            position:absolute;
            top:-50px;
            width:50%;
            right:calc(50% - 50px);
            transition:.3s ease-in-out;
            z-index:0;
            box-shadow: 0 0 15px 9px #00000096;
        }
        .login-reg-panel input[type="radio"]{
            position:relative;
            display:none;
        }
        .login-reg-panel{
            color:#B8B8B8;
        }
        .login-reg-panel #label-login,
        .login-reg-panel #label-register{
            border:1px solid #9E9E9E;
            padding:5px 5px;
            width:150px;
            display:block;
            text-align:center;
            border-radius:10px;
            cursor:pointer;
            font-weight: 600;
            font-size: 18px;
        }
        .login-info-box{
            width:30%;
            padding:0 50px;
            top:20%;
            left:0;
            position:absolute;
            text-align:left;
        }
        .register-info-box{
            width:30%;
            padding:0 50px;
            top:20%;
            right:0;
            position:absolute;
            text-align:left;

        }
        .right-log{right:50px !important;}

        .login-show,
        .register-show{
            z-index: 1;
            display:none;
            opacity:0;
            transition:0.3s ease-in-out;
            color:#242424;
            text-align:left;
            padding:50px;
        }
        .show-log-panel{
            display:block;
            opacity:0.9;
        }
        .login-show input[type="text"], .login-show input[type="password"]{
            width: 100%;
            display: block;
            margin:20px 0;
            padding: 15px;
            border: 1px solid #b5b5b5;
            outline: none;
        }
        .login-show input[type="button"] {
            max-width: 150px;
            width: 100%;
            background: #444444;
            color: #f9f9f9;
            border: none;
            padding: 10px;
            text-transform: uppercase;
            border-radius: 2px;
            float:right;
            cursor:pointer;
        }
        .login-show a{
            display:inline-block;
            padding:10px 0;
        }

        .register-show input[type="text"], .register-show input[type="password"]{
            width: 100%;
            display: block;
            margin:20px 0;
            padding: 15px;
            border: 1px solid #b5b5b5;
            outline: none;
        }
        .register-show input[type="button"] {
            max-width: 150px;
            width: 100%;
            background: #444444;
            color: #f9f9f9;
            border: none;
            padding: 10px;
            text-transform: uppercase;
            border-radius: 2px;
            float:right;
            cursor:pointer;
        }
        .credit {
            position:absolute;
            bottom:10px;
            left:10px;
            color: #3B3B25;
            margin: 0;
            padding: 0;
            font-family: Arial,sans-serif;
            text-transform: uppercase;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            z-index: 99;
        }
        a{
            text-decoration:none;
            color:#2c7715;
        }

        .invalid:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: red;
            opacity: 1;
        }
        .invalid::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: red;
            opacity: 1;
        }
        input.invalid:-ms-input-placeholder{
            color: red;
        }
        input.invalid::-webkit-input-placeholder {
            color: red;
        }
    </style>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="login-reg-panel">
    <div class="login-info-box">
        <h2>已拥有账号？</h2>
        <p>点击下方立刻登录账号</p>
        <label id="label-register" for="log-reg-show">Login</label>
        <input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
    </div>

    <div class="register-info-box">
        <h2>还没有账号?</h2>
        <p>点击下方立刻注册账号</p>
        <label id="label-login" for="log-login-show">注册</label>
        <input type="radio" name="active-log-panel" id="log-login-show">
    </div>

    <div class="white-panel">
        <div class="login-show">
            <form id="login_form" action="${pageContext.request.contextPath}/user/login" method="post">
                <h2>登录</h2>
                <input type="text" id="loginUsername" name="username" placeholder="请输入用户名" required>
                <input type="password" id="loginPassword" name="password" placeholder="请输入密码" required>
                <input type="button" id="login_btn" value="Login">
                <a href="${pageContext.request.contextPath}/user/forget">Forgot password?</a>
            </form>
        </div>
        <div class="register-show">
            <form id="register_form" action="${pageContext.request.contextPath}/user/register">
                <h2>注册</h2>
                <input type="text" id="regUsername" name="username" placeholder="请输入用户名" required>
                <input type="password" id="regPassfirst" name="password" placeholder="请输入密码" required>
                <input type="password" id="regPasssecond" name="password" placeholder="请重复输入密码" required>
                <input type="text" id="regQuestion" name="question" placeholder="请输入密保问题" required>
                <input type="text" id="regAnswer" name="answer" placeholder="请输入密保答案" required>
                <input type="button" id="register_btn" value="Register">
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $("input[name]").focusout(function(e){
        if($(this).attr('name')==='username'){
            $(this).attr('placeholder','请输入用户名')
            $(this).attr("class","invalid");
        }else if($(this).attr('name')==='password'){
            $(this).attr("class","invalid");
        }else if($("#regPassfirst").attr('value')!==("#regPassseconnd").attr('value')){
            window.alert("两次密码不一致");

        }
    });
    $(function (){
        $("#login_btn").click(function (){
            if(document.getElementById("loginUsername").value.length<3 || document.getElementById("loginPassword").value.length>16){
                alert("用户名不符合规范");
            }else{
                //使用form对象的submit()方法，实现提交。
                $("#login_form").submit();
            }
        });
    });
    $(function (){
        $("#register_btn").click(function (){
            if(document.getElementById("regUsername").value.length<3||document.getElementById("regUsername").value.length>16){
                window.alert("用户名长度必须介于2-16个字符之间！");
            }
        else if(document.getElementById("regPassfirst").value.length<6||document.getElementById("regPassfirst").value.length>16){
                window.alert("密码长度必须介于6-16个字符之间！");
            }
            else if(document.getElementById("regPassfirst").value!==document.getElementById("regPasssecond").value){
                window.alert("两次密码不一致");
            }
            else{
                //使用form对象的submit()方法，实现提交。
                $("#register_form").submit();
            }
        });
    });
    $(document).ready(function(){
        $('.login-info-box').fadeOut();
        $('.login-show').addClass('show-log-panel');
    });


    $('.login-reg-panel input[type="radio"]').on('change', function() {
        if($('#log-login-show').is(':checked')) {
            $('.register-info-box').fadeOut();
            $('.login-info-box').fadeIn();

            $('.white-panel').addClass('right-log');
            $('.register-show').addClass('show-log-panel');
            $('.login-show').removeClass('show-log-panel');

        }
        else if($('#log-reg-show').is(':checked')) {
            $('.register-info-box').fadeIn();
            $('.login-info-box').fadeOut();

            $('.white-panel').removeClass('right-log');

            $('.login-show').addClass('show-log-panel');
            $('.register-show').removeClass('show-log-panel');
        }
    });

</script>
</body>
</html>
