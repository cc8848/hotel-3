<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">

	 <meta name="viewport" content="width=device-width, initial-scale=1">
  
	
<title>员工登录</title>
</head>
<body>
	<center>
	<ul class="nav nav-pills">
			<li class="active"><a href="index.jsp">主页</a></li>
			<li><s:a href="login.jsp">用户登入</s:a></li>
			<li><a href="adminLogin.jsp">管理员登入</a></li>
			<li><a href="register.jsp">注册新用户</a></li>
		</ul>
				<div class="container">
	<div class="jumbotron">
		<h1>
			<font color="black">旅店员工登录页面!</font>
		</h1>
		<s:form action="workerService">
			<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-user"></span>   用户名
			</button>
             &nbsp
			<input name="worker.name" type="text" />
			  &nbsp
			<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-calendar"></span>   密码
			</button>
            &nbsp
			<input name="worker.password" type="password" />
			&nbsp
			
			<button type="submit" class="btn btn-default">  登入</button>		
		</s:form>
		<br>
		
	</center>
</body>
</html>