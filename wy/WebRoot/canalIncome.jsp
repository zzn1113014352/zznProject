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
		<title>渠道收入</title>
		<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
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
		<!--版本介绍引进-->
		<!-- -->
		<link href="<%=basePath %>assets/css/version.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<div class='page-topbar'>
			<div class='logo-area'>
				云&nbsp;&nbsp;&nbsp;&nbsp;客
			</div>
			<div class='quick-area clearfix'>
			<div class='pull-right'>
				<div id="userCenter">
					<span class="userName">
						<img src="<%=basePath %>assets/images/tx.png" class="tx" />
						<span class="name" style="width:auto;height:auto;overflow:hidden;" id="nickname_ss"></span>
						<span id="triggle">
							
						</span>
					</span>
					<span class="userCenterSelect">
						<span item="information" class="spanHover">
							<img src="<%=basePath %>assets/images/icon/detail.png" alt=""/>
							<span>账户信息</span>
						</span>
						<span item="safety" class="spanHover">
							<img src="<%=basePath %>assets/images/icon/safe.png" alt=""/>
							<span>账号安全</span>
						</span>
						<span item="intro" class="spanHover">
							<img src="<%=basePath %>assets/images/icon/version.png" alt=""/>
							<span>版本介绍</span>
						</span>
						<span item="exit" class="spanHover">
							<img src="<%=basePath %>assets/images/icon/exit.png" alt=""/>
							<span>退出登录</span>
						</span>
					</span>
		</div>
				<div id="accountCenter">
					<span class="userName">
						<img src="<%=basePath %>assets/images/info.png" class="info" />
					</span>
				</div>
			</div>
			<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
			<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath%>" id="basepath"/>
		</div>
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
							<span class="title">渠道收入</span>
							<ul class="income-box">
								<li class="income active">所有</li>
								<li class="income">途牛</li>
								<li class="income">途家</li>
								<li class="income">榛果</li>
								<li class="income">驴妈妈</li>
							</ul>
						</div>
					</div>
					<div class="content-box">
						<table class="content order-list">
							<tr class="kuai"></tr>
							<tr>
								<th style="width: 20%;">房源</th>
								<th style="width: 20%;">时间</th>
								<th style="width: 20%;">收入</th>
							</tr>
						<c:forEach  items="${pageBean.pageList}" var="m">
							<tr>
								<td>${m.source }</td>
								<td>${m.start }/${m.stop }</td>
								<td>${m.money }</td>
							</tr>
						</c:forEach>	
						</table>
						<div class="notice-bottom clearfix">
							<div class="page-box">
								<a href="#" class="sure">确定</a>
								<input type="text" class="point-to" />
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
		</div>
		<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
		<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath %>assets/js/common.js"></script>
		<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
		<script src="<%=basePath %>assets/js/scripts.js"></script>
		<script src="<%=basePath %>assets/js/include.js"></script>
		<!-- 新增 start -->
		<script src="<%=basePath %>assets/js/citySelect/city.min.js"></script>
		<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath %>assets/js/common.js"></script>
		<%-- <script src="<%=basePath %>assets/js/system.js"></script> --%>
		<script src="<%=basePath %>assets/js/notice.js"></script>
		<!-- 新增 end -->
		<script type="text/javascript">
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
		})
		</script>
	</body>

</html>