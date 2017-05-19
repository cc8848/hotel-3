<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>增加房间</title>
<script type="text/javascript">

function Func() {
		
		var name = document.getElementById("name").value;
	 var password=document.getElementById("password").value;
	  var truename=document.getElementById("truename").value;
	    if(name==""||password==""||truename==""){
	    alert("信息不能为空");
			return false;
		}
		if (confirm("确定增加员工吗?")) {
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
			增加员工
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
					</div>
				</s:iterator>
		<form class="form-horizontal" role="form" action="addworker!saveWorker" method=post accept-charset="UTF-8" />
            <s:iterator value="#session.hotels" id="hotel">
							<input type=hidden name="hotel.hid"
								value="<s:property value="#hotel.hid"/>" />
						</s:iterator>
				<div class="form-group">
					<label class="col-sm-2 control-label">账号名:</label>
					<div class="col-sm-10">
						<input type="text" id="name" class="form-control" name="worker.name"
							placeholder="请输入账号名" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">密码:</label>
					<div class="col-sm-10">
						<input type="text" id="password" class="form-control" name="worker.password"
							placeholder="请设置密码" />
					</div>
				</div>
			<div class="form-group">
	<label  class="col-sm-2 control-label">性别:</label>
		<div class="col-sm-10">
		<select class="form-control input-sm" name="worker.sex" >
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
	</div>
	</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">真实姓名:</label>
					<div class="col-sm-10">
						<input type="text" id="truename" class="form-control" name="worker.truename"
							placeholder="请输入真实姓名" />
					</div>
				</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default" onclick="return Func()">增加</button>
						</div>
					</div>
					</form>
		
	</center>
</body>
</html>