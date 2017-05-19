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
<title>房间列表</title>


</head>
<body>

	<center>
	
<ul class="nav nav-pills">
			<li class="active"><a href="index.jsp">主页</a></li>
			<li><s:a href="register.jsp">注册</s:a></li>
			<li><s:a href="login.jsp">登入</s:a></li>
		</ul>
		<div class="container">
			<div class="jumbotron">
			
		<h1>
		<font color="black">酒店列表</font>
		</h1>
		<hr>
		<div class="container">
			<div class="jumbotron">
		<table class="table table-bordered">
			<tr>
				<td>酒店序号</td>
				<td>酒店名</td>
				<td>城市</td>
				<td>地址</td>				
				<td>操作</td>
			 
			</tr>
			<s:iterator value="#session.list" id="hotel">
				<tr>
					<td><s:property value="#hotel.hid" /></td>
					<td><s:property value="#hotel.hname" /></td>
					<td><s:property value="#hotel.city" /></td>
					<td><s:property value="#hotel.hotelAddr" /></td>
					
					
					<td><s:a
							href="roomService?hotel.hid=%{#hotel.hid}">查看</s:a>
					</td>
					
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>
