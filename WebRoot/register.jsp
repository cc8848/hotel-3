<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<title>用户注册</title>
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
			<li class="active"><a href="index.jsp">主页</a></li>
			<li><s:a href="adminLogin.jsp">管理员登入</s:a></li>
			<li><a href="workerLogin.jsp">旅店人员</a></li>
			<li><s:a href="login.jsp">用户登入</s:a></li>
		</ul>
<div class="container">
	<div class="jumbotron">
	<center>
		<h1>
			<font color="black">用户注册</font>
		</h1>

<form class="form-horizontal" role="form" action="saveUser!register" method=post accept-charset="UTF-8">
<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">用戶名:</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name=consumer.cname 
				   placeholder="请输入名字">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">密碼:</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" name="consumer.password" 
				   placeholder="请输入密码">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">电子邮箱:</label>
		<div class="col-sm-10">
			<input type="text" id="email" class="form-control" name="consumer.email" size="6"
				   placeholder="请输入邮箱">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">电话:</label>
		<div class="col-sm-10">
			<input type="text" id="phone" class="form-control" name="consumer.phone" 
				   placeholder="请输入电话">
		</div>
	</div>
	<div class="form-group">
	<label for="lastname" class="col-sm-2 control-label">性别:</label>
		<div class="col-sm-10">
		<select class="form-control input-sm" name="consumer.sex" >
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
	</div>
			<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default" onclick="return checkemail()">注册</button>
		</div>
	</div>
	</form>
	</center>
</body>
</html>