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
<title>留言填写</title>
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
			评价
		</h1>
		<s:iterator value="#session.messageorder" id="order">
					<div class="container">
						<p>
							酒店名：
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-home"></span>
								<s:property value="#order.room.hotels.hname" />
							</button>
						</p>
					</div>
					</s:iterator>
		
		<form class="form-horizontal" role="form"action="messageService!saveMessage" method=post accept-charset="UTF-8" />
		<div class="form-group">
					<label class="col-sm-2 control-label">用戶名:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="message.room.type"
							value="${session.messageorder.room.type}" readonly="true"  placeholder="请输入名字" />
					</div>
				</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">留言内容:</label>
					<div class="col-sm-10">
						<input type="textarea" class="form-control" name="message.message"
							   placeholder="请输入留言" />
					</div>
				</div>
				<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default" method="updateUser">提交</button>
						</div>
					</div>
					</form>
		
	</center>
</body>
</html>