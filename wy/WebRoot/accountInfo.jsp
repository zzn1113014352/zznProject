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
		<title>账户信息</title>
		<link rel="shortcut icon" href="<%=basePath%>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath%>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/order.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />
	</head>
	<style>
		#cvs{
			display:none;
			border-radius:50%;
		}
	</style>
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
			            <span class="title">账户信息</span>
			        </div>
			        <div class="order-right">
			            <span class="search order" onclick="gz()">更新</span>
			        </div>
			    </div>
			    <div class="account-box">
			        <div class="head">
			            <canvas id="cvs" width="121" height="121">
			            </canvas>
			            <img src="<%=basePath%>assets/images/account-tx.png" class="tx imgUpload"/>
			            <a href="">
			                <input type="file" id="upload"/>
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit"/>
			            </a>
			        </div>
			        <ul>
			            <li>
			                <span>昵称：</span>
			                <input readonly type="text" value="" id="nickname_s">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			            <li>
			                <span>身份证号：</span>
			                <input readonly type="text" value="" id="idcard_s">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			            <li>
			                <span>真实姓名：</span>
			                <input readonly type="text" value="" id="name_s">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			            <li>
			                <span>性别：</span>
			                <select name="sex" id="sexSelect">
			                    <option value="男">男</option>
			                    <option value="女">女</option>
			                </select>
			                <input readonly type="text" value="" id="sex">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			            <li>
			                <span>手机号：</span>
			                <input readonly type="text" value="" id="phone_s">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			            <li>
			                <span>地区：</span>
			                <input readonly type="text" value="" id="district">
							<span id="city">
								<select class="prov"></select>
								<select class="city" disabled="disabled"></select>
								<select class="dist" disabled="disabled"></select>
							</span>
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1" id="citySelect" click=""/>
			            </li>
			            <li>
			                <span>邮箱：</span>
			                <input readonly type="email" value="" id="email_s">
			                <img src="<%=basePath%>assets/images/account-edit.png" class="edit1"/>
			            </li>
			        </ul>
			    </div>
			    <input type="text" value="" id="mess" style="display:none;color:#F1F2F7;" />
				<input type="text" value="" id="dq" style="display:none;color:#F1F2F7;" />
				<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
				<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
			</div>
			</section>
		</div>
		<!--更新成功弹窗-->
		<!--<div class="mask none"></div>-->
		<!-- <div class="updates-box none">
			<div class="tankuangTop">
				<span class="title">账户管理</span>
				<img class="tankuangTopImg" src="assets/images/close.png" alt=""/>
			</div>
			<div class="updateBottom">
				<img src="assets/images/updates.png"/>
				<span>恭喜！更新成功！</span>
			</div>
		</div> -->
		<script src="<%=basePath%>assets/js/jquery-1.11.2.min.js"></script>
		<script src="<%=basePath%>assets/js/common.js"></script>
		<script type="text/javascript" src="<%=basePath%>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath%>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="<%=basePath%>assets/plugins/viewport/viewportchecker.js"></script>
		<script src="<%=basePath%>assets/js/scripts.js"></script>
		<script src="<%=basePath%>assets/js/include.js"></script>
	</body>
	<script>
		$(function(){
				/* $(".order").click(function(){
					$(".updates-box,.mask").show();
				}) */
				if("${userid}"==""){
	    	   		document.location.replace("login.jsp");	
				}
				informationChange();
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
		});
		
		function informationChange(){
			var userid = $("#userid").val();
			var basepath = $("#basepath").val();
			gainList(userid,basepath);
		    $('li img').click(function(){
		        var idName = $(this).siblings('input').attr('id');
		        if( idName == 'sex' ){
		            $(this).siblings('input').hide();
		            $('#sexSelect').show();
		        }else if( idName == 'district' ){
		            $(this).siblings('input').hide();
		            $('#city').show().citySelect({
		                prov: "陕西",
		                city: "西安",
		                dist: "雁塔区",
		                nodata: "none"
		            });
		        }
		        $(this).siblings('input').removeAttr('readonly').css('border','1px solid #e1e1e1');
		    });
		    $('.order').unbind('click');
		    $('.order').bind('click',function(){
		    	gz();
		        $('input').attr('readonly','readonly').css('border','none').show();
		        $('#sexSelect').hide();
		        $('#city').hide();
		    	
		    });
		    $('#citySelect').click(function(){
				$(this).attr('click','clicked');
			})
		    var input1 = document.getElementById("upload");
		    if(typeof FileReader==='undefined'){
		        input1.setAttribute('disabled','disabled');
		    }else{
		        input1.addEventListener('change',readFile,false);
		    }
		    function readFile(){
		        var file = this.files[0];//获取上传文件列表中第一个文件
		        if(!/image\/\w+/.test(file.type)){
		            alert("文件必须为图片！");
		            return false;
		        }
		        var reader = new FileReader();//实例一个文件对象
		        reader.readAsDataURL(file);//把上传的文件转换成url
		        console.info("----------上传服务器文件开始----------");
				var formData = new FormData();
			    formData.append('file', file);
			    formData.append('id', userid);
				$.ajax({
							url:"uploadFile.action",
							data:formData,
							type:"post",
							dataType:'json',
							async:false,
							cache: false,
			        		contentType: false,
			        		processData: false,
							success:function(msg){
								if(msg.message == "error"){
									alert("上传失败！");
								}else{
									$("#mess").val(msg.message);
								}
							},
							error:function(error){
								console.log("网络数据异常！"+error);
							}
			    });
				console.info("----------上传服务器文件结束----------");
				//上传文件对象到服务器中 end
		        reader.onload = function(e){
		            var image = new Image();
		            image.src = e.target.result;
		            var max=200;
		            image.onload = function(){
		                var canvas = document.getElementById("cvs");
		                var ctx = canvas.getContext("2d");
		                ctx.clearRect(0, 0, canvas.width, canvas.height);
		                ctx.drawImage(image, 0, 0, 121, 121);
		                $('#cvs').show();
		                $('.imgUpload').hide();
		            };
		        };
		    }
		}
		
		//初始化账户信息
		function gainList(userid,basepath){
			        $.ajax({
			        
							url:"initUser.action",
							data: {userid:userid},
							async:false,
							dataType:"json",
							type:"post",
							success:function (data) {
								var mm = data.inituser;
								//alert(mm);
								//昵称
								$("#nickname_s").val(mm.nickname);
								//身份证号
								$("#idcard_s").val(mm.idcard);
								//真实姓名
								$("#name_s").val(mm.name);
								//性别
								if(mm.sex == "男"){
									$("#sex").val("男");
								}else if(mm.sex == "女"){
									$("#sex").val("女");
								}else{
								}
								//手机号
								$("#phone_s").val(mm.phone);
								//地区
								$("#district").val(mm.diqu);
								//邮箱
								$("#email_s").val(mm.eail);
								$("#dq").val(mm.diqu);
								//头像
								if(mm.user_img != null && mm.user_img != ""){
									//放默认图
									var image = new Image();
									image.src = basepath+"head_img/"+mm.user_img;
									var max=200;
									image.onload = function(){
										var canvas = document.getElementById("cvs");
										var ctx = canvas.getContext("2d");
										ctx.clearRect(0, 0, canvas.width, canvas.height);
										ctx.drawImage(image, 0, 0, 121, 121);
										$('#cvs').show();
										$('.imgUpload').hide();
									};
								}
							},
							error:function (error) {
						    }
			        });
		}

		//账户信息更新
		function gz(){
		
			//昵称
			var nickname_s = $("#nickname_s").val();
			//身份证号
			var idcard_s = $("#idcard_s").val();
			//真实姓名
			var name_s = $("#name_s").val();
			//性别
			var sex = $("#sexSelect").val();
			//手机号
			var phone_s = $("#phone_s").val();
			//邮箱
			var email_s = $("#email_s").val();
			//邮箱正则校验
			var regEmail = /^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/;
			var userid = $("#userid").val();
			if (!regEmail.test(email_s)){
				alert("邮箱号码输入不正确，请重新输入");
				return false;
			}
			var data_shengfen = $('#dq').val();//从数据库中拿到的
			if( $('#citySelect').attr('click') == ""){
				$('#district').val(data_shengfen);
			}else{
				$('#district').val($('.prov').find('option:checked').val() + '省' + $('.city').find('option:checked').val() + '市' + $('.dist').find('option:checked').val());
				data_shengfen = $('.prov').find('option:checked').val() + '省' + $('.city').find('option:checked').val() + '市' + $('.dist').find('option:checked').val();
			}
			//获取地区 */
		    $.ajax({
				url:"upadteUserAllRE.action",
				data: {userid:userid,nickname_s:nickname_s,idcard_s:idcard_s,name_s:name_s,sex:sex,phone_s:phone_s,district:data_shengfen,email_s:email_s},
				async:false,
				dataType:"json",
				type:"post",
				success:function (data) {
				console.log(data);
					if(data.result == "success"){
						alert("用户更新成功");
						
						
						
						
						
							
						//展示更新层
						
						
						
						
						
						
						
						
						
						
						
						
									
					}
				},
				error:function (error){
			    }
		     });
		}
	</script>
</html>