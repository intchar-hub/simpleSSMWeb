<%--
  Created by IntelliJ IDEA.
  User: 寇笑宇，李耀港
  Date: 2020/7/25
  Time: 3.20
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>高校学者发现系统  注册</title>
    <link rel="icon" href="static/image/favicon.ico" type="image/ico">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <style type="text/css">
        *{ margin: 0; padding: 0; font-family: "微软雅黑";}
        .pos-rel{ position: relative;}
        html{ background: url("images/4.jpg") center no-repeat; width: 100%; height: 100%; min-width: 1200px;}
        img{ max-width: 100%;}
        .login-bg{ position: absolute; left: 0; top: 50%; margin-top: -180px; width: 100%; min-width: 1200px; height: 360px; background-color: rgba(255,255,255,.78);}
        .contater{ width: 1200px; margin: auto;}
        .login{ float: right; margin-right: 10%;  height: 360px; overflow: hidden; /*background-color: #7c7c7c;*/ background-color: #f0eff4; padding: 30px;}
        .login h4{text-align: center; color: #007cc6; font-weight: bolder; font-size: 26px; margin-bottom: 30px;}
        .form-group label{ padding-right: 0; text-align: left !important; color: #4e97d9; font-size: 16px; font-weight: normal;}
        .form-group input{ height: 40px;/* line-height: 40px;*/}
        .form-horizontal{ margin: 20px 0;}
        .form-horizontal button.btn-default, .form-horizontal button.btn-default:focus{ padding: 10px !important; border-radius: 0; background-color: #4e97d9; border: 0; color: white; font-size: 18px; outline: none; margin-top: 30px;}
        .logo{ float: right; /* height: 150px;*/ text-align: center; margin-top: 8%; margin-right: 30px;}
        .logo h2{ font-size: 30px; font-weight: bolder; color: #007cc6;}
        .logo img{}
        #js_verify_refresh{ position: absolute; right: 20px; top: 5px;width: 60px;height: 30px;}

        .form-group .form-control:focus{ border-color:#007cc6;}
    </style>
    <script type="text/javascript">
        $(function(){
            //点击登陆
            $("#submit-btn").bind("click", function() {
                $(this).html("登陆中...");
            });
            //刷新验证码
            $("#js_verify_refresh").bind("click", function(){
                $(this).attr("src", "/Public/verify?"+Math.random());
            });
        });
    </script>
</head>
<body>
<div class="login-bg">
    <div class="contater">
        <div class="login row">
            <h4>请注册</h4>
            <form class="form-horizontal" role="form" accept-charset="utf-8" method="post" action="${pageContext.request.contextPath}/register" id="form_regist">
                <div class="form-group">
                    <label class="col-xs-3 control-label">账&nbsp;&nbsp;&nbsp;号</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="username" id="username" placeholder="请输入账号">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3 control-label">密&nbsp;&nbsp;&nbsp;码</label>
                    <div class="col-xs-9">
                        <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
                    </div>
                </div>
                <button class="btn btn-default btn-block" type="submit" id="submit-btn">立即注册</button>
            </form>
        </div>
        <div style="font-size:20px;color: #d43f3a"><span>${error_msg}</span></div>
        <div class="logo">
            <img src="images/logo.png">
            <h2>学者发现系统</h2>
        </div>
    </div>
</div>

</body>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>
