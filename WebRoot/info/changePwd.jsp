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

<title>用户修改密码</title>
<script type="text/javascript">
function checkemail(){  
var email=document.getElementById("email").value;
    var reg=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    var mobile=document.getElementById("phone").value;
    var re=/^1\d{10}$/; 
    if(reg.test(email)){  
           if(re.test(mobile)){  
         return true;  
         }  
       else  
    {  
          alert("手机格式错误");  
         return false;
    }  
    }  
    else  
    {  
          alert("邮箱格式错误");  
         return false;
    }  
}  


</script>
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
					<font color="black">修改个人信息</font>
				</h1>
				<form class="form-horizontal" role="form"action="consumerService!updateConsumer" method=post accept-charset="UTF-8"/>
				<input type="hidden" name="consumer.cid" value="${consumer.cid}" />
				<div class="form-group">
					<label class="col-sm-2 control-label">用戶名:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="consumer.cname"
							value="${consumer.cname}" placeholder="请输入名字" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">密碼:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control"
							name="consumer.password" value="%{consumer.passwords}"
							placeholder="请输入密码" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">电话:</label>
					<div class="col-sm-10">
						<input type="text" id="phone" class="form-control" name="consumer.phone"
							value="${consumer.phone}" placeholder="请输入电话" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">电子邮箱:</label>
					<div class="col-sm-10">
						<input type="text" id="email"class="form-control" name="consumer.email"
							value="${consumer.email}" placeholder="请输入邮箱" />
					</div>
				</div>
<div class="form-group">
					<label class="col-sm-2 control-label">积分:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="consumer.integration"
							value="${consumer.integration}" readonly="true" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">性别:</label>
					<div class="col-sm-10">
						<select class="form-control input-sm" name="consumer.sex"
							value="${consumer.sex}">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default" method="updateUser" onclick="return checkemail()">修改</button>
						</div>
					</div>
					</form>
	</center>
</body>
</html>