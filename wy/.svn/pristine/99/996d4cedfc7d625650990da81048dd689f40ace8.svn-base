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
		<title>版本介绍</title>
		<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon" />
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/order.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/version.css" rel="stylesheet" type="text/css" />
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
			<section id="main-content" class=" ">
				<div class="wrapper main-wrapper row">
					<div class="order-top clearfix">
						<div class="order-left">
							<span class="chunk"></span>
							<span class="title">版本介绍</span>
						</div>
						<div class="order-right">
							<span class="search order" onclick="updateVersion()">更新</span>
						</div>
						<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
						<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
					</div>
					<div class="vertial-box">
				        <div class="vertial clearfix">
				            <img src="assets/images/user-img-version.png"/>
				            <span class="dang">当前版本</span>
				            <span class="ver-number"></span>
				            <ul id="for_version">
				            </ul>
				        </div>
				    </div>
				</div>
			</section>
		</div>
		<script src="assets/js/jquery-1.11.2.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="assets/plugins/viewport/viewportchecker.js"></script>
		<script src="assets/js/scripts.js"></script>
		<script src="assets/js/include.js"></script>
		<script type="text/javascript">
			$(function(){
				if("${userid}"==""){
	    	   		document.location.replace("login.jsp");	
				}
				gainList888888();
		
			});
			
			function gainList888888(){
				$.ajax({
					url:"Versionnum.action", 
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						$.each(data.list,function(index,item){
						$("#for_version").append("<li>"+ item.version_remark +"</li>");
						if(index ==0){
							$(".ver-number").html("版本号："+item.version_num);
						}
			        });
					},
					error:function (error) {
				    }
				});
			}
			
			function updateVersion(){
				alert("您当前已是最新版本！");
			}
		</script>
	</body>
</html>