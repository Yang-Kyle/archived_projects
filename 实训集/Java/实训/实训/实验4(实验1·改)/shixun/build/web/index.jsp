<%-- 
    doc：杨乃宸上机index
    Author     : 101011901.191027.杨乃宸
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JEE YYDS!</h1>
        <form action="UserData" method="get">
            用户名称<input type="text" name="User" /><br/>
            登录密码<input type="password" name="Pass" />
            <input type="submit" value="上号">
        </form>
        <!-- 此处参考第二章P47和第四章P28 获取用户信息 -->
    </body>
</html>
