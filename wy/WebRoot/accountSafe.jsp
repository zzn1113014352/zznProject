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
		<title>账号安全</title>
		<link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon" />
		<link href="assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/safe.css" rel="stylesheet" type="text/css" />
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
				<div class="wrapper main-wrapper row" id="safety">
					<div class="order-top clearfix">
					<input type="text" id="passwordshow" value="" style="display:none;"/>
						<div class="order-left">
							<span class="chunk"></span>
							<span class="title">账号安全</span>
						</div>
						<div class="order-right">
							<span class="search order" onclick="gengxin()">更新</span>
						</div>
					</div>
					<ul class="update-box">
				        <li>
				            <i>输入当前密码</i>
				            <input type="password" class="password" id="c_password" value="" maxlength="20"/>
				        </li>
				        <li>
				            <i>输入新密码</i>
				            <input type="password" class="password" id="new_password" value="" maxlength="20"/>
				        </li>
				        <li>
				            <i>再次输入新密码</i>
				            <input type="password" class="password" id="news_password" value="" maxlength="20"/>
				        </li>
				    </ul>
				</div>
			</section>
			<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
			<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
		</div>
		<script src="assets/js/jquery-1.11.2.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="assets/plugins/viewport/viewportchecker.js"></script>
		<script src="assets/js/scripts.js"></script>
		<script src="assets/js/include.js"></script>
		<script src="assets/js/lib/honeySwitch.js"></script>
		<script>
			$(function() {
				if("${userid}"==""){
	    	   		document.location.replace("login.jsp");	
				}
				safetyChange();
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
				switchEvent("#fly", function() {
					$("#network").slideUp();
				}, function() {
					$("#network").slideDown();
				});
				switchEvent("#directory", function() {
					$("#directory_content").fadeIn();
				}, function() {
					$("#directory_content").fadeOut();
				});
			});
			if($(".swith").hasClass('switch-on')){
			}
			
			function safetyChange(){
				var userid = $("#userid").val();
				gainPass(userid);
			}
			
			function gainPass(userid){
			    $.ajax({
					url:"gainData.action",
					data:{userid:userid},
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						var mm = data.msg;
						$("#passwordshow").val(mm);
					},
					error:function (error) {
				    }
				});
			}
			
			function gengxin(){
				//输入当前密码
				var c_password = $("#c_password").val();
				//输入新密码
				var new_password = $("#new_password").val();
				//再次输入新密码
				var news_password = $("#news_password").val();
				//从服务端拿到的密码
				var passwordshow = $("#passwordshow").val();
				var userid = $("#userid").val();
			    var passReg = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
				if(c_password.length == 0){
					alert("输入当前密码不能为空");
					return false;
				}
				if(c_password != passwordshow){
					alert("您输入的密码跟注册密码不一致，请重新输入");
					return false;
				}
				if(new_password.length == 0){
					alert("输入新密码不能为空");
					return false;
				}
				if(new_password == passwordshow){
					alert("您输入的新密码不能和旧密码一致，请重新输入");
					return false;
				}
				if(!passReg.test(new_password)){
					alert("输入新密码必须为数字字母混合");
			 		return false;
				}
				if(new_password.length < 8){
				 	alert("输入新密码长度不能小于8");
				    return false;
				}
				if(news_password.length == 0){
					alert("再次输入新密码不能为空");
					return false;
				}
				if(!passReg.test(news_password)){
					alert("再次输入新密码必须为数字字母混合");
			 		return false;
				}
				if(news_password.length < 8){
				 	alert("再次输入新密码长度不能小于8");
				    return false;
				}
				if(new_password != news_password){
					alert("您输入的密码不一致，请重新输入");
				    return false;
				}
				$.ajax({
					url:"updateUserInfo.action", 
					data: {userid:userid,news_password:news_password},
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						var mm = data.msg;
						if(mm == "success"){
							alert("更新用户密码成功");
							$("#c_password").val("");
							$("#new_password").val("");
							$("#news_password").val("");
						}
					}, 
					error:function (error) {
				    }
				});
			}
		</script>
	</body>
</html>
