<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		<%@include file="/info/workerInfo.jsp"%>
		<h1>
			<font color="red">房间列表</font>
		</h1>
		
	<table class="table table-bordered">
			<tr>
			    <td>酒店名</td>
				<td>房间序号</td>
				<td>房间类型</td>
				<td>房间价格</td>
				<td>房间状态</td>
				
			</tr>
			<s:iterator value="#session.list" id="room">
				<tr>
				<td><s:property value="#room.hotels.hname" /></td>
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
