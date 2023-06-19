<%-- 
    Document   : Test
    Created on : 2022-6-16, 21:15:01
    Author     : VOCALOID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>试炼 答对奖励大嘴巴子</title>
    </head>
    <body>
        <!DOCTYPE html>
                <!--简单代替CSS-->
		<style>#btn{background-color: #39C5BB;}body{background-color: #89BEB2}</style>
	</head>
	<body>
		<div class="index">
			<h1>Java趣味问卷</h1>
			<form method="post" action="Question.jsp">
				<ol>
					<li>Java是什么？</li>
					<label><input type="radio" name="ques01" value="Bird"/>&nbsp;&nbsp;鸟语&nbsp;&nbsp; </label><br />
					<label><input type="radio" name="ques01" value="Caffe"/>&nbsp;&nbsp;咖啡&nbsp;&nbsp; </label><br />
					<label><input type="radio" name="ques01" value="ProgramLang"/>&nbsp;&nbsp;编程语言&nbsp;&nbsp; </label><br />
					<label><input type="radio" name="ques01"value="Search"/>&nbsp;&nbsp;百度一下&nbsp;&nbsp; </label><br />
					<li>什么类可以省事？</li>
					<label><input type="checkbox" name="ques02" value="abstract"/>抽象类</label><br />
					<label><input type="checkbox" name="ques02" value="hidden"/>匿名类</label><br />
					<label><input type="checkbox" name="ques02" value="father"/>父类</label><br />
					<label><input type="checkbox" name="ques02" value="Others"/>别人写好的类</label><br />
                                        <li>以下哪个是Java IDE？</li>
					<label><input type="checkbox" name="ques03" value="bilibili"/>Bilibili</label><br />
					<label><input type="checkbox" name="ques03" value="niconico"/>Niconico</label><br />
					<label><input type="checkbox" name="ques03" value="game"/>王者荣耀</label><br />
					<label><input type="checkbox" name="ques03" value="Netbeans" />Netbeans</label><br />
                                        <li>如何学习Java</li>
					<label><input type="checkbox" name="ques04" value="exercise"/>唯手熟尔</label><br />
					<label><input type="checkbox" name="ques04" value="thinking"/>多思考多提问</label><br />
					<label><input type="checkbox" name="ques04" value="practice"/>刷题搬轮子</label><br />
					<label><input type="checkbox" name="ques04" value="DonotStudey"/>不学</label><br />
                                        <li>初学Java需要配置那些环境变量？</li>
					<label><input type="checkbox" name="ques05" value="classpath"/>CLASSPATH</label><br />
					<label><input type="checkbox" name="ques05" value="path"/>PATH</label><br />
					<label><input type="checkbox" name="ques05" value="javahome"/>JAVA_HOME</label><br />
					<label><input type="checkbox" name="ques05" value="help"/>找人帮我</label><br />
				</ol>
                                <textarea rows="10"cols="30">答错了就让Java自动把你回收了</textarea>
				<button id="btn" type="submit">答完了</button>
				
			</form>
		</div>
    </body>
</html>
