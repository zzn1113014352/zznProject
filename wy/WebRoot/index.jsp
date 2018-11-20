<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>首页</title>
	<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/system.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/userManage.css" rel="stylesheet" type="text/css" />
	<!--账户信息引进-->
	<link href="assets/css/common.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/order.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />
	<!--账户信息引进-->
	<!--账户安全引进-->
	<link href="assets/css/safe.css" rel="stylesheet" type="text/css" />
	<link href="assets/js/lib/honeySwitch.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="assets/css/button/normalize.css">
	<link rel="stylesheet" href="assets/css/button/style.css" media="screen" type="text/css" />
	<!--账户安全引进-->
	<!--版本介绍-->
	<link href="assets/css/version.css" rel="stylesheet" type="text/css" />
	<!--版本介绍-->
	<style type="text/css">
		.content{width: 83%;}
	</style>
</head>
<body>
<body>
<div class='page-topbar'>
<include src="daohang.jsp"></include>
</div>
<div class="page-container row-fluid container-fluid">
	<div class="page-sidebar fixedscroll">
		<div class="page-sidebar-wrapper" id="main-menu-wrapper">
			<include src="<%=basePath%>getFuMenu.action"></include>
		</div>
		<input type="hidden" value="${userid}" name="operate_id" id="operateid">
	</div>
</div>

<script src="assets/js/jquery-1.11.2.min.js"></script>
<script src="assets/js/citySelect/cityselect.js"></script>
<script src="assets/js/common.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="assets/plugins/viewport/viewportchecker.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="assets/js/include.js"></script>
</body>
<script>
	$(function(){
	
		if("${userid}"==""){
	   		document.location.replace("login.jsp");	
		}
		var userid = $("#userid").val();
		var basepath = $("#basepath").val();
		$.ajax({
		url:"initUser.action",
		data:{userid:userid},
		async:false,
		dataType:"json",
		type:"post",
		success:function (data) {
			var mm = data.inituser;
			if(mm.nickname == ""){
				$("#nickname_ss").html("未命名");
			}else{
				$("#nickname_ss").html(mm.nickname);
			}
			var user_img = mm.user_img;//用户头像
			//中间判断图片文件是否存在(待定)
			if(user_img != ""){
				$(".tx").attr("src",basepath+"head_img/"+user_img);
			}else{
				$(".tx").attr("src",basepath+"assets/images/tx.png");
			}
		},
		error:function (error) {
	    }
	});
	
		
		
		$('.city').show().citySelect({
			prov: "陕西",
			city: 'none',
			dist: 'none',
			nodata: 'none'
		});
	});
	
</script>
</html>