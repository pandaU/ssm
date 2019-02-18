<%--
  Created by IntelliJ IDEA.
  User: DeleMing
  Date: 2018/9/3
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${path}/image/assets/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${path}/image/assets/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${path}/css/assets/amazeui.min.css" />
    <link rel="stylesheet" href="${path}/css/assets/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${path}/css/assets/app.css">
    <script src="${path}/js/assets/jquery.min.js"></script>

</head>

<body data-type="login">
<script src="${path}/js/assets/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <div class="tpl-login">
        <div class="tpl-login-content" \>
            <div class="tpl-login-logo">
            </div>

            <form class="am-form tpl-form-line-form" action="/user/userLogin" method="post">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="user-name" name="username" placeholder="请输入账号">
                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="user-name2" name="password" placeholder="请输入密码">

                </div>
                <div class="am-form-group tpl-login-remember-me">
                    <%--<input id="remember-me" type="checkbox">
                    <label for="remember-me">--%>
                    ${msg}
                    </label>

                </div>






                <div class="am-form-group">
                    <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    <label>
                        <a href="${path}/register">注册</a>
                    </label>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${path}/js/assets/amazeui.min.js"></script>
<script src="${path}/js/assets/app.js"></script>

<script>

</script>
</body>

</html>