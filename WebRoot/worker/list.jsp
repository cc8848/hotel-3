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
<title>房间列表</title>
<script type="text/javascript">
	function del() {
		if (confirm("确定删除员工信息吗?")) {
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
			员工表
		</h1>
		<div class="container">
		  <p>增加员工:
        <a href="../worker/add.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span> worker
        </a>
      </p> 
    </div>
	<s:iterator value="#session.hotels" id="hotel">
		   <div class="container">
		     <p>酒店名：
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-home"></span> <s:property value="#hotel.hname"/>	
        </button>
      </p>
		   </div>
			
		</s:iterator>
		<table class="table table-bordered">
			<tr>
				<td>员工账户名</td>			
				<td>员工真实姓名</td>
				<td>员工性别</td>
				<td>密码</td>			
				<td>删除</td>
			</tr>
			<s:iterator value="#session.list" id="worker">
				<tr>
					<td><s:property value="#worker.name" /></td>
					<td><s:property value="#worker.truename" /></td>
					<td><s:property value="#worker.sex" /></td>
					<td><s:property value="#worker.password" /></td>
					
					<td><s:a
							href="deleteworker!deleteWorker?worker.wid=%{#worker.wid}"
							onclick="return del();">delete</s:a></td>
					
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>