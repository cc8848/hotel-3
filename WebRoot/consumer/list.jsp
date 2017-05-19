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
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>用户列表</title>
<script type="text/javascript">
	function del() {
		if (confirm("你确定要删除该用户吗?")) {
			return true;
		}
		return false;
	}
</script>
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
			客户信息列表
		</h1>
		
		
		<table class="table table-bordered">
			<tr>
				<td>客户编号<br></td>
				<td>客户姓名</td>
				<td>联系电话</td>
				<td>电子邮箱</td>
				<td>性别</td>
				<td>删除</td>
				
			</tr>
			<s:iterator value="#request.list" id="consumer">
				<tr>
					<td><s:property value="#consumer.cid" /></td>
					<td><s:property value="#consumer.cname" /></td>
					<td><s:property value="#consumer.phone" /></td>
					<td><s:property value="#consumer.email" /></td>
					<td><s:property value="#consumer.sex" /></td>
					<td><s:a
							href="deleteUser!deleteInfo?consumer.cid=%{#consumer.cid}"
							onclick="return del();">Delete</s:a></td>
					
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>