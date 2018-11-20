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
		<title>房间查询</title>
		<link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
		<link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath %>assets/css/roomQuery.css" rel="stylesheet" type="text/css" />
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
		<!-- -->
	</head>

	<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
	<body>
		
		<div class='page-topbar'>
			<include src="daohang.jsp"></include>			
		</div>
		<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>		
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
							<span class="title">房间查询</span>
							<select class="choose" id="xiaoqu"  onchange="Query()">
								<option value="">小区</option>
								<option value="1">百汇园 </option>
								<option value="2">万水澜庭</option>
								<option value="3">富力城 </option>
								<option value="4">半山半岛</option>
							</select>
							<select class="choose plat" id="floor"  onchange="Queryfloor()">
								<option value="">楼层</option>
								<option value="1">一楼 </option>
								<option value="2">二楼</option>
								<option value="3">三楼 </option>
								<option value="4">四楼</option>
							</select>
							<select class="choose"  style="width:100px;"  id="housetype" onchange="Queryhousetype()">
								<option value="">房&nbsp;&nbsp;型</option>
								<option value="一室一厅">一室一厅</option>
								<option value="俩室一厅">俩室一厅</option>
								<option value="三室一厅">三室一厅 </option>
								<option value="四室一厅">四室一厅</option>
							</select>
							<select class="choose" id="toward" onchange="Querytoward()">
								<option value="">特性</option>
								<option value="朝南">朝南</option>
								<option value="朝北">朝北</option>
								<option value="朝西">朝西</option>
								<option value="朝东">朝东</option>
							</select>
						</div>
						<div class="order-right">
							<input class="search order"  value="搜索" onclick="Queryhousenum()"/>
							<input type="text" id="housenum" placeholder="输入房间号" class="write number" />
						</div>
					</div>
					<div class="content-box">
						<ul class="content-left clearfix">
							<li>
								<span class="jing" id="kongjing" onclick="Dkongjing()"></span>
								<i>空净</i>
							</li>
							<li>
								<span class="zang" id="kongzang" onclick="Dkongzang()"></span>
								<i>空脏</i>
							</li>
							<li>
								<span class="yizhu" id="yizhu" onclick="Dyizhu()"></span>
								<i>已住</i>
							</li>
							<li>
								<span class="orders"di="yuding" onclick="Dyuding()"></span>
								<i>预定</i>
							</li>
							<li id="weixiu" onclick="Dweixiu()">
								<img src="assets/images/roomXiu.png" />
								<i>维修</i>
							</li>
							<li id="dasao" onclick="Ddasao()">
								<img src="assets/images/roomSao.png" />
								<i>打扫</i>
							</li>
							<span class="handUpdate">手动更新</span>
						</ul>
						<span id="weiyenum" style="display:none;"></span>
						<span id="pagenum" style="display:none;"></span>
						<!-- js循环 -->
						<ul class="content clearfix" id="li">
						
						</ul>
						<div class="notice-bottom clearfix">
							<div class="page-box">
								<a  class="sure"  href="javascript:void(0)"  onclick="qdtz()">确定</a>
								<input type="text" class="point-to"  id="tiaonum"/>
								<span class="tiao">跳转到</span>
								<ul class="page"  id="for_li">
								
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		
		
		</div>
		
		

		<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
		<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
		<script src="<%=basePath %>assets/js/scripts.js"></script>
		<script src="<%=basePath %>assets/js/include.js"></script>
		
		<script src="<%=basePath %>assets/js/citySelect/city.min.js"></script>
		<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
		<script src="<%=basePath %>assets/js/common.js"></script>
		<%-- <script src="<%=basePath %>assets/js/system.js"></script> --%>
		<script src="<%=basePath %>assets/js/notice.js"></script>
		
<script type="text/javascript">
 $(function(){
			var userid = $("#userid").val();
			var basepath = $("#basepath").val();
			$.ajax({
			url:"initUser.action",
			data:{userid:userid},
			async:false,
			dataType:"json",
			type:"post",
			success:function (data) {
			console.log(data);
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
		homeList();
	});
	function houseListShow(liBox,pageBox,data,totalnum,nowPage,string){
	console.log(data);
	/* alert(string); */
	var houseInfo = "<li><span class='houseName'>eee</span><i></i>"
							+"<div class='show-box' style='display: none;''>"
							+"<div class='point'>"
							+"<span>.</span>"
							+"</div>"
							+"<div class='show-con'>"
							+"<div class='orderFrom' ></div>"
							+"<div class='payFrom'></div>"
							+"<div class='orderUesr'></div>"
							+"<div class='zhuPeople'></div>"
							+"<div class='peopleName'></div>"
							+"</div>"
							+"</div>"
							+"<div class='set-status none'>"
							+"<div item='1' class='none'>空净</div>"
							+"<div item='2' class='none'>空脏</div>"
							+"<div item='3' class='none'>已住</div>"
							+"<div item='4' class='none'>预定</div>"
							+"<div item='5' class='none'>维修</div>"
							+"<div item='6' class='none'>打扫</div>"
							+"</div></li>";
			$(pageBox).append("<li><a class='shouye' href=\"javascript:void(0)\"> "+ "<<" + " </a></li><li><a class='prevPage' href=\"javascript:void(0)\">"+ "<" +"</a></li>");
					$.each(data.listmodel,function(index,item){
					var houseInfoAppend = $(houseInfo);
					houseInfoAppend.find(".houseName").html(item.housetype);
					houseInfoAppend.find(".set-status").attr({"houseId":item.id,"housestate":item.housestate});
					houseInfoAppend.attr("houseId",item.id);					
					if( item.housestate == "0" ){
						houseInfoAppend.attr({"item":"jing","class":"jing stateCommon"});
						houseInfoAppend.find("div[item='4']").removeClass("none");
					}else if( item.housestate == "1" ){
						houseInfoAppend.find("div[item='5']").removeClass("none");
						houseInfoAppend.find("div[item='6']").removeClass("none");
						houseInfoAppend.attr({"item":"zang","class":"zang stateCommon"});
					}else if( item.housestate == "2" ){
						houseInfoAppend.find(".zhuPeople").hide();
						//houseInfoAppend.find(".peopleName").hide();
						houseInfoAppend.attr({"item":"zhu","class":"zhu show-more stateCommon"});
						houseInfoAppend.find("div[item='5']").removeClass("none");
						houseInfoAppend.find("div[item='2']").removeClass("none");
						houseInfoAppend.find("div[item='6']").removeClass("none");
					}else if( item.housestate == "3" ){
						houseInfoAppend.find(".orderUesr").hide();
						houseInfoAppend.attr({"item":"orders","class":"orders show-more stateCommon"});
						houseInfoAppend.find("div[item='1']").removeClass("none");
						houseInfoAppend.find("div[item='3']").removeClass("none");
					}else if( item.housestate == "4" ){
						houseInfoAppend.attr({"item":"jingXiu","class":"jingXiu stateCommon"});
						houseInfoAppend.find("div[item='1']").removeClass("none");
						houseInfoAppend.find("div[item='4']").removeClass("none");
						houseInfoAppend.find("div[item='6']").removeClass("none");
					}else if( item.housestate == "5" ){
						houseInfoAppend.attr({"class":"zangXiu","item":"zangXiu stateCommon"});
					    houseInfoAppend.find("div[item='6']").removeClass("none");
					}else if( item.housestate == "6" ){
						houseInfoAppend.attr({"item":"zhuXiu","class":"zhuXiu stateCommon"});
						houseInfoAppend.find("div[item='2']").removeClass("none");
						houseInfoAppend.find("div[item='3']").removeClass("none");
						houseInfoAppend.find("div[item='6']").removeClass("none");
					}else if( item.housestate == "7" ){
						houseInfoAppend.attr({"item":"zangSao","class":"zangSao stateCommon"});
						houseInfoAppend.find("div[item='1']").removeClass("none");
						houseInfoAppend.find("div[item='5']").removeClass("none");
					}else if( item.housestate == "8" ){
						houseInfoAppend.attr({"item":"zhuSao","class":"zhuSao stateCommon"});
						houseInfoAppend.find("div[item='3']").removeClass("none");
						houseInfoAppend.find("div[item='5']").removeClass("none");
					}
					/* var temp = "";//状态
					//房间状态0空净jing  1空脏zang  2已住zhu  3预定orders  4jingXiu  5zangXiu 6zhuXiu 7zangSao 8zhuSao 
					if(item.housestate == "0"){
						temp = "<li item='jing' class=\"jing\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "1"){
						temp = "<li item='zang' class=\"zang\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "2"){
						temp = "<li item='zhu' class=\"zhu\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "3"){
						temp = "<li item='orders' class=\"orders\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "4"){
						temp = "<li item='jingXiu' class=\"jingXiu\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "5"){
						temp = "<li item='zangXiu' class=\"zangXiu\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "6"){
						temp = "<li item='zhuXiu' class=\"zhuXiu\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "7"){
						temp = "<li item='zangSao' class=\"zangSao\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}else if(item.housestate == "8"){
						temp = "<li item='zhuSao' class=\"zhuSao\"><span>"+ item.housetype +"</span><i></i></li>"; 
					}
				$("#li").append(temp); */
				$(liBox).append(houseInfoAppend);
			 });
	            for(var i=1;i<=totalnum;i++){
	            	if( nowPage == i ){
	            		$(pageBox).append("<li class='active liPage' page="+ i +">"+ i +"</li>");
	            	}else{
	            		$(pageBox).append("<li class='liPage' page="+ i +">"+ i +"</li>");
	            	}
    				
    			} 
	           $(pageBox).append("<li><a class='nextPage' href=\"javascript:void(0)\"> "+ ">" + " </a></li><li><a class='weiye' href=\"javascript:void(0)\">" + ">>" +"</a></li>");
					/* if( string == "Dkongjing" ){
						$('.stateCommon').hide();
						$('.jing').show();
					}else if( string == "Dkongzang" ){
						$('.stateCommon').hide();
						$('.zang').show();
					}else if( string == "Dyuding" ){
						$('.stateCommon').hide();
						$('.orders').show();
					}else if( string == "Dyizhu" ){
						$('.stateCommon').hide();
						$('.zhu').show();
					}else if( string == "Dweixiu" ){
						$('.stateCommon').hide();
						$('.zhuXiu').show();
						$('.zangXiu').show();
					}else if( string == "Ddasao" ){
						$('.stateCommon').hide();
						$('.zangSao').show();
						$('.zhuSao').show();
					} */
			//首页点击
			$('.shouye').unbind('click');
			$('.shouye').bind('click',function(){
				if( $('.liPage').length == 1 ){
					return false ;
				}else{
					if( string == "Dkongjing" ){
						Dkongjing("0",string);
					}else if( string == "Dkongzang" ){
						Dkongzang("1",string);
					}else if( string == "Dyuding" ){
						Dyuding("3",string);
					}else if( string == "Dyizhu" ){
						Dyizhu("2",string);
					}else if( string == "Dweixiu" ){
						Dweixiu(string);
					}else if( string == "Ddasao" ){
						Ddasao(string);
					}else{
						homeList();
					}
				}
			});
			$('.weiye').unbind('click');
			$('.weiye').bind('click',function(){
				  	if( string == "Dkongjing" ){
						queryWeiye(string,0);
					}else if( string == "Dkongzang" ){
						queryWeiye(string,1);
					}else if( string == "Dyuding" ){
						queryWeiye(string,3);
					}else if( string == "Dyizhu" ){
						queryWeiye(string,2);
					}else if( string == "Dweixiu" ){
						Dweixiu();
					}else if( string == "Ddasao" ){
						Ddasao();
					}else{
						queryWeiye(string);
					}
					
			});
			$('.prevPage').unbind('click');
			$('.prevPage').bind('click',function(){
					if( string == "Dkongjing" ){
						queryShangye(string,0);
					}else if( string == "Dkongzang" ){
						queryShangye(string,1);
					}else if( string == "Dyuding" ){
						queryShangye(string,3);
					}else if( string == "Dyizhu" ){
						queryShangye(string,2);
					}else if( string == "Dweixiu" ){
						Dweixiu();
					}else if( string == "Ddasao" ){
						Ddasao();
					}else{
						queryShangye(string);
					}
			});
			$('.nextPage').bind('click',function(){
					if( string == "Dkongjing" ){
						queryXiaye(string,0);
					}else if( string == "Dkongzang" ){
						queryXiaye(string,1);
					}else if( string == "Dyuding" ){
						queryXiaye(string,3);
					}else if( string == "Dyizhu" ){
						queryXiaye(string,2);
					}else if( string == "Dweixiu" ){
						queryXiaye();
					}else if( string == "Ddasao" ){
						Ddasao();
					}else{
						queryXiaye(string);
					}		
			});
			$('.liPage').unbind('click');
			$('.liPage').bind('click',function(){
				var page = parseInt($(this).attr('page'));
				/* var page = parseInt($(this).attr('page')); */
				if( string == "Dkongjing" ){
					fornum(page,string,0);
				}else if( string == "Dkongzang" ){
					fornum(page,string,1);
				}else if( string == "Dyuding" ){
					fornum(page,string,3);
				}else if( string == "Dyizhu" ){
					fornum(page,string,2);
				}else if( string == "Dweixiu" ){
					Dweixiu(page,string);
				}else if( string == "Ddasao" ){
					Ddasao(page,string);
				}else{
					fornum(page,string);
				}
				
				
			});
			//已住和预定的弹窗
			$(".show-more").hover(function(){
				var index = $(this).index();				
				var houseId = $(this).attr("houseId");
			 $.ajax({
					url:"HomeQueryById.action",
					data:{"id":houseId},
					dataType:"json", 
					type:"post",
					success:function (date) {
					 console.log(date); 
					var pay ="";
					var mm=date.model;
					var source=mm.source;
					var paytype=mm.paytype;
					var people=mm.people;
					var  name=mm.name;
					if(paytype == 0){
						pay="支付宝";
					}else if(paytype == 1){				
						pay="微信";
					}
					$(".content li").eq(index).children(".show-box").show();
					if( mm.housestate == 2 ){
						$(".content li").eq(index).children(".show-box").find(".peopleName").html("入住人姓名：" + name);
						$(".content li").eq(index).children(".show-box").find(".orderFrom").html("订单来源：" + source);
						$(".content li").eq(index).children(".show-box").find(".payFrom").html("支付方式：" + pay);
						$(".content li").eq(index).children(".show-box").find(".orderUesr").html("入住人：" + name);
					}else if( mm.housestate == 3 ){
						$(".content li").eq(index).children(".show-box").find(".orderFrom").html("订单来源：" +source);
						$(".content li").eq(index).children(".show-box").find(".payFrom").html("支付方式：" + pay);
						//$(".content li").eq(index).children(".show-box").find(".zhuPeople").html("入住人数：" + people + "人");
						$(".content li").eq(index).children(".show-box").find(".peopleName").html("预订人姓名：" + name);
					}
			        }, 
					error:function (error) {
					}
			}); 
			},function(){
				var index = $(this).index();
				$(".content li").eq(index).children(".show-box").hide();
			});
			//状态修改函数
			function statusChange(){
				var houseState = 0 ;
				var houseId ;
				$('.set-status').find('div').click(function(){					
				var item = $(this).parents('li').attr('item');
				var subItem = $(this).attr('item');	
				houseId = $(this).parents('.set-status').attr('houseId');
				/* 房间状态房间状态
				0空净jing
				1空脏zang
				2已住zhu
				3预定orders
				4净修jingXiu
				5脏修 zangXiu
				6住修 zhuXiu 
				7脏扫zangSao 
				8住扫zhuSao  */			
				if( item == 'jing' ){
					$(this).parents('li').removeAttr('class').addClass('orders');
					houseState = 3 ;
					$(this).parents('li').find('div').removeClass('none');
					$(this).parents('li').find('div[item="2"]').addClass('none');
					$(this).parents('li').find('div[item="4"]').addClass('none');
					$(this).parents('li').find('div[item="5"]').addClass('none');
					$(this).parents('li').find('div[item="6"]').addClass('none');
					$(this).parents('li').attr('item','orders');						
				}else if( item == 'zhu' ){						
					if( subItem == 2 ){
						$(this).parents('li').removeAttr('class').addClass('zang');
						houseState = 1 ;
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
					}else if( subItem == 5 ){
						houseState = 6 ;
						$(this).parents('li').removeAttr('class').addClass('zhuXiu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');						
					}else if( subItem == 6 ){
						houseState = 8 ;
						$(this).parents('li').removeAttr('class').addClass('zhuSao');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');
					}else if( subItem == 4 ){
						houseState = 3 ;
						$(this).parents('li').removeAttr('class').addClass('orders');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'zang' ){
					if( subItem == 5 ){
						houseState = 5 ;
						$(this).parents('li').removeAttr('class').addClass('zangXiu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
					}else if( subItem == 6 ){
						houseState = 7 ;
						$(this).parents('li').removeAttr('class').addClass('zangSao');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');								
						$(this).parents('li').find('div[item="3"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'orders' ){
					if( subItem == 1 ){
						houseState = 1 ;
						$(this).parents('li').removeAttr('class').addClass('jing');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');								
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
					}else if( subItem == 3 ){
						houseState = 2 ;
						$(this).parents('li').removeAttr('class').addClass('zhu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');								
						$(this).parents('li').find('div[item="1"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'zhuSao' ){
					if( subItem == 3 ){
						houseState = 2 ;
						$(this).parents('li').removeAttr('class').addClass('zhu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');								
						$(this).parents('li').find('div[item="1"]').addClass('none');
					}else if( subItem == 5 ){
						houseState = 6 ;
						$(this).parents('li').removeAttr('class').addClass('zhuXiu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');								
						$(this).parents('li').find('div[item="1"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'zangSao' ){
					if( subItem == 1 ){
							houseState = 0 ;
							$(this).parents('li').removeAttr('class').addClass('jing');
							$(this).parents('li').find('div').removeClass('none');
							$(this).parents('li').find('div[item="5"]').addClass('none');
							$(this).parents('li').find('div[item="2"]').addClass('none');								
							$(this).parents('li').find('div[item="1"]').addClass('none');
							$(this).parents('li').find('div[item="3"]').addClass('none');
							$(this).parents('li').find('div[item="6"]').addClass('none');								
					}else if( subItem == 5 ){
							houseState = 5 ;
						$(this).parents('li').removeAttr('class').addClass('zangXiu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'zhuXiu' ){
					if( subItem == 2 ){
						houseState = 1 ;
						$(this).parents('li').removeAttr('class').addClass('zang');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
					}else if( subItem == 3 ){
						houseState = 2 ;	
						$(this).parents('li').removeAttr('class').addClass('zhu');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');								
						$(this).parents('li').find('div[item="1"]').addClass('none');
					}else if( subItem == 6 ){
						houseState = 8 ;
						$(this).parents('li').removeAttr('class').addClass('zhuSao');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');
					}
					$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'jingXiu' ){
					if( subItem == 1 ){
						houseState = 0 ;
						$(this).parents('li').removeAttr('class').addClass('jing');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');								
						$(this).parents('li').find('div[item="1"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');	
					}else if( subItem == 4 ){
						houseState = 3 ;
						$(this).parents('li').removeAttr('class').addClass('orders');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');
					}else if( subItem == 6 ){
						houseState = 3 ;
						$(this).parents('li').removeAttr('class').addClass('jingSao');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').find('div[item="5"]').addClass('none');
					}
						$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
				}else if( item == 'zangXiu' ){
						houseState = 7 ;
						$(this).parents('li').removeAttr('class').addClass('zangSao');
						$(this).parents('li').find('div').removeClass('none');
						$(this).parents('li').find('div[item="2"]').addClass('none');
						$(this).parents('li').find('div[item="4"]').addClass('none');
						$(this).parents('li').find('div[item="6"]').addClass('none');								
						$(this).parents('li').find('div[item="3"]').addClass('none');
						$(this).parents('li').attr('item',$(this).parents('li').attr('class'));
					}
				$.ajax({
					url:"changeHomeState.action",
					data:{"id":houseId,"housestate":houseState},
					dataType:"json", 
					type:"post",
					success:function (date) {
					if(date.result=="success"){
							alert("手动更新成功！！！");
						}   
						window.reload();
			        }, 
					error:function (error) {
					}
				}); 
				});
			}
			statusChange();
			//房间状态设置弹窗
			$(".handUpdate").click(function(){
				$(".content li").hover(function(){
					var item = $(this).attr('item');
					var index = $(this).index();
					$(".content li").css("cursor",'pointer');
					$(".content li").eq(index).children('.set-status').show();
					$(".content li").eq(index).children('.show-box').hide();
					
					
				},function(){
					var index = $(this).index();
					$(".content li").eq(index).children('.set-status').hide();
				});
			});
	}
	function homeList(){
		var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		var housestate =$("#housestate").val();//房间状态
	 	$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			/* console.log(date); */
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			//$("#for_tr").empty();
			$("#li").empty();
			$("#for_li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			
			}, 
			error:function (error) {
			}
		});
	
	}
	function queryWeiye(string,housestate){
		if( housestate == undefined ){
			housestate = "" ;
		}
		var weiyenum = $("#weiyenum").val();
		var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		/* var housestate =$("#housestate").val();//房间状态 */
	 	$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":weiyenum},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,string);
			}, 
			error:function (error) {
			}
		});
	
	}
	function queryShangye(string,housestate){
		if( housestate == undefined ){
			housestate = "" ;
		}
	//获取当前页
		var pagenum = $("#pagenum").val();
		//var weiyenum = $("#weiyenum").val();
		var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		/* var housestate =$("#housestate").val();//房间状态 */
	if(pagenum<=1){
		$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,string);
	        }, 
			error:function (error) {
			}
});
}else if(pagenum>1){
$.ajax({
		url:"HomeQueryList.action",
		data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":pagenum-1},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			},
		error:function (error) {
		}
});
}

}

	function queryXiaye(string,housestate){
		if( housestate == undefined ){
			housestate = "" ;
		}
	//获取当前页
		var pagenum = $("#pagenum").val();
		var weiyenum = $("#weiyenum").val();
		var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		/* var housestate =$("#housestate").val();//房间状态 */
	if(pagenum==weiyenum){
		$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":weiyenum},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,string);
	        }, 
			error:function (error) {
			}
});
}else if(pagenum<weiyenum){
var a=Number(pagenum);
var b=Number(1);
var c = Number(a) + Number(b);
$.ajax({
		url:"HomeQueryList.action",
		data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":c},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			},
		error:function (error) {
		}
});
}
}
function qdtz(){
var tiaonum=$("#tiaonum").val();
//获取末页的数
var weiyenum = $("#weiyenum").val();
if(tiaonum>weiyenum){
alert("超过总页数，请重新输入");
return false;
}
var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		var housestate =$("#housestate").val();//房间状态
	 	$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":housestate,"page":tiaonum},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			}, 
			error:function (error) {
			}
		});
}
function fornum(nowPage,string,housestate){
		if( housestate == undefined ){
			housestate = "" ;
		}
		var floor =$("#floor").val();//楼层
		var housetype =$("#housetype").val();//房型
		var housenum =$("#housenum").val();//房号
		var toward =$("#toward").val();//特性
		/* var  =$("#housestate").val();//房间状态 */
	 	$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"housetype":housetype,"housenum":housenum,"toward":toward,"housestate":"","page":nowPage},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,nowPage,string);
			}, 
			error:function (error) {
			}
		});
}
	function Queryfloor(){
		
		var floor =$("#floor").val();//楼层
		//获取末页的数
		var weiyenum = $("#weiyenum").val();
		//获取当前页
		var pagenum = $("#pagenum").val();
		$.ajax({
			url:"HomeQueryList.action",
			data:{"floor":floor,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			}, 
			error:function (error) {
			}
		});
	}
	function Queryhousetype(){
		var housetype =$("#housetype").val();//几室几厅
		$.ajax({
			url:"HomeQueryList.action",
			data:{"housetype":housetype,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			}, 
			error:function (error) {
			}
		});
	}
		function Querytoward(){
		var toward =$("#toward").val();//朝向
		$.ajax({
			url:"HomeQueryList.action",
			data:{"toward":toward,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			}, 
			error:function (error) {
			}
		});
	}
		function Queryhousenum(){
		
		var housenum =$("#housenum").val();//房间号
		$.ajax({
			url:"HomeQueryList.action",
			data:{"housenum":housenum,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum);
			}, 
			error:function (error) {
			}
		});
	}
	function Ddasao(string,page){
		if( page == undefined ){
			page = 1 ;
		}
		$.ajax({
			url:"HomeQueryDasao.action",
			data:{"page":page},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Ddasao");
			}, 
			error:function (error) {
			}
		});
		
	}
		function Dweixiu(string,page){
		if( page == undefined ){
			page = 1 ;
		}
		$.ajax({
			url:"HomeQueryWeixiu.action",
			data:{"page":page},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Dweixiu");
			},   
			error:function (error) {
			}
		});
		
	}
	//根据状态获取
	
	function Dkongjing(housestate,string){
			if( housestate == undefined ){
				housestate = 0 ;
			}
			$.ajax({
			url:"HomeQueryList.action",
			data:{"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Dkongjing");
			}, 
			error:function (error) {
			}
		});
	}
	function Dkongzang(housestate,string){
			if( housestate == undefined ){
				housestate = 1 ;
			}
			$.ajax({
			url:"HomeQueryList.action",
			data:{"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Dkongzang");
			}, 
			error:function (error) {
			}
		});
	}
	function Dyizhu(housestate,string){
			if( housestate == undefined ){
				housestate = 2 ;
			}
			$.ajax({
			url:"HomeQueryList.action",
			data:{"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			//$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Dyizhu");
			}, 
			error:function (error) {
			}
		});
	}
	function Dyuding(housestate,string){
			if( housestate == undefined ){
				housestate = 3 ;
			}
			$.ajax({
			url:"HomeQueryList.action",
			data:{"housestate":housestate,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_li").empty();
			$("#li").empty();
			//$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");
			houseListShow($("#li"),$("#for_li"),date,totalnum,0,"Dyuding");
			}, 
			error:function (error) {
			}
		});
	}
</script>
	</body>

</html>