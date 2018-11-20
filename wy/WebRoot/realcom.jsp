<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>房客互动</title>
	<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
	<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/realcom.css" rel="stylesheet" type="text/css" />
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
	<!-- -->
	<link rel="stylesheet" href="<%=basePath %>assets/css/calendar.css">
	<!-- -->
	<!--日历-->
	<link rel="stylesheet" href="<%=basePath %>layui/css/layui.css"  media="all">
	<!--日历-->
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
			<div class="order-top user-top clearfix">
				<div class="order-left">
					<span class="chunk"></span>
					<span class="title">房客互动</span>
				</div>
			</div>
			<div class="content-box" id="chat">
			<c:import url="http://localhost:8080/Netty/index.jsp"></c:import> 
			</div>
		</div>
	</section>

</div>
<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
<script src="<%=basePath %>assets/js/calendar.js"></script>
<script src="<%=basePath %>layui/layui.js" charset="utf-8"></script>
<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
<script src="<%=basePath %>assets/js/common.js"></script>
<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
<script src="<%=basePath %>assets/js/scripts.js"></script>
<script src="<%=basePath %>assets/js/include.js"></script>
</body>
<script>
	$(function(){
		
		/* $("#chat").load("http://localhost:8080/wyf/chat.jsp"); */
		
		
		$(".spanStyle").click(function(){
			$(".look-order-box,.mask").show();
		});
		//查看订单关闭
		$(".mask,.sure-btn").click(function(){
			$(".look-order-box,.mask").hide();
		});
		$('.singleUser').hover(function(){
			$('.singleUser').find('.piece').removeClass('pieceBg');
			$(this).find('.piece').addClass('pieceBg');
			$('.singleUser[click="clicked"]').find('.piece').addClass('pieceBg');
		},function(){
			$('.singleUser').find('.piece').removeClass('pieceBg');
			$('.singleUser[click="clicked"]').find('.piece').addClass('pieceBg');
		});
		$('.singleUser').unbind('click');
		$('.singleUser').bind('click',function(){
			$('.singleUser').attr('click','');
			$('.singleUser').find('.piece').removeClass('pieceBg');
			$(this).find('.piece').addClass('pieceBg');
			$('.singleUser').removeClass('userBgChange');
			$(this).addClass('userBgChange').attr('click','clicked');
			var item = $(this).attr('item');
			if( item == undefined ){
				item = 1 ;
			}
			$('.houseDetail').removeClass('interactionShow');
			$('.houseDetail[item='+item+']').addClass('interactionShow');
		});
		//直接嵌套显示
		layui.use('laydate', function(){
			var laydate = layui.laydate;
			//直接嵌套显示
			laydate.render({
				elem: '#test-n1'
				,position: 'static'
				,range: true
				,value: '2018-10-20 - 2018-10-23'
				,isInitValue: true
				,btns: []
				,min: '2018-10-20'
				,max: '2018-10-23'
				,showBottom: false
				,ready:function(){
					$('.laydate-icon').hide();
					$('td').unbind('click');
					$('td').removeClass('layui-this');
					$('td[lay-ymd="2018-10-20"],td[lay-ymd="2018-10-21"],td[lay-ymd="2018-10-22"],td[lay-ymd="2018-10-23"]').addClass('laydate-selected');
				}
			});
		});
		$('.ca').calendar({
			width: 200,
			height: 200,
			data: [
				{
					date: '2015/12/24',
					value: 'Christmas Eve'
				},
				{
					date: '2015/12/25',
					value: 'Merry Christmas'
				},
				{
					date: '2016/01/01',
					value: 'Happy New Year'
				}
			],
			onSelected: function (view, date, data) {
				console.log('view:' + view)
				alert('date:' + date)
				console.log('data:' + (data || 'None'));
			}
		});
	})
</script>
</html>