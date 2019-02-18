<%--
  Created by IntelliJ IDEA.
  User: DeleMing
  Date: 2018/3/20
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>登入页面</title>
</head>
<body>

<div>
   <form action="/login" method="post">
       账号：<input type="text" name="username" >
       密码：<input type="password" name="password" >
       <input type="submit" value="登录"><input type="reset" value="重置">
   </form>
</div>
</body>
</html>
