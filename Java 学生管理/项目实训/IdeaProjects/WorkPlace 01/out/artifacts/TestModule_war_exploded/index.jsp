<%--
组员：杨天硕 孙岩 檀磊 杨乃宸
交项目之前有些想要长谈小叙：菜狗已经尽了目前最大的认真态度共同孕育了它，能力却不给力，功能实现有些糙也少
此项目由我们组四人精心打造 以后我们会继续努力 真心期望有一天产品能够造福生活
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="Error.jsp" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8" http-equiv="X-UA-Compatible" name="viewport"
          content="width=device-width, initial-scale=1.0， IE=edge">
    <title>首页</title>
    <style>
        .nav {
        / / width: 1200 px;
        / / height: 50 px;
            position: relative;
            width: 300px;
            height: 1000px;
            margin: 0 auto;
            float: right;
        }

        #box {
            width: 1512px;
            height: 55px;
            background-image: -webkit-linear-gradient(left, rgb(0, 208, 212), rgb(158, 255, 164));
        }

        a {
            display: inline-block;
            line-height: 55px;
            font-size: 40px;
            color: black;
            text-decoration: none;
        / / font-family: "幼圆";
        }

        @font-face {
        // font-family: "xiyangyang";
        // src: url(./字体/ZCOOLKuaiLe-Regular.ttf);
        }

        /*
                .box3:hover {
                    background-color: rgb(0, 188, 212);
                }
                .box7:hover {
                    background-color: rgb(0, 188, 212);
                }
                .box11:hover {
                    background-color: rgb(0, 188, 212);
                }
        */
        body {
            background: url("https://user-images.githubusercontent.com/79508698/185726718-c42ce752-5aa3-493b-8b4d-37484a7f0263.jpg") center no-repeat;
            background-size: 100%
        }

        html {
            height: 100%
        }

        blockquote.style01 {
            font: 14px/20px italic Times, serif;
            padding: 8px;
            background-color: #faebbc;
            border-top: 1px solid #e1cc89;
            border-bottom: 1px solid #e1cc89;
            margin: 5px;
        / / background-image: url(images/openquote1.gif);
            background-position: top left;
            background-repeat: no-repeat;
            text-indent: 23px;
            text-align: center;
        }

        blockquote.style01 span {
            display: block;
        / / background-image: url(images/closequote1.gif);
            background-repeat: no-repeat;
            background-position: bottom right;
        }
    </style>
</head>
<body>


<div id="box">
    <div class="box">
        <a href="index.jsp">校园一卡通系统</a>
    </div>
</div>
<br/>
<%--标签库测试--%>
<jsp:useBean id="Person" class="Beans.Entity.StuMessage" scope="session"/>
<jsp:setProperty name="Person" property="*"/>
<jsp:getProperty property="userName" name="Person"/>
<c:out value="用户您好 欢迎您！"></c:out>
<h1 style="text-align:center">学生登录</h1>
<div class="nav">
    <blockquote class="style01">
        <form action="#" method="get">
            <%--                 页面测试 项目发布请改成POST！！！！！      --%>
            <p><label for="chooseId"> 身份选择:</label> <select id="chooseId" name="identity">
                <option value="student">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;俺是一名学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </option>
<%--                <option value="business">--%>
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;咱是一位商家&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                </option>--%>
<%--                <option value="root">--%>
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;爷是管理员！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                </option>--%>
            </select></p>

            <p><label for="un">账户: </label><input id="un" type="text" name="userName"/>
            </p>
            <p><label for="pw">密码: </label><input id="pw" type="text" name="password"/>
            </p>
            <p>&nbsp;&nbsp;&nbsp;<input style="display:inline-block" type="submit"
                                        value="&nbsp;登录&nbsp;"/>
                <a href="StuSignUp.jsp" style="display:inline-block">
                    <font style="color:blue;font-size:12px;display:inline-block">我还没号?>&nbsp;
                    </font>
                </a></p>
                <a href="BusIndex.jsp" style="display:inline-block">
                    <font style="color:blue;font-size:12px;display:inline-block">进入商家版界面>>&nbsp;
                    </font>
                </a>
        </form>

    </blockquote>
</div>

</body>
</html>