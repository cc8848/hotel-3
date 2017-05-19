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
<title>用户注册</title>
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
			添加用户
		</h1>
			<form class="form-horizontal" role="form" action="saveUser!reg" method=post accept-charset="UTF-8"/>
            <s:iterator value="#session.hotels" id="hotel">
							<input type=hidden name="hotel.hid"
								value="<s:property value="#hotel.hid"/>" />
						</s:iterator>
				<div class="form-group">
					<label class="col-sm-2 control-label">用户名:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="consumer.cname"
							placeholder="请输入用户名" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="consumer.password"
							placeholder="请输入密码" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">电话:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="consumer.phone"
							placeholder="请输入电话" />
					</div>
				</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">邮箱:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="consumer.email"
							placeholder="请输入邮箱" />
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">性别:</label>
					<div class="col-sm-10">
						<select class="form-control input-sm" name="consumer.sex">
							<option value="男">男</option> 
                   <option value="女">女</option> 
						</select>
					</div>


					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">增加</button>
						</div>
					</div>
					</form>
		
	</center>
</body>
</html>