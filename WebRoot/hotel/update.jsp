<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>
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
<title>修改酒店信息</title>
<script type="text/javascript">
function Func() {
		
	
	 var name=document.getElementById("name").value;
	  var city=document.getElementById("city").value;
	    var addr=document.getElementById("addr").value;
	    	    var desc=document.getElementById("desc").value;
	    if(name==""||city==""||addr==""||desc==""){
	    alert("信息不能为空");
			return false;
		}
		if (confirm("确定修改 信息吗?")) {
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
			<li><a href="/Hotel/authorityAdmin1/listUser!allConsumer">客户管理</a></li>
			<li><a href="/Hotel/authorityAdmin1/listHotel">酒店管理</a></li>
			<li><a href="/Hotel/authorityAdmin1/adminService!loginOut">退出</a></li>
		</ul>
		<div class="container">
			<div class="jumbotron">
		<h1>
			修改酒店
		</h1>
		<div class="container">
		<form class="form-horizontal" role="form" action="updateHotel!updateHotel" method=post accept-charset="UTF-8"/>
				<input type="hidden" name="hotel.hid" value="${session.hotelUP.hid}" />
				<div class="form-group">
					<label class="col-sm-2 control-label">酒店名:</label>
					<div class="col-sm-10">
						<input type="text" id="name" class="form-control" name="hotel.hname"
							value="${session.hotelUP.hname}" placeholder="请输入酒店名" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">城市:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="city"
							name="hotel.city" value="${session.hotelUP.city}"
							placeholder="请输入城市" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">酒店位置:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="addr" name="hotel.hotelAddr"
							value="${session.hotelUP.hotelAddr}"}" placeholder="请输入酒店位置" />
					</div>
				</div>																      							
					<div class="form-group">
					<label class="col-sm-2 control-label">酒店描述:</label>
					<div class="col-sm-10">
						<input type="text" id="desc" class="form-control" name="hotel.description"
							value="${session.hotelUP.description}"}" placeholder="请输入酒店描述" />
					</div>
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