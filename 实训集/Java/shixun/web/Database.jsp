<%-- 
    Document   : Datebean
    Created on : 2022-6-17, 20:18:59
    Author     : VOCALOID
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stuff Page！！</title>
    </head>
    <body>
        <h1>给默默肝的人一点掌声吧~</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver"); //Sign up to Drive it.
            String url = "jdbc:mysql://localhost:3306/db01"; // 此处可以修改要操作的数据库
            // 或者另一种写法 jdc:mysql//localhost:3306/db01?user=root&password=root
            Connection conn = DriverManager.getConnection(url, "root", "root");//get Connect obj
            if (conn != null) {
                out.println("(ｏ ‵-′)ノ”(ノ﹏<。)！<br/>——————————<br/>"); // Congratulations！
            }
            try {
                Statement st = conn.createStatement(); // Use it calling SQL to operate datebase
                ResultSet rs = st.executeQuery("SELECT * FROM stuff"); // 存执行结果 此处可以修改要执行的语句 大写以区分语言
                // CallableStatement cs = conn.prepareCall("{call All(*)}");
                while (rs.next()) {
                    out.println("「&nbsp&nbsp" + rs.getString(1));
                    out.println(rs.getString(2));
                    out.println(rs.getString(3) + "<br/>");
                }
                rs.close();
                st.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            // 本意是写在bean里 表示层交给servlet 让servlet调用它的.
            out.println("——————————<br/>");
        %>
    </body>
</html>
