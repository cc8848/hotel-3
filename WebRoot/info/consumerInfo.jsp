<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/Hotel/js/bootstrap.min.js"></script>
<link href="/Hotel/time/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all"
	href="/Hotel/time/daterangepicker-bs3.css" />
<script type="text/javascript" src="/Hotel/time/moment.js"></script>
<script type="text/javascript" src="/Hotel/time/daterangepicker.js"></script>
<title>用户管理首页</title>
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
			欢迎您
			<button type="button" class="btn btn-default btn-lg">
	<span class="glyphicon glyphicon-user"></span> <s:property value="#session.consumer.cname"/>
</button>
		</h1>
		<div class="panel-heading">
		<s:form id="form" action="hotelService!findHotelbyname" method="post">
	
		<fieldset style="width: 350px">
							<div class="control-group">
								<div class="controls">
									<div class="input-prepend input-group">
										
										<span class="add-on input-group-addon"><i
											class="glyphicon glyphicon-calendar fa fa-calendar"></i>
											</span> <input type="text" readonly name="date" id="reservation"
											class="form-control"
											value="${session.date}"/> <span
											class="input-group-btn">
											
										</span>

									</div>
								</div>
							</div>
						</fieldset>
			<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-calendar"></span> 搜索城市
			</button>
             &nbsp
			<input name="hotel.city" type="text" />
			  &nbsp
			<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-calendar"></span> 酒店名称
			</button>
            &nbsp
			<input name="hotel.hname" type="text" />
			&nbsp
			<button type="submit" class="btn btn-default">开始搜索</button>		
		</s:form>
		</center>	
		<center>
	<hr>
	<h2>热门酒店推荐</h2>

  <div class="col-sm-6 col-md-4">
    <div class="thumbnail"><s:a
							href="/Hotel/authorityUser/saveOrder!saveOrder?hotel.hid=1">
      <img src="/Hotel/img/2.jpg" height="380" ></s:a>
      <div class="caption">
        <h3>幸福宾馆</h3>
      </div>
    </div>
  </div>
</div>
	
							&nbsp
								
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail"><s:a
							href="/Hotel/authorityUser/saveOrder!saveOrder?hotel.hid=2"><img src ="/Hotel/img/1.jpg" width="500" height="380" /></s:a>
      <div class="caption">
        <h3>帆船酒店</h3>
        <p>阿拉伯塔酒店因外形酷似船帆，又称迪拜帆船酒店，酒店建在离沙滩岸边280米远的波斯湾内的人工岛上，仅由一条弯曲的道路连结陆地，共有56层，321米高，酒店的顶部设有一个由建筑的边缘伸出的悬臂梁结构的停机坪。
阿拉伯塔酒店有202套房，都是复式，房间最小的170平米，最大的是皇家总统套房780平米。最小的房间的每天住宿费为1500美金（9773.25人民币），而皇家总统套房的每天住宿费高达20000美金（130310人民币），因此阿拉伯塔酒店也成为全世界最豪华的酒店，被称作波斯湾的明珠。 </p>
      </div>
    </div>
  </div>

						
							&nbsp
							 <div class="col-sm-6 col-md-4">
    <div class="thumbnail"><s:a href="/Hotel/authorityUser/saveOrder!saveOrder?hotel.hid=3"><img src ="/Hotel/img/3.jpg" width="500" height="380" align="bottom"/></s:a>
      <div class="caption">
        <h3>圣西罗大酒店</h3>
        <p>给您最好的服务</p>
      </div>
    </div>
  </div>

			
		
			</center>		
			<script type="text/javascript">
		$(document).ready(
				function() {
					$('#reservation').daterangepicker(
							null,
							function(start, end, label) {
								console.log(start.toISOString(), end
										.toISOString(), label);
							});
				});
	</script>
</body>
</html>