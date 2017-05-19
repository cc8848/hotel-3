<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">   
		<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="css/bootstrap.min.js"></script>
<title>管理留言信息</title>

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
			留言信息
		</h1>
		<s:iterator value="#session.hotels" id="hotel">
		   <div class="container">
		     <p>酒店名：
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span> <s:property value="#hotel.hname"/>	
        </button>
      </p>
		   </div>
			
		</s:iterator>
		<table class="table table-bordered">
			<tr>
			<td>用户名</td>
			<td>房间类型</td>
				<td>评价内容</td>
				<td>删除</td>
			</tr>
				<s:iterator value="#request.listMessage" id="message">
				<tr>
				<td><s:property value="#message.consumername"/></td>
				<td><s:property value="#message.roomtype"/></td>
					<td><s:property value="#message.message" /></td>
					<td><s:a href="/Hotel/authorityAdmin1/deleteMessage!deleteMessage?message.mid=%{#message.mid}">删除</s:a>
					</td>
			</s:iterator> 
		</table>
	</center>
</body>
</html>