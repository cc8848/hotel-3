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
		酒店列表
		</h1>
		 <div class="container">
		  <p>增加酒店:
        <a href="../hotel/add.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span> new hotel
        </a>
      </p> 
    </div>
		<table class="table table-bordered">
			<tr>
				<td>酒店序号</td>
				<td>酒店名</td>
				<td>城市</td>
				<td>地址</td>	
							
				<td>更新</td>				
				<td>客房管理</td>
				<td>员工管理</td>
				<td>留言管理</td>
			</tr>
			<s:iterator value="#session.list" id="hotel">
				<tr>
					<td><s:property value="#hotel.hid" /></td>
					<td><s:property value="#hotel.hname" /></td>
					<td><s:property value="#hotel.city" /></td>
					<td><s:property value="#hotel.hotelAddr" /></td>
					
				
					<td><s:a
							href="updatePHotel!updatePHotel?hotel.hid=%{#hotel.hid}&&hotel.hname=%{#hotel.hname}&&hotel.city=%{#hotel.city}&&hotel.hotelAddr=%{#hotel.hotelAddr}&&hotel.description=%{#hotel.description}">update</s:a>
					</td>
					<td><s:a href="findroombyhid?hotel.hid=%{#hotel.hid}&&hotel.hname={#hotel.hname}">房间管理</s:a>
					</td>
					<td><s:a href="findworkerbyhid!findWorkerbyHid?hotel.hid=%{#hotel.hid}&&hotel.hname={#hotel.hname}">员工管理</s:a>
					</td>
					<td><s:a href="findmessagebyhid!throughMessage?hotel.hid=%{#hotel.hid}&&hotel.hname={#hotel.hname}">留言管理</s:a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>