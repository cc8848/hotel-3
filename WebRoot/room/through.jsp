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
<title>房间列表</title>
<script type="text/javascript">
	function del() {
		if (confirm("确定删除房间信息吗?")) {
			return true;
		}
		return false;
	}
</script>
</head>
<body>
	<center>
		<ul class="nav nav-pills">
			<li class="active"><a href="index.jsp">主页</a></li>
			<li><s:a href="register.jsp">注册</s:a></li>
			<li><s:a href="login.jsp">登入</s:a></li>
		</ul>
		<div class="container">
			<div class="jumbotron">
				<h1>
					<font color="black">房间列表</font>
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
						<p>查看留言:
        <a href="messageService!throughMessage2" class="btn btn-info btn-lg"/>
          <span class="glyphicon glyphicon-plus"></span>留言
        </a>
      </p> 
					</div>
				</s:iterator>
				<table class="table table-bordered">
					<tr>
						<td>房间序号</td>
						<td>房间类型</td>
						<td>房间价格</td>
						<td>房间状态</td>

					</tr>
					<s:iterator value="#session.listroom" id="room">
						<tr>
							<td><s:property value="#room.roomid" /></td>
							<td><s:property value="#room.type" /></td>
							<td><s:property value="#room.price" /></td>
							<td><s:if test="#room.status == 0">空闲</s:if> <s:else>已入住</s:else>
							</td>

						</tr>
					</s:iterator>
				</table>
	</center>
</body>
</html>