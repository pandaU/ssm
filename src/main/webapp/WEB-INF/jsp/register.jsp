<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
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
    <script>
        function check_tow() {
            if(document.getElementById("user-name").value==null||
                document.getElementById("user-name").value==""){
                alert("用户名不能为空！");
                return false;
            }else if(document.getElementById("password").value!=
                document.getElementById("password_agin").value) {
                alert("两次输入的新密码不一致！");
                return false;
            }else if(document.getElementById("password").value.length<6){
                alert("密码必须大于等于6位！");
                return false;
            }
            else if(document.getElementById("password_agin").value==null
                ||document.getElementById("password_agin").value==""){
                alert("请输入新密码！");
                return false;
            }else if(document.getElementById("phone").value.length!=11){
                alert("请输入11位电话号码！");
                return false;
            }else if(!(/^1(3\d|47|(5[0-3|5-9])|(7[0|7|8])|(8[0-3|5-9]))-?\d{4}-?\d{4}$/.test(document.getElementById("phone").value))){
                alert("请输入正确的电话号码！");
                return false;
            }
            else {
                return true;
            }

        }
    </script>
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
        <div class="tpl-login-content">
            <div class="tpl-login-logo">
            </div>
            <form class="am-form tpl-form-line-form" action="${path}/user/addInfo" method="post" onsubmit="return check_tow()">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="user-name" name="username" placeholder="请输入用户名">
                    ${msg}
                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="password" name="password" placeholder="请输入密码">
                </div>

                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="password_agin" name="password_agin" placeholder="请确认密码">
                </div>

                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="phone" name="phone" placeholder="请输入电话">
                </div>
                <div class="am-form-group">
                    <input type="email" class="tpl-form-input" id="email" name="email" placeholder="请输入email">
                </div>
                <div class="am-form-group tpl-login-remember-me">
                    <%--<input id="remember-me" type="checkbox">--%>
                    <%-- <label for="remember-me">
                         记住密码
                     </label>--%>
                </div>
                <div class="am-form-group">
                    <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    <label>已有账号，去<a href="${path}/login">登陆</a></label>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${path}/js/assets/amazeui.min.js"></script>
<script src="${path}/js/assets/app.js"></script>

</body>

</html>
