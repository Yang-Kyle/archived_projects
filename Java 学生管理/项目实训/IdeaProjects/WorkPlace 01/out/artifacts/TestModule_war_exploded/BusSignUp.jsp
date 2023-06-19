<%@ page contentType="text/html;charset=UTF-8" errorPage="Error.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8" http-equiv="X-UA-Compatible" name="viewport"
          content="width=device-width, initial-scale=1.0， IE=edge">
    <title>登记登记！</title>
    <%--    尽量挂CSS 不要在这里style了 不好维护容易瞎 会被人打死--%>
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
            position: relative;
            display: block;
            line-height: 55px;
            font-size: 40px;
            color: black;
            text-decoration: none;
        / / font-family: "黑体";
        }

        @font-face {
        // font-family: "xiyangyang";
        // src: url(./字体/ZCOOLKuaiLe-Regular.ttf);
        }
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
        <a href="BusIndex.jsp">校园一卡通·注册<br/><font size="1">点击返回至登录界面</font></a>
    </div>
</div>
<br/>
<h1 style="text-align:center">商家账号注册</h1>
<div class="nav">
    <blockquote class="style01">
        <form action="B00" method="get">
            <p><label for="un">账户: </label><input id="un" type="text" name="userName"/>
            </p>
            <p><label for="pw">密码: </label><input id="pw" type="text" name="password"/>
            </p>
            <p>&nbsp;&nbsp;&nbsp;<input type="submit" value="&nbsp;&nbsp;&nbsp;注&nbsp;册&nbsp;&nbsp;&nbsp;"/> &nbsp;
                <input type="reset" value="&nbsp;&nbsp;&nbsp;换号&nbsp;&nbsp;&nbsp;"/>
            </p>
        </form>
    </blockquote>
</div>
<%--<jsp:include page = "BackStage.jsp"/>--%>
<% response.setHeader("refresh", "240;URL=index.jsp");
// 防止停留时间过长 隐私泄露
%>
</body>
</html>