<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dhcc.common.util.CommUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String random_id = CommUtil.getID();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>添加房源</title>
		<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/houseManage.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/addHouse.css" rel="stylesheet" />
		<!--账户信息引进-->
		<link href="<%=basePath %>assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		<!--<link href="<%=basePath %>assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />-->
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
		<!--日历-->
		<link rel="stylesheet" href="<%=basePath %>assets/layui/css/layui.css"  media="all">
		<!--日历-->
		<style>
			#canvas{
				width:auto;
				height:auto;
				overflow:hidden;
				display:none;
				border-radius: 0!important;
				margin-bottom:10px;
			}
			#canvas	img{
				float:left;
				margin-right:10px;
				margin-top:10px;
				width:120px!important;
				height:120px!important;
				overflow:hidden;
			}
			#canvas2{
				width:auto;
				height:auto;
				overflow:hidden;
				display:none;
				border-radius: 0!important;
				margin-bottom:10px;
			}
			#canvas2 img{
				float:left;
				margin-right:10px;
				margin-top:10px;
				width:120px!important;
				height:120px!important;
				overflow:hidden;
			}
			#upload2{
				width:100%;
				height:100%;
				overflow:hidden;
				position:absolute;
				opacity:0;
				z-index:1000;
			}		
		</style>
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
							<span class="title">添加订单</span>
						</div>
						<div class="order-right">
							<img src="<%=basePath %>assets/images/return.png" class="return"/>
						</div>
					</div>
					<div class="content-box list">
						<form action="<%=basePath%>insertOrder.action" method="post" id="addOrder" name="addOrder">
						<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid" name="operate_id"/>
						<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
							<ul class="content" style="padding-bottom:0">
								<li class="titles clearfix">订单信息</li>
							<!-- 	<li class="clearfix">
									<span>房源：</span>
									<input type="text" value="" placeholder="请输入房源" name="house"/>
								</li> -->
								<li class="clearfix">
									<span>房间：</span>
									<select name="net_house_id" id="nid">
										<option value="" selected="selected">选择房间</option>
									</select>
								</li>
							<!-- 	<li class="clearfix">
									<span>上传平台：  </span>
									<select name="source">
										<option value="" selected="selected">选择平台</option>
										<option value="途家网" >途家网</option>
										<option value="途牛网" >途牛网</option>
									</select>
								</li> -->
								<li class="clearfix">
									<span>入住人数：</span>
									<input type="text" value="" placeholder="请输入入住人数" name="people"/>
								</li>
								<li class="clearfix">
									<span>房费：</span>
									<input type="text" value="" placeholder="请输入房费" name="money"/>
								</li>
								<li class="clearfix">
									<span>姓名：</span>
									<input type="text" value="" placeholder="请输入姓名" name="reserve_name"/>
								</li>
								<li class="clearfix">
									<span>手机号：</span>
									<input type="text" value="" placeholder="请输入手机号" name="reserve_phone"/>
								</li>
								<li class="clearfix">
									<span>证件类型：</span>
									<input type="text" value="" placeholder="请输入证件类型" name="reserve_id_type"/>
								</li>
								<li class="clearfix">
									<span>证件号码：</span>
									<input type="text" value="" placeholder="请输入证件号码" name="reserve_id_num"/>
								</li>
								<li class="clearfix">
									<span>入住时间：</span>
									<input type="text" class="layui-input" id="test5" placeholder="请选择入住时间" name="reside_date">
								</li>
								<li class="clearfix">
									<span>退房时间：</span>
									<input type="text" class="layui-input" id="test6" placeholder="请选择退房时间" name="reside_retreat_date">
								</li>
								<!-- <li class="clearfix">
									<span>房号：</span>
									<input type="text" name="housenum"/>
								</li> -->
								
							</form>
							
							<div class="save" onclick="addOrder222()">提交</div>
					</div>
				</div>
			</section>
		</div>
		<!--更新成功弹窗-->
		<div class="mask none"></div>
		<div class="updates-box none">
			<img src="assets/images/updates.png"/>
			<span>该房源已提交审核！</span>
		</div>
		<script src="assets/js/jquery-1.11.2.min.js"></script>
		<script src="assets/js/citySelect/cityselect.js"></script>
		<script src="assets/layui/layui.js" charset="utf-8"></script>
		<script src="assets/js/common.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="assets/plugins/viewport/viewportchecker.js"></script>
		<script src="assets/js/scripts.js"></script>
		<script src="assets/js/include.js"></script>
	</body>
	<script>
	layui.use('laydate', function(){
			var laydate = layui.laydate;
			//直接嵌套显示
			laydate.render({
            elem: '#test5'
            ,type: 'datetime'
        });
        laydate.render({
            elem: '#test6'
            ,type: 'datetime'
        });
	});
	function addOrder222(){
		var nid = $("#nid").val();
		if(nid == ""){
			alert("请选择房间！");
		}else{
		document.getElementById("addOrder").submit();//表单提交
			//更新弹出
		$(".save").click(function(){
			$(".updates-box,.mask").show();
		}); 
		//关闭弹窗
		$(".mask").click(function(){
			$(".updates-box,.mask").hide();
		});
		}
		
	}	
		$('.income-box .income').click(function(){
			if( $(this).attr('click') == '' || $(this).attr('click') == undefined ){
				$(this).addClass('active').attr('click','clicked');
			}else if( $(this).attr('click') == 'clicked' ){
				$(this).removeClass('active').attr('click','');
			}
		});
		//返回房源列表
		$('.return').click(function() {
			window.location.href = 'orderManage.jsp';
		});
		
		$(function(){
		var operate_id = '${userid}';
		$.ajax({
	        	url:"QueryHouse.action",
	        	data:{"operate_id":operate_id},
				async:false,
				dataType:"json",
				type:"post",
				success:function (date) {
					var mm = date.houseAll;
						$.each(mm,function(index,item){
						$("#nid").append("<option value=\""+ item.net_house_id +"\">"+ item.house +"</option>");
		            });
				}, 
				error:function (error) {
				}
			});
		
		
		
		});
		  
	</script>

</html>