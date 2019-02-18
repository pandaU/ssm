<%--
  Created by IntelliJ IDEA.
  User: DC
  Date: 2018/9/6
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
<html>
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
   <%-- <script type="text/javascript">
        function check() {
            var title = document.getElementById("title").value;
            var summary = document.getElementById("summary").value;
            var content = document.getElementById("content").value;
            if(title.indexOf("<")>0||title.indexOf(">")>0){
                alert("标题中禁止非法符号的输入！");
                return false;
            }else if(summary.indexOf("<")>0||summary.indexOf(">")>0){
                alert("摘要中禁止非法符号的输入！");
                return false;
            }else if(content.indexOf("<")>0||content.indexOf(">")>0){
                alert("内容中禁止非法符号的输入！");
                return false;
            }else {
              return true;
            }
        }
    </script>--%>
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
            <form class="am-form tpl-form-line-form" action="${path}/blog/addBlog" method="post" onsubmit="return check()">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="title" name="title" placeholder="请输入文章标题">
                </div>

                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="summary" name="summary" placeholder="请输入文章简介">
                </div>

                <div class="am-form-group">
                    <textarea class="tpl-form-input" name="content" id="content" cols="30" rows="10" placeholder="请确认文章内容"></textarea>
                </div>

                <c:forEach var="listtype" items="${listtype}">
                <div class="am-form-group">
                        <input type="radio" name="keyword" value="${listtype.keyword}"
                        class="tpl-form-input" >${listtype.keyword}
                </div>
                </c:forEach>

                <div class="am-form-group tpl-login-remember-me">
                    <%--<input id="remember-me" type="checkbox">--%>
                    <%-- <label for="remember-me">
                         记住密码
                     </label>--%>
                </div>
                <div class="am-form-group">
                    <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    <label>返回<a href="${path}/blog/showAllBlog">首页</a></label>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${path}/js/assets/amazeui.min.js"></script>
<script src="${path}/js/assets/app.js"></script>

</body>
</html>