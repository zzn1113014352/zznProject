<%@page language="java" contentType="text/html;charset=utf-8"%>
<%@page import="java.net.URLDecoder"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 	String name = "";
    //获取所有Cookie
    Cookie[] cookies = request.getCookies();
    //如果浏览器中存在Cookie
    if (cookies != null && cookies.length > 0) {
        //遍历所有Cookie
        for(Cookie cookie: cookies) {
            //找到name为city的Cookie
            if (cookie.getName().equals("name")) {
                //使用URLDecode.decode()解码,防止中文乱码
                name = URLDecoder.decode(cookie.getValue(), "utf-8");
            }
        }
    }
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>assets/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>assets/css/login.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>assets/css/regitser.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>assets/css/forget.css"/>
		<script src="<%=basePath %>js/jquery-1.9.1.js"></script>
	</head>
	
	<body>
	
	
		<div class="container">
			<div class="bigBox">
			<!--登录-->
			<div class="boxCommon login-box">
				<h1 class="title">网约房登记上报平台</h1>
				<input type="text" placeholder="请输入手机号" class="phone" id="username" maxlength="11" value="${cookie.name.value}"/>
				<span>
					<input placeholder="请输入验证码" type="text" id="captcha" name="valiCode" class="text captcha" maxlength="4" autocomplete="off">
					<img onclick="huan()" id="captchaImage" class="captchaImage"  src="valiCodeImg.action" title="点击更换验证码">
				</span>	
				<input type="password" placeholder="请输入密码" class="pass" id="password" maxlength="20"/>
				<div class="forget clearfix">
						<input  onclick="rember()"type="checkbox" id="isRememberUsername" name="isRememberUsername" >
						<a>记住账号？</a>
						 <a href="##" class="forget-pass">忘记密码</a>
						
				</div>
				<div class="btn-box clearfix">
					<button class="login" id="loginBtn">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
					<button class="register">注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
				</div>
			</div>
	
			<!--注册-->
			<div class="boxCommon register-box none">

				<h1 class="title">网约房登记上报平台</h1>

				<input class="addInputStyle" type="text" placeholder="请输入姓名" class="oname" id="operate_name" maxlength="11"/>
				<input class="addInputStyle" type="text" placeholder="请输入证件种类" class="otype" id="operate_id_type" maxlength="11"/>
				<input class="addInputStyle" type="text" placeholder="请输入证件号码" class="onum" id="operate_id_num" maxlength="18"/>
				<input class="addInputStyle" type="text" placeholder="请输入实际居住地址" class="oaddr" id="operate_addr" maxlength="11"/>
				<select class="otherAddStyle addInputStyle" name="operate_type" id="operate_type">
					<option value="" selected="selected">经营者类型</option>
					<option value="1">自然人</option>
					<option value="2">企业</option>
				</select>
				<input type="text" placeholder="请输入手机号" class="phone" id="loginPhoneNumber" maxlength="11"/>
				<div class="yzm-box">
					<img src="<%=basePath %>assets/images/register-yzm.png" class="yzm-img" />
					<input type="text" placeholder="请输入验证码" class="yzm" maxlength="6"/>
					<span class="yzm-btn" id="loginGetRandom">发送验证码</span>
				</div>
				<input type="password" placeholder="请输入密码" class="pass" id="new_password" maxlength="20"/>
				<div class="btn-box">
					<button class="login">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
					<button class="register" id="regBtn">注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
				</div>
			</div>

			<!--忘记密码-->
			<div class="boxCommon forget-box none">
				<h1 class="title">网约房登记上报平台</h1>
				<input type="text" placeholder="请输入手机号" class="phone" id="loginPhoneNumber2" maxlength="11"/>
				<div class="yzm-box">
					<img src="<%=basePath %>assets/images/register-yzm.png" class="yzm-img" />
					<input type="text" placeholder="请输入验证码" class="yzm" id="yzm2" maxlength="6"/>
					<span class="yzm-btn" id="loginGetRandom2">发送验证码</span>
				</div>
				<input type="password" placeholder="请输入新密码" class="pass" id="new_password2" maxlength="20"/>
				<div class="btn-box">
					<button class="login">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
					<button class="register"  onclick="zhuce()">修改密码</button>
					<input type="type" id="service_mess" style="display:none;" value=""/>
				</div>
			</div>
		</div>
		<div class="introBox">
				<div class="introBoxTop">
					<div class="introBoxTopLeft">
						<span>1.0.2.3最新版本</span>
						<span>今日更新系统页面</span>
						<span>房客互动优化</span>
						<span>订单管理更新</span>
						<span>房态管理更新与优化</span>
						<span>操作页面交互更新优化</span>
					</div>
					<div class="introBoxTopRight">
						<div class="introBoxTopRightText">
							<span></span>
							<span>扫码关注网约房登记上报小程序</span>
						</div>
						<div class="introBoxTopRightText">
							<span></span>
							<span>关注网约房登记上报公众号</span>
						</div>
					</div>
				</div>
				<div class="introBoxBottom">
					<span>Fgdgshhyr 2018 yunke.com 网约房登记上报版权所有 京ICP备10355856325号</span>
					<span>联系方式：062-113401</span>
				</div>
			</div>
			<!-- logo定位-->
			<div id="logo">云客LoGo</div>
			<!-- logo定位-->
		
		
	</div>
		<script language="javascript">
		var logo = true;
		var logo2 = true;
		jQuery(function($){
		document.getElementById("isRememberUsername").checked=false;
		var mycookie = document.cookie;
		if(mycookie!=""){
			document.getElementById("isRememberUsername").checked=true;
		}else{
			document.getElementById("isRememberUsername").checked=false;
		} 
		
		
			//点击登录
			$(".login").click(function(){
				$(".login-box").show();
				$(".register-box").hide();
				$(".forget-box").hide();
			});
			//点击注册
			$(".register-box .register,.login-box .register").click(function(){
				$(".register-box").show();
				$(".login-box").hide();
				$(".forget-box").hide();
			});
			//点击忘记密码
			$(".forget-pass").click(function(){
				$(".forget-box").show();
				$(".login-box").hide();
				$(".register-box").hide();
			});
			
		$("#loginGetRandom").click(function(){
			yz();
	    });
	    
	    $("#loginGetRandom2").click(function(){
			yz2();
	    });
	    
	    $("#regBtn").click(function(){
	    		var operate_id_type = $('#operate_id_type').val();
	    		var operate_id_num = $('#operate_id_num').val();
	    		var operate_addr = $('#operate_addr').val();
	    		var operate_name = $('#operate_name').val();
	    		var operate_type = $('#operate_type').val();
	    		
	    		var phoneNum = $('#loginPhoneNumber').val();
	    		var yzm = $(".yzm").val();
	    		var old_yzm = $("#service_mess").val();
	    		var new_password = $("#new_password").val();
	    		var passReg = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
				if (phoneNum.length == 0) {
					alert("亲，请输入手机号");
					return false;
				}
				var reg = /^1[34578]\d{9}$/;
				if (!reg.test(phoneNum)) {
					alert("亲，请输入正确手机号");
					return false;
				}
				if(yzm.length == 0){
					alert("亲，请输入验证码");
					return false;
				}
				if(yzm != old_yzm){
					alert("亲，您输入的验证码错误");
					return false;
				}
				if(new_password.length == 0){
					alert("亲，请输入新密码");
					return false;
				}
				if(!passReg.test(new_password)){
					alert("密码必须为数字字母混合");
			     	return false;
				}
				if(new_password.length < 8){
				 	alert("密码长度不能小于8");
				    return false;
				}
				var operate_id_type = $('#operate_id_type').val();
	    		var operate_id_num = $('#operate_id_num').val();
	    		var operate_addr = $('#operate_addr').val();
	    		var operate_name = $('#operate_name').val();
	    		var operate_type = $('#operate_type').val();
	    		
		       var userdata = {"operate_phone":phoneNum,"password":new_password,"operate_name":operate_name,
		       "operate_type":operate_type,"operate_id_type":operate_id_type,"operate_id_num":operate_id_num,
		       "operate_addr":operate_addr};
				$.ajax({
					url:"regUser.action", 
					data: userdata,
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						if(data.msg == "LOGINSUCCESS"){
							alert("注册成功，即将跳转到登录页");
							document.location.replace("login.jsp");
						}else if(data.msg == "LOGINPHONEERROR"){
							alert("该用户号码已存在，请登录");
						}else{
							alert("手机号或密码错误！请重新输入。");
						}
					}, 
					error:function (error) {
						alert("网络状况不佳，用户登录失败！" + error.status);
				    }
		        });
		});
		    
	   
		//登录
		$("#loginBtn").click(function(){
		  if(doLogin()){
		   	 userlogin();
		    }
		});
		
		$("#password").keyup(function(event){
			if(event.keyCode == 13){
	            if(doLogin()){
			   	 	userlogin();
			    }
	        }
		});
	 });
	 
	 
	 //点击图片更换验证码
	function huan(){
		$.post("valiCodeImg.action?a="+Math.random(),function(){
		var src = $("#captchaImage").attr("src")+"?aa+"+Math.random();
			$("#captchaImage").prop("src",src);
		});	
	};
	//记住用户名
	 function rember(){
	 		var userid=$("#username").val();
	 		//alert(userid);
	 		
	 		var len=$(":checkbox:checked").length; 
			if(len>0){ 
		 	 isrember=1;
		 	
			}else{
				isrember=0;
			}
	 	$.ajax({
					url:"remberUsername.action", 
					data: {"userid":userid,"isRememberUsername":isrember},
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						 $("#isRememberUsername").val(userid);
						  
					}, 
					error:function (error) {
				    }
		        });
	 }
	 function zhuce(){
	    		var phoneNum = $('#loginPhoneNumber2').val();
	    		var yzm = $("#yzm2").val();
	    		var old_yzm = $("#service_mess").val();
	    		var new_password = $("#new_password2").val();
	    		var passReg = /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/;
				if (phoneNum.length == 0) {
					alert("亲，请输入手机号");
					return false;
				}
				var reg = /^1[34578]\d{9}$/;
				if (!reg.test(phoneNum)) {
					alert("亲，请输入正确手机号");
					return false;
				}
				if(yzm.length == 0){
					alert("亲，请输入验证码");
					return false;
				}
				if(yzm != old_yzm){
					alert("亲，您输入的验证码错误");
					return false;
				}
				if(new_password.length == 0){
					alert("亲，请输入新密码");
					return false;
				}
				if(!passReg.test(new_password)){
					alert("密码必须为数字字母混合");
			     	return false;
				}
				if(new_password.length < 8){
				 	alert("密码长度不能小于8");
				    return false;
				}
				//注册
				var userdata = {"operate_phone":phoneNum,"password":new_password};
				$.ajax({
					url:"updateUser.action", 
					data: userdata,
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						if(data.msg == "LOGINSUCCESS"){
							alert("修改密码成功，即将跳转到登录页");
							document.location.replace("login.jsp");
						}else if(data.msg == "LOGINPHONEERROR"){
							alert("该用户号码未注册，请注册新用户");
						}else{
							alert("手机号或密码错误！请重新输入。");
						}
					}, 
					error:function (error) {
						alert("网络状况不佳，用户登录失败！" + error.status);
				    }
	        	});
		};
	 
	 /*用户登录*/
	 function userlogin(){
	 	var code=$("#captcha").val();
	 	//alert(code);
		 var username = encodeURI($("#username").val());//用户名称
		 var userpass = $("#password").val();//用户密码
		$.ajax({ 
			url:"loginUser.action",
			data: {"operate_phone":username,"password":userpass,"valiCode":code},
			async:false,
			dataType:"json",
			type:"post",
			success:function (data) {
				if(data.msg2 == "YANERROR"){
				alert("验证码错误！请重新输入。");
				return false;
				}
				if(data.msg == "LOGINSUCCESS"){
					document.location.replace("index.jsp");
				}else{
					alert("手机号或密码错误！请重新输入。");
				}	
			}, 
			error:function (error) {
				alert("网络状况不佳，用户登录失败！" + error.status);
			}
		});
	   }
	 function doLogin(){
		  var username = $("#username").val();//用户名称
		  var userpass = $("#password").val();//用户密码
		  var code=$("#captcha").val();
	    if(username == null || username == ""){
	       alert("请输入手机号!");
	       return false;
	    }else if(code == null || code == ""){
	       alert("请输入验证码!");
	       return false;
	    } else if(userpass == null || userpass == ""){
	       alert("请输入密码!");
	       return false;
	    } 
	    return  true;
	}
	function yz(){
	var phoneNum = $('#loginPhoneNumber').val();
	if (phoneNum.length == 0) {
		alert("亲，请输入手机号");
		return false;
	}
	var reg = /^1[34578]\d{9}$/;
	if (!reg.test(phoneNum)) {
		alert("亲，请输入正确手机号");
		return false;
	}
	if(logo){
  //设定时间
   times=60;
   $("#loginGetRandom").removeClass("yzm-btn").addClass("yzm-btn");
   $("#loginGetRandom").html("("+times+")");
   //启动定时器
   t2 = window.setInterval("timer()",1000);
   //请求开始
	$.ajax({
		url:"gainRandom.action",
		data:{"phoneNum": phoneNum}, 
		async:false,
		dataType:"json",
		type:"post",
		success:function (data){
			$("#service_mess").val(""+ data.msg +"");
			logo = false;
			}, 
		error:function (error) {
		}
	});
	//请求结束
}
}

function yz2(){
	var phoneNum = $('#loginPhoneNumber2').val();
	if (phoneNum.length == 0) {
		alert("亲，请输入手机号");
		return false;
	}
	var reg = /^1[34578]\d{9}$/;
	if (!reg.test(phoneNum)) {
		alert("亲，请输入正确手机号");
		return false;
	}
	if(logo2){
  //设定时间
   times2=60;
   $("#loginGetRandom2").removeClass("yzm-btn").addClass("yzm-btn");
   $("#loginGetRandom2").html("("+times2+")");
   //启动定时器
   t2 = window.setInterval("timer2()",1000);
   //请求开始
	$.ajax({
		url:"gainRandom.action", 
		data:{"phoneNum": phoneNum}, 
		async:false,
		dataType:"json",
		type:"post",
		success:function (data) {
			$("#service_mess").val(""+ data.msg +"");
			logo2 = false;
			}, 
		error:function (error) {
		}
	});
	//请求结束
}
}

var t2;
var t22;
var times=60;
var times2=60;

//定时器方法
function timer(){
	 times--;
	 $("#loginGetRandom").html("("+times+")");
	 if(times==0){
		 //倒计时结束，定时器销毁
		 window.clearInterval(t2);
		 $("#loginGetRandom").html("重新获取");
		 logo = true;
	 $("#loginGetRandom").removeClass("yzm-btn").addClass("yzm-btn");
	 }
}

//定时器方法
function timer2(){
	 times2--;
	 $("#loginGetRandom2").html("("+times2+")");
	 if(times2==0){
		 //倒计时结束，定时器销毁
		 window.clearInterval(t22);
		 $("#loginGetRandom2").html("重新获取");
		 logo2 = true;
	 $("#loginGetRandom2").removeClass("yzm-btn").addClass("yzm-btn");
	 }
}
  </script>
	</body>
</html>
