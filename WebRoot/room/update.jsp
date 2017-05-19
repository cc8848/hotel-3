<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<title>修改房间信息</title>
<script type="text/javascript">
function Func() {
		
	
	 var price=document.getElementById("price").value;
	  var type=document.getElementById("type").value;
	    if(price==""||type==""){
	    alert("信息不能为空");
			return false;
		}
		if (confirm("确定修改房间信息吗?")) {
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
			修改房间
		</h1>
		<form class="form-horizontal" role="form"action="updateRoom!updateRoom" method=post accept-charset="UTF-8"/>
				<input type="hidden" name="room.id" value="${session.roomUp.id}" />
				<div class="form-group">
					<label class="col-sm-2 control-label">房间号:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="room.roomid"
							value="${session.roomUp.roomid}" readonly="true" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">价格:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price"
							name="room.price" value="${session.roomUp.price}"
							placeholder="请输入价格" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">类型:</label>
					<div class="col-sm-10">
						<input type="text" id="type" class="form-control" name="room.type"
							value="${session.roomUp.type}"}" placeholder="请输入价格" />
					</div>
				</div>																      							
					<div class="form-group">
					<label class="col-sm-2 control-label">状态:</label>
					<div class="col-sm-10">
						<select class="form-control input-sm" name="room.status"
							value="${session.roomUp.status}">
							<option value="0">空闲</option>
							<option value="1">客满</option>
						</select>
					</div>
					

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default" onclick="return Func()">修改</button>
						</div>
					</div>
					</form>
		
			
	</center>
</body>
</html>