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
	<title>运营统计</title>
	<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
	<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath %>assets/css/userManage.css" rel="stylesheet" type="text/css" />
	<!--图表-->
	<link href="<%=basePath %>assets/css/echart.css" rel="stylesheet" type="text/css" />
	<!--图表-->
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
</head>
<body>
<div class='page-topbar'>
<include src="daohang.jsp"></include>	
</div>
<div class="page-container row-fluid container-fluid">
	<div class="page-sidebar fixedscroll">
		<div class="page-sidebar-wrapper" id="main-menu-wrapper">
			<include src="bussiness/menu.jsp"></include>
		</div>
	</div>
	<section id="main-content" class=" ">
		<div class="wrapper main-wrapper row">
			<div class="order-top user-top clearfix">
				<div class="order-left">
					<span class="chunk"></span>
					<span class="title">运营统计</span>
				</div>
			</div>
			<div class="content-box">
				<div class="contentFirst">
					<div id="containerLineChartBox" class="tableCommon">
						<div id="containerLineChart" class="tableStyle">
						</div>
						<div class="dateSelect">
							<input type="date" placeholder="2018-08-26">
						</div>
					</div>
					<div id="containerPieBox">
						<div id="containerPie">
						</div>
						<a id="customerCount" href="<%=basePath %>customerCount.jsp">详情</a>
					</div>
				</div>
				<div class="contentFirst">
					<div id="containerBarGraphBox" style="padding-left: 30px;" class="tableCommon">
						<div id="containerBarGraph" class="tableStyle">
						</div>
						<div class="dateSelect">
							<input type="date" placeholder="2018-08-26">
						</div>
					</div>
					<div id="containerRight">
						<div id="textBox">
							<span>目前已有房屋/房间</span>
							<span>58774</span>
							<span>/套/间</span>
							<a href="<%=basePath %>storeCount.jsp">详情</a>
						</div>
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
<!--Echarts-->
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/echarts.min.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/echarts-gl.min.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/ecStat.min.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/dataTool.min.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/china.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/world.js"></script>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/bmap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>assets/js/echarts/simplex.js"></script>
<script src="<%=basePath %>assets/js/layui.js" type="text/javascript"></script>
<!---->
</body>
<script type="text/javascript">
	var dom = document.getElementById("containerBarGraph");
	var myChart = echarts.init(dom);
	var app = {};
	option = null;
	app.title = '堆叠柱状图';

	option = {
		title : {
			text: '房间出租统计',
			x:'left'
//        	subtext: '收入/元'
		},
		tooltip : {
			trigger: 'axis',
			axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			}
		},
		legend: {
			data:['已支出','已收入'],
			x:'right'
		},
		grid: {
			left: '3%',
			right: '4%',
			bottom: '3%',
			containLabel: true
		},
		xAxis : [
			{
				type : 'category',
				data : ['09/20','09/21','09/21','09/21','09/21','09/21','09/21'],
				name : '时间/月日'
			}
		],
		yAxis : [
			{
				type : 'value',
				name:'收入/元'
			}
		],
		series : [
			{
				name: '已支出',
				type: 'bar',
				stack: '广告',
				data: [320, 332, 301, 334, 390, 330, 320],
				color:'#3478F7',
				barGap:'-100%',
				barCategoryGap:'52%'
			},
			{
				name:'已收入',
				type:'bar',
				stack: '广告',
				data:[120, 132, 101, 134, 90, 230, 210],
				color:'#689DFF'
			}
		]
	};
	;
	if (option && typeof option === "object") {
		myChart.setOption(option, true);
	}
	//圆饼图
	var domPie = document.getElementById("containerPie");
	var myChartPie = echarts.init(domPie);
	var appPie = {};
	option = null;
	appPie.title = '环形图';
	option = {
		title : {
//			text: '详情',
			x:'center'
		},
		tooltip: {
			trigger: 'item',
			formatter: "{a} <br/>{b}: {c} ({d}%)"
		},
		legend: {
			orient: 'vertical',
			x: 'top',
			data:['榛果','驴妈妈','途家','途牛']
		},
		series: [
			{
				name:'',
				type:'pie',
				radius: ['50%', '70%'],
				avoidLabelOverlap: false,
				color:['#C5B4A1','#F0D30E','#FF5384','#3478F7'],
				label: {
					normal: {
						show: false,
						position: 'center'
					},
					emphasis: {
						show: true,
						textStyle: {
							fontSize: '30',
							fontWeight: 'bold'
						}
					}
				},
				labelLine: {
					normal: {
						show: false
					}
				},
				data:[
					{value:335, name:'榛果'},//value为数值
					{value:310, name:'驴妈妈'},
					{value:335, name:'途家'},//value为数值
					{value:310, name:'途牛'}
				]
			}
		]
	};
	;
	if (option && typeof option === "object") {
		myChartPie.setOption(option, true);
	}
	//折线图
	var domLine = document.getElementById("containerLineChart");
	var myChartLine = echarts.init(domLine);
	var appLine = {};
	option = null;
	appLine.title = '折线图';

	option = {
		title : {
			text: '房间入住率统计',
			x:'center'
		},
		xAxis: {
			type: 'category',
			data : ['09/20','09/21','09/21','09/21','09/21','09/21','09/21']
		},
		yAxis: {
			type: 'value'
		},
		series: [{
			data: [820, 932, 901, 934, 1290, 1330, 1320],
			type: 'line',
			smooth: true,
			lineStyle: {
				normal: {
					width: 3,
					shadowColor: 'rgba(0,0,0,0.4)',
					shadowBlur: 10,
					shadowOffsetY: 10
				}
			},
			color:'#0BBDFF'
		}]
	};
	;
	if (option && typeof option === "object") {
		myChartLine.setOption(option, true);
	}
</script>
<script type="text/javascript">
		$(function(){
			if("${userid}"==""){
		    	   document.location.replace("login.jsp");	
		    }
		
		});
</script>
</html>