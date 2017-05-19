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
<title>增加入住信息</title>

<script type="text/javascript">
	function sav() {
		if (confirm("你确定要入住该房间吗？")) {
			return true;
		}
		return false;
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
			<font color="black">新增入住信息</font>
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
						<div class="container">
		  <p>查看留言:
        <a href="messageService!throughMessage2" class="btn btn-info btn-lg"/>
          <span class="glyphicon glyphicon-plus"></span>留言
        </a>
      </p> 
    </div>
			<p>
							描述：
                 <s:property value="#hotel.description" />
							</p>
					</div>
				</s:iterator>
				
		<table class="table table-bordered">
			<tr>
				<td>房间序号</td>
				<td>房间名称</td>
				<td>房间价格</td>
				<td>房间状态</td>
				<td>操作</td>
			</tr>
				<s:iterator value="#session.listroom" id="room">
				<tr>
					<td><s:property value="#room.roomid" /></td>
					<td><s:property value="#room.type" /></td>
					<td><s:property value="#room.price" /></td>
					<td><s:if test="#room.status == 0">空房</s:if> <s:else>有客人</s:else>
					</td>
					<td><s:a
							href="/Hotel/authorityUser/saveOrder!addOrder?order.room.id=%{#room.id}&&room.id=%{#room.id}" >预定</s:a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</center>
</body>
</html>