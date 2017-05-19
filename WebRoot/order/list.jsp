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
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>用户所预定房间列表</title>
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
			所预定的房间列表
		</h1>
	<table class="table table-bordered">
			<tr>
				<td>房间号</td>                                        
				<td>房间名称</td>
				<td>房间价格</td>
				<td>真实姓名</td>
				<td>入住时间</td>
				<td>离店时间</td>
				<td>订单状态</td>
				<td>操作</td>
				<!-- <td>房间状态</td> -->
			</tr>
			<s:iterator value="#session.listorder" id="order">
				<tr>
					<td><s:property value="#order.room.roomid" /></td>
					<td><s:property value="#order.room.type" /></td>
					<td><s:property value="#order.price" /></td>					
					<td><s:property value="#order.truename" /></td>
					<td><s:property value="#order.orderInDate" /></td>
					<td><s:property value="#order.orderOutDate" /></td>
			 <td>
						<s:if test="#order.status == 0">待确认</s:if>
						<s:elseif test="#order.status == 1">待入住</s:elseif>
						<s:elseif test="#order.status == 2">已拒绝</s:elseif>
						<s:elseif test="#order.status == 3">已入住</s:elseif>
						<s:elseif test="#order.status == 4">已离店</s:elseif>
						<s:elseif test="#order.status == 5">离店已评价</s:elseif>
					</td> 
					<td>
					<s:if test="#order.status == 0"><s:a href="/Hotel/authorityAdmin/changeOrder!changeOrder1?order.orderid=%{#order.orderid}">通过订单</s:a>
					<s:a href="/Hotel/authorityAdmin/changeOrder!changeOrder2?order.orderid=%{#order.orderid}"></s:a></s:if>
						<s:elseif test="#order.status==1"><s:a href="/Hotel/authorityAdmin/changeOrder!changeOrder3?order.orderid=%{#order.orderid}">顾客入住</s:a></s:elseif>
						<s:elseif test="#order.status==2"><s:a href="/Hotel/authorityAdmin/changeOrder!changeOrder1?order.orderid=%{#order.orderid}">恢复订单</s:a></s:elseif>
						<s:elseif test="#order.status==3"><s:a href="/Hotel/authorityAdmin/changeOrder!changeOrder4?order.orderid=%{#order.orderid}">顾客离店，完成订单</s:a></s:elseif>
						<s:elseif test="#order.status==4"><s:a href="messageService!throughMessage?hotel.hid=%{#order.room.hotels.hid}">查看留言</s:a></s:elseif>
						<s:elseif test="#order.status==5"><s:a href="messageService!throughMessage?hotel.hid=%{#order.room.hotels.hid}">查看留言</s:a></s:elseif>
				</tr>
			</s:iterator>
		
		</table>
	</center>
</body>
</html>