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
<title>增加房间</title>
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
			增加酒店
		</h1>
		<form class="form-horizontal" role="form"
					action="saveHotel!saveHotel" method=post accept-charset="UTF-8"/>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">酒店名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="hotel.hname"
				   placeholder="请输入名字"/>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">城市名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="hotel.city" 
								placeholder="请输入城市名"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">详细地址:</label>
						<div class="col-sm-10">
						<input type="text" class="form-control" name="hotel.hotelAddr" 
								placeholder="请输入详细地址"/>
						</div>
					</div>

					
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default"  >增加</button>
							</div>
						</div>
				</form>
	
	</center>
</body>
</html>