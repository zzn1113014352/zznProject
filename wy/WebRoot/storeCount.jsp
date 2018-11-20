<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>门店统计</title>
		<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		<!--账户信息引进-->
		<link href="<%=basePath %>assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />
		<!--账户信息引进-->
		<!--账户安全引进-->
		<link href="<%=basePath %>assets/css/safe.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/js/lib/honeySwitch.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="<%=basePath %>assets/css/button/normalize.css">
		<link rel="stylesheet" href="<%=basePath %>assets/css/button/style.css" media="screen" type="text/css" />
		<!--账户安全引进-->
		<!--版本介绍-->
		<link href="<%=basePath %>assets/css/version.css" rel="stylesheet" type="text/css" />
		<!--版本介绍-->
	</head>

	<body>
		<div class='page-topbar'>
			<include src="daohang.jsp"></include>
		</div>
		<div class="page-container row-fluid container-fluid">
			<div class="page-sidebar fixedscroll">
				<div class="page-sidebar-wrapper" id="main-menu-wrapper">
					<include src="<%=basePath %>getFuMenu.action"></include>
				</div>
			</div>
			<section id="main-content">
				<div class="wrapper main-wrapper row">
					<div class="order-top clearfix">
						<div class="order-left">
							<span class="chunk"></span>
							<span class="title">门店统计</span>
						</div>
						<div class="order-right">
							<img src="<%=basePath %>assets/images/return.png" class="return"/>
						</div>
					</div>
					<div class="content-box">
						<table class="content order-list">
							<tr class="kuai"></tr>
							<tr>
								<th style="width: 20%;">门店</th>
								<th style="width: 20%;">省份</th>
								<th style="width: 20%;">实时客流</th>
								<th style="width: 20%;">订单</th>
								<th style="width: 20%;">收入</th>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
							<tr>
								<td>中山布行街店</td>
								<td>江苏省</td>
								<td>200人</td>
								<td>150</td>
								<td>1500</td>
							</tr>
						</table>
						<div class="notice-bottom clearfix">
							<div class="page-box">
								<a href="#" class="sure">确定</a>
								<input type="text" class="point-to" />
								<span class="tiao">跳转到</span>
								<ul class="page">
									<li>
										<a href="">
											<</a>
									</li>
									<li>
										<a href="#">1</a>
									</li>
									<li class="active">
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">></a>
									</li>
									<li>
										<a href="#">>></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
		<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath %>assets/js/common.js"></script>
		<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
		<script src="<%=basePath %>assets/js/scripts.js"></script>
		<script src="<%=basePath %>assets/js/include.js"></script>
		<script>
			$(".return").click(function(){
				window.location.href = 'operatStatis.jsp';
			})
		</script>
	</body>

</html>

