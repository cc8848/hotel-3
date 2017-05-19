<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Hotel/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/Hotel/js/bootstrap.min.js"></script>
<link href="/Hotel/time/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all"
	href="/Hotel/time/daterangepicker-bs3.css" />
<script type="text/javascript" src="/Hotel/time/moment.js"></script>
<script type="text/javascript" src="/Hotel/time/daterangepicker.js"></script>
<title>首页</title>
</head>

<body background="img/5.jpg">
	<div class="container">

		<h1>
			<font size="7">旅店预定系统主页</font>
		</h1>
		<p>
			<font size="5">比梦想走更远</font>
		</p>
		<br> <br>
	</div>
	<center>

		<s:form id="form" action="hotelService!findHotelbyname2" method="post">
			<font size="5" color="white">城市名：</font>
			<input name="hotel.city" type="text" />
	&nbsp
	<font size="5" color="white">酒店名：</font>
			<input name="hotel.hname" type="text" />
	&nbsp
	
   <button type="submit" class="btn btn-default btn-lg">开始搜索</button>
		</s:form>
		<br>
		<hr>
		<s:a href="login.jsp">
			<font size="5" color="white">用户登录</font>
		</s:a>
		<s:a href="adminLogin.jsp">
			<font size="5" color="white">管理员登录</font>
		</s:a>
		<s:a href="workerLogin.jsp">
			<font size="5" color="white">员工登录</font>
		</s:a>
		<s:a href="register.jsp">
			<font size="5" color="white">新注册用户</font>
		</s:a>
	</center>
</body>
</html>