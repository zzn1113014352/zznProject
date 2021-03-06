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
		<title>订单列表</title>
		<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		
			<!--账户信息引进-->
		<link href="<%=basePath %>assets/css/common.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />
		<!--账户信息引进-->
		<!--账户安全引进-->
		<link href="<%=basePath %>assets/css/safe.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/js/lib/honeySwitch.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="<%=basePath %>assets/css/button/normalize.css">
		<link rel="stylesheet" href="<%=basePath %>assets/css/button/style.css" media="screen" type="text/css" />
		<!--版本介绍引进-->
		<!-- -->
		<link href="<%=basePath %>assets/css/version.css" rel="stylesheet" type="text/css" />
		
	</head>
	<style>
	.add-order{
		margin-top:25px;
		margin-left:10px;
	}
	.add-order:hover{
		color:#fff;
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
							<span class="title">订单列表</span>
							<form id="choosePc" action="<%=basePath%>queryByPc.action" method="post" style="float: left; margin-right:23px;">
							
							<select class="choose plat" id="xz" onchange="queryPc();" name="pc">

							</select>
							</form>
							<form id="chooseCheck" action="<%=basePath%>queryByPc.action" method="post" style="float: left; margin-right:23px;">
							<select class="choose" id="xzzt" onchange="queryCheck();" name="states">
							
							</select>
							</form>
							
							<form id="chooseTime" action="<%=basePath%>queryByTime.action" method="post" style="float: left;">
							<input type="date" value="" placeholder="选择时间" class="time" name="start" onchange="document.getElementById('chooseTime').submit()"/>
							</form>
							<span class="add-order" id="add" style="width:50px;" onclick="addOrder()">添加</span>
							
							<!-- <a href="add.jsp" class="add-order">添加</a> -->
						</div>
						
					<!-- 搜索start -->
					<form id="form1" action="<%=basePath %>queryByName.action" method="post">	
						<div class="order-right">
							<span onclick="document.getElementById('form1').submit()" class="search order">搜索</span>
							<input type="text" placeholder="请输入姓名进行搜索" class="write number" name="name"/>
						</div>
					</form>
					<!-- 搜索stop -->
						
					</div>
					<div class="content-box">
						<table class="content order-list" id="orderAll">
							<tr class="kuai"></tr>
							<tr>
								<!-- <th class="check-box">
									<input type="checkbox" class="check" />
								</th> -->
								<th>房源</th>
								<th>订单来源</th>
							<!-- 	<th>下单时间</th> -->
								<!-- <th>到期时间</th> -->
								<th>姓名</th>
								<th>联系方式</th>
								<th>授权码</th>
								<th>入住时间</th>
								<th>退房时间</th>
								<th>房费</th>
								<th>入住人数</th>
								<!-- <th>房号</th> -->
								<th>操作</th>
							</tr>
						<c:forEach items="${pageBean.pageList}" var="m">
							<tr>
							<%-- 	<td>
									<input type="checkbox" class="check" value="${m.id}"/>
								</td> --%>
								<td>${m.house}</td>
								<td>${m.source }</td>
								<td>${m.reserve_name }</td>
								<td>${m.reserve_phone}</td>
								<td>${m.oauth_code }</td>
								<td>${m.start }</td>
								<td>${m.stop }</td>
								
								<%-- <td>${m.orders_date }</td> --%>
								<td>${m.money}</td>
								<td>${m.people }</td>
								<%-- <td>${m.housenum }</td> --%>
								<td>
									<a href="##" class="operate look-order" onclick="findById(${m.id})">查看</a>
								</td>
							</tr>
						</c:forEach>
							
						</table>
						<div class="notice-bottom clearfix">
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
										<a href="${pageContext.request.contextPath }/findOrderByPage.action?currentPage=${pageBean.currentPage-1 }">
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
										<li><a href="${pageContext.request.contextPath }/findOrderByPage.action?currentPage=${page }">${page }</a></li>
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
										<a href="${pageContext.request.contextPath }/findOrderByPage.action?currentPage=${pageBean.currentPage+1 }">
										>
										</a>
									</li>
								</c:if>	
									
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
	<!--查看弹窗-->
		<div class="mask none"></div>
		<div class="look-order-box none">
			<span class="title">订单详情</span>
			<ul class="clearfix">
				<li>
					<span>房源:</span>
					<i id="house"></i>
				</li>
				<li>
					<span>订单来源：</span>
					<i id="order_source"></i>
				</li>
				<li>
					<span>入住时间:</span>
					<i id="start"></i>
				</li>
				<li>
					<span>退房时间:</span>
					<i id="stop"></i>
				</li>
				<li>
					<span>订单状态：</span>
					<i id="states"> </i>
				</li>
				<li>
					<span>预住人:</span>
					<i id="reserve_name"></i>
				</li>
				<li>
					<span>证件号码:</span>
					<i id="reserve_id_num"> </i>
				</li>
				<li>
					<span>付款:</span>
					<i id="money_s"></i>
				</li>
			</ul>
			<div class="sure-btn">确定</div>
		</div>
		
		</div>
		<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
		<script src="<%=basePath %>assets/js/jquery.ocupload-1.1.2.js"></script>
		<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
		<script src="<%=basePath %>assets/js/scripts.js"></script>
		<script src="<%=basePath %>assets/js/include.js"></script>
		
		<!-- 新增js start -->
		<script src="<%=basePath %>assets/js/citySelect/city.min.js"></script>
		<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath %>assets/js/common.js"></script>
		<%-- <script src="<%=basePath %>assets/js/system.js"></script> --%>
		<script src="<%=basePath %>assets/js/notice.js"></script>
		<!-- 新增js end -->

		
<script type="text/javascript">
	      $(function(){
			if("${userid}"==""){
	    	   document.location.replace("login.jsp");	
		    }
			});

		function addOrder(){
			window.location.href = 'addOrder.jsp';
		}

		function queryPc(){
			 var form = document.getElementById("choosePc");
			 form.submit();
		}
		
		function queryCheck(){
			 var form = document.getElementById("chooseCheck");
			 form.submit();
		}
		
		function jump(){
			var pages = document.getElementById("jump").value;
			if(pages == 0){
				alert("请输入跳转页数")
			}else{
			window.location.href= "${pageContext.request.contextPath }/findOrderByPage.action?currentPage=" + pages;
			}
		}

		function findById(id){
			$.ajax({
				url:"queryById.action",
				dataType:"json",
				data:{"id":id},
				type:"post",
				success:function (date) {
					var m = date.orderModel;
					$("#house").html(m.house);
					$("#order_source").html(m.source);
					$("#start").html(m.start);
					$("#stop").html(m.stop);
					$("#states").html(m.states);
					$("#reserve_name").html(m.reserve_name);
					$("#reserve_id_num").html(m.reserve_id_num);
					$("#money_s").html(m.money + " 元");
				}, 
				error:function (error) {
				}
			});
		}
		
		//查看弹窗
		$(".look-order").click(function(){
				$(".look-order-box,.mask").show();
			})
			
			$(".mask,.sure-btn").click(function(){
				$(".look-order-box,.mask").hide();
			})

		
		//关闭查看弹窗
		$(".edit-sure,.mask").click(function(){
			$(".mask").hide();
			$(".edit-con").hide();
		});
		
	/* 	$(function(){
			if("${userid}"==""){
	    	   document.location.replace("login.jsp");	
		    }
			
		//新增顶部脚本 start
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
		   	});  */
			//新增顶部脚本 end  */
			
	        $.ajax({
				url:"showOpc.action",
				async:false,
				dataType:"json",
				type:"post",
				success:function (date) {
					var mm = date.opcAll;
						$("#xz").append("<option>选择平台</option>");
						$.each(mm,function(index,item){
						$("#xz").append("<option name=\"pc\" value=\""+ item.pcname +"\"  >"+ item.pcname +"</option>");
		            });
				}, 
				error:function (error) {
				}
			});
			
	        $.ajax({
	        	url:"showOsm.action",
				async:false,
				dataType:"json",
				type:"post",
				success:function (date) {
					var mm = date.osm;
						$("#xzzt").append("<option>选择状态</option>");
						$.each(mm,function(index,item){
						$("#xzzt").append("<option value=\""+ item.statename +"\">"+ item.statename +"</option>");
		            });
				}, 
				error:function (error) {
				}
			});
</script>
	</body>

</html>