<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<html>
<head>
    <title>搞错了 再来！</title>
</head>
<body>
英文异常提示:<%=exception.getMessage()%>
中文异常提示:<%=exception.getLocalizedMessage()%>
简述异常:<%=exception.toString()%>
异常位置及类型:<%=exception.printStackTrace()%>
</body>
</html>