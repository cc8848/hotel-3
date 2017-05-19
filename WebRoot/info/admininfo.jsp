<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/Hotel/js/bootstrap.min.js"></script>
		
<title>管理员管理首页</title>
</head>
<body>
	<center>
	<ul class="nav nav-pills">
			<li class="active"><a href="adminService!findAdmin">Home</a></li>
			<li><s:a href="/Hotel/authorityAdmin1/listUser!allConsumer">客户管理</s:a></li>
			<li><a href="/Hotel/authorityAdmin1/listHotel">酒店管理</a></li>
			<li><a href="/Hotel/authorityAdmin1/adminService!loginOut">退出</a></li>
			</ul>
			<div class="container">
	<div class="jumbotron">
		<h1>
			<font color="black">管理菜单</font>
			<button type="button" class="btn btn-default btn-lg">
			<br>
	<span class="glyphicon glyphicon-user"></span> <s:property value="#session.admin.aname"/>
</button>
		</h1>
		
	</center>
</body>
</html>