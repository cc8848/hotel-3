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
	
<title>员工管理首页</title>
</head>
<body>
	<center>
	<ul class="nav nav-pills">
			<li class="active"><a href="workerService!findWorker">Home</a></li>
			<li><s:a href="/Hotel/authorityAdmin/listOrder">订单管理</s:a></li>
			<li><s:a href="/Hotel/authorityAdmin/workerService!loginOut">退出</s:a></li>
			
			</ul>
			<div class="container">
	<div class="jumbotron">
		<h1>		
			员工界面
			<button type="button" class="btn btn-default btn-lg">
	<span class="glyphicon glyphicon-user"></span> <s:property value="#session.worker.name"/>
</button>
		</h1>
			<p><a class="btn btn-primary btn-lg" role="button">
			所属酒店：
		<s:property value="#session.hotels.hname"/></a>
		</p>
		<p>
							酒店描述：
                 <s:property value="#session.hotels.description" />
							</p>
	
		
		<br>
	</center>
</body>
</html>