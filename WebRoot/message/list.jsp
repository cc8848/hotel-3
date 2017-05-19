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
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>增加留言信息</title>

</head>
<body>
	<center>
		<ul class="nav nav-pills">
			<li class="active"><a href="consumerService!findConsumer">Home</a></li>
			<li><s:a href="consumerService!consumerUpdateInfo">修改客户信息</s:a></li>
			<li><a href="orderService!consumerOrder">查看预定信息</a></li>
			<li><a href="consumerService!loginOut">退出</a></li>
		</ul>
		<div class="container">
			<div class="jumbotron">
		<h1>
			<font color="black">留言信息</font>
		</h1>
			<s:iterator value="#session.hotels" id="hotel">
					<div class="container">
						<p>
							酒店名：
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-home"></span>
								<s:property value="#hotel.hname" />
							</button>
						</p>
						<p>
							描述：
                 <s:property value="#hotel.description" />
							</p>
					</div>
				</s:iterator>
		<table class="table table-bordered">
			<tr>
			<td>用户名</td>
			<td>房间类型</td>
				<td>评价内容</td>
			</tr>
				<s:iterator value="#request.listMessage" id="message">
				<tr>
				<td><s:property value="#message.consumername"/></td>
				<td><s:property value="#message.roomtype"/></td>
					<td><s:property value="#message.message" /></td>
					
			</s:iterator>
		</table>
	</center>
</body>
</html>