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
<title>增加房间</title>
<script type="text/javascript">
		function myFunc() {
		var idinteger = document.getElementById("integration").value;
		var oldprice ='<%=session.getAttribute("price")%>';
		var haveIt='<%=session.getAttribute("integration")%>';
		var name = document.getElementById("truename").value;
		var ol = parseInt(oldprice);
		var it = parseInt(idinteger);
		var ha = parseInt(haveIt);
		var nPrice = ol - it ;
		if (it < 0 || it > ha) {
			alert("请输入正确的积分数");
			return false;
		}
		if(name==""){
			alert("姓名不能为空");
			return false;
			}
		document.getElementById("newprice").innerHTML = nPrice;
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
	<li><a href="/Hotel/authorityUser/saveOrder!saveOrder?hotel.hid=%{#hotel.hid}">返回</a></li>
</ul>
<div class="container">
	<div class="jumbotron">
		<h1>
			<font color="black">订单填写</font>
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
		<form class="form-horizontal" role="form" action="saveOrder!addOrder2" method=post accept-charset="UTF-8"/>
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label">订单价格:</label>
						
						<div class="col-sm-10">
						
							<input type="text" class="form-control" name="order.price" value="${session['price']}" readonly="true" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">房间类型:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" value="${session['r']['type']}" readonly="true" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">住店日期:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" value="${session['date']}" readonly="true" />
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">真实姓名:</label>
						<div class="col-sm-10">
							<input type="text" id="truename" class="form-control" name="order.truename" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">手机号:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="order.phone"value="${session['consumer']['phone']}" 
				 />
						</div>
					</div>
	<div class="form-group">
						<label class="col-sm-2 control-label">输积分一比一抵价格:</label>
						<div class="col-sm-10">
							<input type="text" id="integration" class="form-control" name="order.integration" value="${session['consumer']['integration']}" 
				 />
						</div>
					</div>
	     
							
			<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default" onclick="return myFunc()">提交</button>
							</div>
		</form>
	</center>
</body>
</html>
