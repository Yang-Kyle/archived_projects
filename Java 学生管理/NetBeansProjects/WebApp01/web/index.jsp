<%@page language="java" contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Try to Create a Architecture of B/S Web App</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <jsp:useBean class="BeanPK.Bean01" id="B01" scope="application"/>
    <jsp:setProperty name="B01" property="user" value="B01.User value"/>
    <jsp:getProperty name="B01" property="user"/>
    <body><div>
            <% request.setCharacterEncoding("UTF-8");

            %>
            <h3>EL</h3>
            样式：\${} //获取隐式对象等值 自动转型
            <%-- JSP脚本：声明! 打印= 语句 --%>
            <h3>JSTL</h3>
            类型：x fn fmt sql（Java替）<br/>
            <c:out value="printed by Core:out!"></c:out>
            <c:if test="${0 != 0}">
            </c:if>
            <h3>动作</h3>
            <%--动态包含--%>
            <jsp:include page="Jump.jsp" flush="ture">
                <jsp:param name="JP" value="动作包含"/>
            </jsp:include>
            <%--请求转发--%>
            <%-- <jsp:forward page=""/> --%>
            <!-- <></jsp> <jsp/> -->
            <%@include file="Jump.jsp" %>
            指令包含不能传值

            <!-- send inputS to form action
            <form action="Submit" method="get">
            <input type="text" name="User" value="in" /><br/>
            <input type="submit" value="提交">
            </form>
            -->
            <h3>·内置对象</h3>
            <%/*
                request.getParameter("User");
                session.setAttribute("UserStore",User); @Submit
                String UserResults = (String) session.getAttribute("UserStore");
                out.println(UserResults); @Results.jsp
                 */
                out.newLine();//out.println()/flush()/close()/isAutoFlush()/getBufferSize()/getRemaing()
                out.println(session.getMaxInactiveInterval());
                out.println(session.getLastAccessedTime());//session.isNew()/getId()/getCreateTime()
                out.println(application.getServerInfo());//page用例：pageContext.getSession(); 
                out.close();
            %>
        </div></body>
</html>