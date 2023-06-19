<%-- 
    Document   : Question
    Created on : 2022-6-16, 22:02:13
    Author     : VOCALOID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>结果公布</title>
    </head>
    <body>
        <h1>以下为您的所选答案</h1>
        <%
        out.println(request.getParameter("ques01")+"<br/>"+request.getParameter("ques02")+"<br/>"+request.getParameter("ques03")+"<br/>");
        out.newLine();
        out.println(request.getParameter("ques04")+"<br/>"+request.getParameter("ques05"));
        %>
    <c:out value=${request.getParameter("ques01")}></c:out><br/>
        <c:out value=${request.getParameter("ques02")}></c:out><br/>
        <c:out value=${request.getParameter("ques03")}></c:out><br/>
        <c:out value=${request.getParameter("ques04")}></c:out><br/>
        <c:out value=${request.getParameter("ques05")}></c:out>
    </body>
</html>
