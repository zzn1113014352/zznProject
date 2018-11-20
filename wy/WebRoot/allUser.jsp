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
	<title>用户列表</title>
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
	</div>
	<section id="main-content" class="">
		<div class="wrapper main-wrapper row">
			<div class="order-top user-top clearfix">
				<div class="order-left">
					<span class="chunk"></span>
					<span class="title">用户列表</span>
					<span class="buttonCommon addUser aboutUser" item="addUser">添加用户</span>
					<!--<span class="buttonCommon import">批量导入</span>-->
					<!--<span class="ifIndentify">是否认证</span>-->
				</div>
				<form id="form1" action="<%=basePath %>findAlluserByPage.action" method="post">	
					<div class="order-right">
						<span class="search order" onclick="document.getElementById('form1').submit()">搜索</span>
						<input type="text" placeholder="姓名/手机/身份证" class="write number" id="s_data" name = "result" value="" />
					</div>
				</form>
			</div>
			<div class="content-box">
				<table class="content order-list">
					<tr class="kuai"></tr>
					<tr>
						<th class="check-box">
							<input type="checkbox" class="check" id="ck" onclick="checkAll()"/>
						</th>
						<th>姓名</th>
						<th>身份证号</th>
						<th>联系方式</th>
						<th>身份认证</th>
						<th>创建日期</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${pageBean.pageList}" var="m">
					<tr>
						<td>
							<input type="checkbox" class="check" name="cbid"  value="${m.id}" type="checkbox"/>
						</td>
						<td>${m.name}</td>
						<td>${m.idcard}</td>
						<td>${m.phone}</td>
						<td>
							    <c:if test="${m.shenfen_renzheng==0}">
	                        		<span style="color:green;font-weight:bold;">已认证</span>
								</c:if>
								<c:if test="${m.shenfen_renzheng==1}">
	                        		<span style="color:red;font-weight:bold;">未认证</span>
								</c:if>
						</td>
						<td>${m.c_time}</td>
						<td item="editUser" class="aboutUser" onclick="bianji('${m.id}')">编辑</td>
					</tr>
					</c:forEach>
				</table>
				 <!-- 分页开始 -->
                <div class="notice-bottom clearfix">
                			<span class="del" onclick="del()">删除</span>
							<div class="page-box">
								
								<a href="##" class="sure" onclick="jump();">确定</a>
								<input type="text" class="point-to" id="jump"/>
								<span class="tiao">跳转到</span>
								<ul class="page">
									<!-- 上一页 -->
								<c:if test="${pageBean.currentPage==1}">
									<li class="disabled">
										<a href="javascript:;" id="pageleft">
											<
										</a>
									</li>
								</c:if>
								<c:if test="${pageBean.currentPage!=1}">
									<li>
										<a href="${pageContext.request.contextPath }/findAlluserByPage.action?currentPage=${pageBean.currentPage-1 }">
											<
										</a>
									</li>
								</c:if>
									
								<!-- 循环总页数 -->
								<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
									<c:if test="${pageBean.currentPage==page }">
										<li class="active"><a href="javascript:void(0);">${page }</a></li>
									</c:if> 
									<c:if test="${pageBean.currentPage!=page }">
										<li><a href="${pageContext.request.contextPath }/findAlluserByPage.action?currentPage=${page }">${page }</a></li>
									</c:if> 
								</c:forEach>
									<!--下一页-->
								<c:if test="${pageBean.currentPage==pageBean.totalPage}">
									<li class="disabled">
										<a href="javascript:;" id="pageright">
										>
										</a>
									</li>
								</c:if>
								<c:if test="${pageBean.currentPage!=pageBean.totalPage}">
									<li>
										<a href="${pageContext.request.contextPath }/findAlluserByPage.action?currentPage=${pageBean.currentPage+1 }">
										>
										</a>
									</li>
								</c:if>
								</ul>
							</div>
						</div>
                <!-- 分页结束 -->
			</div>
		</div>
	</section>
</div>
<!-- 弹窗   -->
<div class="mask none"></div>
<div class="look-box addUserTan none">
	<span class="title">添加</span>
	<ul>
		<li>
			<span>姓名:</span>
			<input type="text" name="name" id="username" value="" maxlength="20"/>
		</li>
		<li>
			<span>身份证号:</span>
			<input type="text" name="number" id="idcard" value="" maxlength="30"/>
		</li>
		<li>
			<span>联系方式:</span>
			<input type="text" name="phone"  id="lianxifangshi" value="" maxlength="11"/>
		</li>
	</ul>
	<div class="sure-btn" onclick="t_queding()">确定</div>
</div>
<!--编辑-->
<div class="look-box editUserTan none">
	<span class="title">编辑</span>
	<ul>
		<li>
			<span class="editUserName">姓名:</span>
			<input type="text" name="name" id="username_" value=""  maxlength="20"/>
		</li>
		<li>
			<span class="editUseridentifyNumber">身份证号:</span>
			<input type="text" name="number" id="idcard_" value=""  maxlength="30"/>
		</li>
		<li>
			<span class="editUserPhone">联系方式:</span>
			<input type="text" name="phone" id="lianxifangshi_" value="" maxlength="11"/>
		</li>
	</ul>
	<input type="text" value="" id="fuzhi" style="display:none;"/>
	<div class="sure-btn" onclick="b_queding()">确定</div>
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
		
	
		
		
		$('.city').show().citySelect({
			prov: "陕西",
			city: 'none',
			dist: 'none',
			nodata: 'none'
		});
	});
	$(".aboutUser[item='editUser']").css('cursor','pointer');
	$(".aboutUser").click(function(){
		var item = $(this).attr('item');
		if( item == 'addUser' ){
			$(".mask,.addUserTan").show();
			$(".sure-btn,.mask").click(function(){
		        $(".mask,.look-box").hide();
		    });
		}
	});
	
	function bianji(id){
		$("#fuzhi").val(id);
		$(".mask,.editUserTan").show();
		//开始赋值
		$.ajax({
			url:"findAlluserByPageId.action",
			data:{"id":id},
			dataType:"json",
			type:"post",
			success:function (date) {
				var mm = date.model;
				$("#username_").val(mm.name);
				$("#idcard_").val(mm.idcard);
				$("#lianxifangshi_").val(mm.phone);
			}, 
			error:function (error) {
			}
		});
		$(".sure-btn,.mask").click(function(){
	        $(".mask,.look-box").hide();
	    });
	}
	
	
	
	//跳转
	function jump(){
		var pages = document.getElementById("jump").value;
		if(pages == 0){
			alert("请输入跳转页数");
		}else{
			window.location.href= "${pageContext.request.contextPath }/findAlluserByPage.action?currentPage=" + pages;
		}
	}
	
	function t_queding(){
		var username = $("#username").val();
		var idcard = $("#idcard").val();
		var lianxifangshi = $("#lianxifangshi").val();
		if(username.length == 0){
			alert("姓名不能为空");
			return false;
		}
		if(idcard.length == 0){
			alert("身份证号不能为空");
			return false;
		}
		if(lianxifangshi.length == 0){
			alert("联系方式不能为空");
			return false;
		}
		$.ajax({
			url:"insert_WyfUser.action",
			data:{"username":username,"idcard":idcard,"lianxifangshi":lianxifangshi},
			dataType:"json",
			type:"post",
			success:function (date) {
				var mm = date.result;
				if(mm == "success"){
					alert("添加成功！");
					$("#username").val("");
					$("#idcard").val("");
					$("#lianxifangshi").val("");
					$(".mask,.look-box").hide();
					//刷新本页
					window.location.href = "${pageContext.request.contextPath }/findAlluserByPage.action";
				}else{
					if(mm == "cunzai"){
						alert("数据已存在不能重复添加该用户");
						$("#username").val("");
						$("#idcard").val("");
						$("#lianxifangshi").val("");
						$(".mask,.look-box").hide();
					}
				}
			},
			error:function (error) {
				alert("数据添加异常！");
			}
		});
	}
	
	function b_queding(){
		var username = $("#username_").val();
		var idcard = $("#idcard_").val();
		var lianxifangshi = $("#lianxifangshi_").val();
		var id_ = $("#fuzhi").val();
		if(username.length == 0){
			alert("姓名不能为空");
			return false;
		}
		if(idcard.length == 0){
			alert("身份证号不能为空");
			return false;
		}
		if(lianxifangshi.length == 0){
			alert("联系方式不能为空");
			return false;
		}
		$.ajax({
			url:"update_WyfUser.action",
			data:{"username":username,"idcard":idcard,"lianxifangshi":lianxifangshi,"id":id_},
			dataType:"json",
			type:"post",
			success:function (date) {
				var mm = date.result;
				if(mm == "success"){
					alert("修改成功！");
					$("#username").val("");
					$("#idcard").val("");
					$("#lianxifangshi").val("");
					$(".mask,.look-box").hide();
					//刷新本页
					window.location.href = "${pageContext.request.contextPath }/findAlluserByPage.action";
				}else{
					if(mm == "cunzai"){
						alert("数据已存在不能重复修改该用户");
						$("#username").val("");
						$("#idcard").val("");
						$("#lianxifangshi").val("");
						$(".mask,.look-box").hide();
					}
				}
			}, 
			error:function (error) {
				alert("数据更新异常");
			}
		});
	}
	
	//删除一条
	function del(){
		//获取选取的id
		var ids =$("input[name='cbid']:checked");
		//创建数组
		var cids = new Array();
		//进行数组遍历
		$.each(ids,function(index,elem){
			var id = $(this).val();//正在遍历的数组
			cids.push(id);
		});
		if(ids.size() == 1){
			$.ajax({
				url:"user_sDel.action",
				data:{"id":cids.toString()},
				dataType:"json",
				type:"post",
				success:function (date) {
					var mm = date.result;
					if(mm == "success"){
						alert("删除成功！");
						//刷新本页
						window.location.href = "${pageContext.request.contextPath }/findAlluserByPage.action";
					}
				}, 
				error:function (error) {
					alert("数据删除异常！");
				}
			});
		}else{
			alert("请选中一条数据");
		}
	}
	
	//选中所有复选框
	function checkAll(){
		var flag = $("#ck").prop("checked");//获得状态
		$("input[name='cbid']").prop("checked",flag);
	}
	
	function serachUser(){
		var s_data = $("#s_data").val();
		$.ajax({
			url:"findAlluserByPage.action",
			data:{"result":s_data},
			dataType:"json",
			type:"post",
			success:function (date) {
				//刷新本页
				window.location.href = "${pageContext.request.contextPath }/findAlluserByPage.action";
			},
			error:function (error) {
			}
		});
	}
</script>
</html>