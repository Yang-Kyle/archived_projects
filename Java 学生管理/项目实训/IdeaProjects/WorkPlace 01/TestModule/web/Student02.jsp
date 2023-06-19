<%-- 
    Document   : student2
    Created on : 2022-8-20, 22:01:11
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>充卡充卡! </title>
	</head>
	<style>
		body {
			background: url("https://user-images.githubusercontent.com/79508698/185726718-c42ce752-5aa3-493b-8b4d-37484a7f0263.jpg") center no-repeat;
			background-size: 100%
		}

		html {
			height: 100%
		}

		#box {
			width: 1800px;
			height: 40px;
			background-image: -webkit-linear-gradient(left, rgb(0, 208, 212), rgb(158, 255, 164));
			font-size: 15px;
			text-align: center;

		}

		.box1 {
			width: 52px;
			height: 40px;

			float: left;
		}

		.box2 {
			width: 67px;
			height: 40px;

			float: left;
		}

		.box3 {
			width: 88.51px;
			height: 40px;

			float: left;
		}

		.box4 {
			width: 82px;
			height: 40px;

			float: left;
		}

		.box5 {
			width: 52px;
			height: 40px;

			float: left;
		}

		.box6 {
			width: 82px;
			height: 40px;

			float: left;
		}

		.box7 {
			width: 82px;
			height: 40px;

			float: left;
		}

		.box8 {
			width: 82px;
			height: 40px;

			float: left;
		}

		.box9 {
			width: 82px;
			height: 40px;

			float: left;
		}

		.box10 {
			width: 67px;
			height: 40px;

			float: left;
		}

		.box11 {
			width: 67px;
			height: 40px;

			float: left;
		}

		a {
			position: relative;
			display: block;
			height: 40px;
			line-height: 40px;
			font-size: 15px;
			color: white;
			text-decoration: none;
			font-family: "xiyangyang";
		}

		.ww {
			font-family: "xiyangyang";
			color: white;

		}

		@font-face {
			font-family: "xiyangyang";
		}

		.box3:hover {
			background-color: rgb(0, 188, 212);
		}

		.box7:hover {
			background-color: rgb(0, 188, 212);
		}

		.box11:hover {
			background-color: rgb(0, 188, 212);
		}
	</style>
	<body>
		<div id="box">
			<div class="box1">
				<a href="#" class="ww">&nbsp;&nbsp;</a>
			</div>
			<div class="box2">
				<a href="#" class="ww">&nbsp;&nbsp;</a>
			</div>
			<<div class="box3">
				<a href="Student01.jsp">信息填改</a>
		</div>
		<div class="box4">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box5">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box6">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box7">
			<a href="Student02.jsp">余额查询</a>
		</div>
		<div class="box8">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box9">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box10">
			<a href="#">&nbsp;&nbsp;</a>
		</div>
		<div class="box11">
			<a href="Student03.jsp">申请补办</a>
		</div>
		</div>
		<br />
		<h1><a href="index.jsp">返回^</a></h1>
		<br/><br/><br/><hr />
		<center>
			<font size="8">
		<table>
			<caption>支付记录</caption>
			<tr>
			<th>&nbsp;充值&nbsp;</th>
			<th>&nbsp;付款&nbsp;</th>
			</tr>
		</table>
		</font>
		</center>
	</body>
</html>
