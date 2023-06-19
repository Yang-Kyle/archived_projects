<%--
  User: Tanlei
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="Error.jsp" %>
<html>
<head>
    <title>root！便是👴的权限！</title>
    <style>
        * {
            margin: 0 auto;
            padding: 0;
        }

        .nav {
            width: 1200px;
            height: 50px;
        }

        ul li {
            list-style: none;
        }

        ul a {
            text-decoration: none;
        }

        ul li {
            float: left;
            width: 100px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: #7fbfff;
            font-size: 20px;
        }

        ul li ul li {
            display: none;
        }

        ul li:hover ul li {
            display: block;
        }

        ul li:hover {
            background-color: #39C5BB;
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

        }

        blockquote.style01 span {
            display: block;

        / / background-image: url(images/closequote1.gif);

            background-repeat: no-repeat;

            background-position: bottom right;

        }

        body {
            background: url("https://user-images.githubusercontent.com/79508698/185726718-c42ce752-5aa3-493b-8b4d-37484a7f0263.jpg") center no-repeat;
            background-size: 100%
        }

        html {
            height: 100%
        }

        #dibu {
            background-color: #cbd3b3;
        }

        #cool {
            background-image: linear-gradient(135deg, #1fa2ff, #12d8fa, #a6ffcb);
        }

        a {
            text-decoration: none
        }
    </style>
</head>
<body>
<!-- 导航栏 -->
<div class="nav">
    <div id="cool">
        <h1>

            <span style="color:white; text-align: center;"><a><span>明德专用 <br/> DBMS( •̀ ω •́ )y</span></a></span>

            <blockquote class="style01">
                <form action="" method="get" align="right">
                    <p>账户: <input type="text" name="username"/></p>
                    <p>密码: <input type="text" name="password"/></p>
                    <br/>
                    <p><input type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;注册 / 登录&nbsp;&nbsp;&nbsp;&nbsp;"/>
                        &nbsp;&nbsp;
                    </p>
                </form>
            </blockquote>
        </h1>
    </div>
    <br/>
    <h1></h1>
    <h1><a href="index.jsp">主◀<br/>页</a></h1>
    <div>
        <br/>
        <br/><br/>
        <div style="text-align: center;">
            <ul>
                <li><a href="Student.jsp">学生信息</a>
                    <ul>
                        <li><a href="Student01.jsp">信息填改</a></li>
                        <li><a href="Student02.jsp">余额查询</a></li>
                        <li><a href="Student03.jsp">补办记录</a></li>
                    </ul>
                </li>
                <li><a href="Business.jsp">商家记录</a>
                    <ul>
                        <li><a href="Business01.jsp">信息填改</a></li>
                        <li><a href="Business02.jsp">明细概览</a></li>
                        <li><a href="Business03.jsp">入驻商家</a></li>
                    </ul>
                </li>
                <li><a href="#">管理员</a>
                    <ul>
                        <li><a href="#">公开信息</a></li>
                        <li><a href="#">受理系统</a></li>
                    </ul>
                </li>
                <li><a href="#">网页实现</a>
                    <ul>
                        <li><a href="#">相关技术</a></li>
                        <li><a href="#">开发人员</a></li>
                        <li><a href="#">网站使用</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div>
        <div style="text-align: center;">
            <h6>明德学院一卡通系统服务平台</h6>
            <h6 id="dibu">Presented by Mingde</h6>
        </div>
    </div>
    <hr/>
</div>
<iframe
        style="border: none; z-index: 2147483647; height: 31px; width: 23px; position: fixed; right: 0; top: 50%; margin: -15px 0 0; background-color: rgba(0, 0, 0, 0.15); transform: translate(12px, 0px); transition: all 0.3s linear 0s;"></iframe>
<iframe
        style="border: none; z-index: 2147483647; height: 100%; width: 300px; position: fixed; left: 100%; top: 0; background-color: rgba(0, 0, 0, 0.5); transition: all 0.3s ease 0s;"></iframe>
</body>
</html>