<%--
  Created by IntelliJ IDEA.
  User: DC
  Date: 2018/9/15
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${path}/js/jquery-1.11.0.js"></script>
    <%--<script type="text/javascript">
        function getPath() {

        }
    </script>--%>
</head>
<body>
<form action="${path}/images/uploadImages"  method = "post" enctype = "multipart/form-data">
    选择图片：<input type="file" name = "file">
    <input type="submit" value="上传">
</form>

</body>
</html>
