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
		<title>系统公告</title>
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
							<span class="title">系统公告</span>
						</div>
						
						<div class="order-right">
							<input class="search"  value="搜索" onclick="gainList1()"></input>
							<input type="text" placeholder="输入内容" name="content" id="sousuocon" id="content"  class="write" />
						</div>
					</div>
					<div class="content-box">
					<span id="weiyenum" style="display:none;"></span>
					<span id="pagenum" style="display:none;"></span>
						<table class="content" id="for_tr">
							
						</table>
						<!-- <table class="content" ></table> -->
						<div class="notice-bottom clearfix">
							<span class="del" onclick="del()">删除</span>
							<span class="del" onclick="add()">&nbsp;&nbsp;&nbsp;&nbsp;添加</span>
							<div class="page-box">
								<a  class="sure"  href="javascript:void(0)"  onclick="qdtz()">确定</a>
								<input type="text" class="point-to"  id="tiaonum"/>
								<span class="tiao">跳转到</span>
								<ul class="page" id="for_li">
									
								</ul>
							</div>
						</div>
					</div>

					<!-- 查看弹窗   -->
			<div class="mask none"></div>
			<div class="look-box none">
				<span class="title">查看</span>
				<ul>
					<li>
						<span>公告类型:</span>
						<i id="type_s"></i>
					</li>
					<li>
						<span>内容:</span>
						<i id="content_s"></i>
					</li>
				</ul>
				<div class="sure-btn">确定</div>
			</div>
			<!-- 编辑弹窗 -->
			<div class="edit-con none">
				<span class="title">编辑</span>
				<ul>
					<li class="clearfix">
						<span>公告类型:</span>
						<span name="type" id="gg_type_ss" >系统公告</span>
					</li>
					<li class="clearfix">
						<span class="con" >内容:</span>
						<textarea name="content" id="content_ss"></textarea>
					</li>
				</ul>
				<span id="tc_id_s" style="display:none;"></span>
				<div class="edit-sure" type="submit" onclick="qd()">确定</div>
			</div>
			<!-- 添加弹窗 -->
			<div class="add-con none">
				<span class="title">添加</span>
				<ul>
					<li class="clearfix">
						<span>公告类型:</span>
						<span name="type" id="gg_type_sss">系统公告</span>
					</li>
					<li class="clearfix">
						<span class="con" >内容:</span>
						<textarea name="content" id="content_sss"></textarea>
					</li>
				</ul>
				<span id="tc_id_s" style="display:none;"></span>
				<div class="add-sure" type="submit" onclick="qdtj()">确定</div>
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
		if("${userid}"==""){
		    	   document.location.replace("login.jsp");	
			    }
				
			
			gainList1();
		});
		
		
		//弹窗
function tanchuang(){
	$(".edit-sure,.mask").click(function(){
		$(".mask").hide();
		$(".edit-con").hide();
	});
	$(".add-sure,.mask").click(function(){
		$(".mask").hide();
		$(".add-con").hide();
	});

	
}

//通知
function gainList1(){
	var sousuocon =$("#sousuocon").val();
	 	$.ajax({
			url:"noticeQueryList.action",
				data:{"content":sousuocon,"page":1},
			dataType:"json", 
			type:"post",
			success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//alert(totalnum+"==="+pagenum);
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			
			$("#for_tr").empty();
			$("#for_li").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");
				$("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"gainList1()\"> "+ "<<" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryShangye()\" >"+ "<" +"</a></li>");
					$.each(date.listmodel,function(index,item){
					var temp = "";//状态
					var fabu_time = "";
					if(item.state == 1){
						temp = "<span style=\"color:red;\">已读</span>"; 
					}else{
						temp = "<span style=\"color:green;\">未读</span>";
					}
					if(item.addtime == null){
						fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
					}else{
						fabu_time = item.addtime;
					}
					
				$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
						+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
						+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
	            });
	             
	            
	           for(var i=1;i<=totalnum;i++){
    				$("#for_li").append("<li   onclick=\"fornum('"+ i +"')\">"+ i +"</li>");
    			}
	           $("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"queryXiaye()\"> "+ ">" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryWeiye()\" >" + ">>" +"</a></li>");
			}, 
			error:function (error) {
			}
		});
	}
//选中所有复选框
function checkAll(){
	var flag = $("#ck").prop("checked");//获得状态
	$("input[name='cbid']").prop("checked",flag);
 }
 //删除
function del() {
//获取选取的id
var ids =$("input[name='cbid']:checked");
//创建数组
var cids = new Array();
//进行数组遍历
$.each(ids,function(index,elem){
var id = $(this).val();//正在遍历的数组
cids.push(id);
});
if (ids.size()>0) {
	//和后台交互ajax
	$.ajax({
		url:"noticeDel.action",
		data:{"ids":cids.toString()},
		dataType:"json",
		type:"post",
		success:function (date) {
			var mm = date.result;
			if(mm == "success"){
				alert("删除成功！");
				//刷新本页
				gainList1();
			}
		}, 
		error:function (error) {
			alert("数据删除异常！");
		}
	});
}else{
alert("至少选中一条");
}
}

//删除一条
function del_one(del_id){
$.ajax({
		url:"noticeDel.action",
		data:{"ids":del_id},
		dataType:"json",
		type:"post",
		success:function (date) {
			var mm = date.result;
			if(mm == "success"){
				alert("删除成功！");
				//刷新本页
				gainList1();
			}
		}, 
		error:function (error) {
			alert("数据删除异常！");
		}
	});
}
//更新
function qd(){
var gg_type_ss = $("#gg_type_ss").text();
var content_ss = $("#content_ss").val();
if(content_ss==null || content_ss==""){
	alert("编辑内容不能为空");
	return false;
}
var tc_id_s = $("#tc_id_s").html();
	$.ajax({
		url:"updateNotice.action",
		data:{"id":tc_id_s,"type":gg_type_ss,"content":content_ss},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var mm = date.result;
			if(mm == "success"){
				alert("更新成功！");
				//刷新本页
				gainList1();
				//关闭查看弹窗
				tanchuang();
				
			}
		}, 
		error:function (error) {
		}
});
}
//添加
function qdtj(){
var gg_type_s = $("#gg_type_sss").text();
var content_s = $("#content_sss").val();
if(content_s==null || content_s==""){
	alert("输入内容不能为空");
	return false;
}
	$.ajax({
		url:"noticeAdd.action",
		data:{"type":gg_type_s,"content":content_s},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var mm = date.result;
			if(mm == "success"){
				alert("添加成功！");
				//刷新本页
				//console.log(66666);
				gainList1();
				tanchuang();
//				$(".mask").click(function(){
//					$(".mask").hide();
//					$(".add-con").hide();
//				});
//				$(".mask").hide();
//				$(".add-con").hide();
			}
		}, 
		error:function (error) {
		}
});
}

function add(){
tanchuang();
$(".mask").show();
$(".add-con").show();
}
//确定跳转
function qdtz(){
var tiaonum=$("#tiaonum").val();
//获取末页的数
var weiyenum = $("#weiyenum").val();
if(tiaonum>weiyenum){
alert("超过总页数，请重新输入");
return false;
}
var sousuocon = $("#sousuocon").val();
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":tiaonum,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_li").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");
			$("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"gainList1()\"> "+ "<<" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryShangye()\" >"+ "<" +"</a></li>");
				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
				
				  for(var i=1;i<=totalnum;i++){
						$("#for_li").append("<li   onclick=\"fornum('"+ i +"')\">"+ i +"</li>");
					}
		           $("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"queryXiaye()\"> "+ ">" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryWeiye()\" >" + ">>" +"</a></li>");
					
				
		},
		error:function (error) {
		}
});

}
//跳转到第几页
function fornum(nowPage){
//$('li').attr('class','active');
var sousuocon = $("#sousuocon").val();
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":nowPage,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_li").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");
			$("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"gainList1()\"> "+ "<<" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryShangye()\" >"+ "<" +"</a></li>");
				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
		  
				});
				  for(var i=1;i<=totalnum;i++){
					  if( Number(nowPage) == i ){
						  $("#for_li").append("<li class='active' onclick=\"fornum('"+ i +"')\">"+ i +"</li>");
					  }else{
						  $("#for_li").append("<li onclick=\"fornum('"+ i +"')\">"+ i +"</li>");
					  }
						
					}
		           $("#for_li").append("<li><a href=\"javascript:void(0)\"  onclick=\"queryXiaye()\"> "+ ">" + " </a></li><li><a href=\"javascript:void(0)\" onclick=\"queryWeiye()\" >" + ">>" +"</a></li>");
				
		},
		error:function (error) {
		}
});
}
function queryXiaye(){
//获取末页的数
var weiyenum = $("#weiyenum").val();
//获取当前页
var pagenum = $("#pagenum").val();
//alert(weiyenum+"====="+pagenum);
var sousuocon = $("#sousuocon").val();
if(pagenum==weiyenum){
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":weiyenum,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");

				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
		},
		error:function (error) {
		}
});
}else if(pagenum<weiyenum){
//js相加不能直接+ 而是用下面的方式
var a=Number(pagenum);
var b=Number(1);
var c = Number(a) + Number(b);
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":c,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			
			$("#for_tr").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");

				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
		},
		error:function (error) {
		}
});
}



}
function queryShangye(){
//获取当前页
var pagenum = $("#pagenum").val();
var sousuocon = $("#sousuocon").val();
if(pagenum<=1){
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":1,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");

				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
		},
		error:function (error) {
		}
});
}else if(pagenum>1){
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":pagenum-1,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var pagenum = date.page;//获取到的当前页
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");

				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
		},
		error:function (error) {
		}
});
}

}
function queryWeiye(){
var sousuocon = $("#sousuocon").val();
//获取末页的数
var weiyenum = $("#weiyenum").val();
$.ajax({
		url:"noticeQueryList.action",
		data:{"page":weiyenum,"content":sousuocon},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var totalnum = date.total;//获取到的末页的值
			var pagenum = date.page;//获取到的当前页
			//赋值给隐藏的末页文本框
			$("#weiyenum").val(totalnum);
			$("#pagenum").val(pagenum);
			$("#for_tr").empty();
			$("#for_tr").append("<tr><th class=\"check-box\"><input type=\"checkbox\" class=\"check\" id=\"ck\" onclick=\"checkAll()\" /></th><th>公告编号</th><th>公告类型</th><th>内容</th><th>发布时间</th><th>状态</th><th>操作</th></tr>");

				$.each(date.listmodel,function(index,item){
				var temp = "";//状态
				var fabu_time = "";
				if(item.state == 1){
					temp = "<span style=\"color:red;\">已读</span>"; 
				}else{
					temp = "<span style=\"color:green;\">未读</span>";
				}
				if(item.addtime == null){
					fabu_time = "<span style=\"color:green;\">-  -  -  -  -</span>";
				}else{
					fabu_time = item.addtime;
				}
			$("#for_tr").append("<tr><td><input name=\"cbid\"  value=\""+item.id+"\" type=\"checkbox\" class=\"check\"/></td><td>"
					+ item.id_s +"</td><td>"+ item.type +"</td><td>"+ item.content 
					+"</td><td>"+ fabu_time +"</td><td>"+ temp +"</td><td><a onclick=\"bianji('"+ item.id +"')\" class=\"operate edits\">编辑</a><a onclick=\"chakan('"+ item.id +"')\"  class=\"operate look\">查看</a><a class=\"operate\" onclick=\"del_one('"+ item.id +"')\">删除</a></td></tr>");
            });
		},
		error:function (error) {
		}
});
}
//查看弹窗
function chakan(ckid){
		$(".mask").show();
	$(".look-box").show();
		$.ajax({
		url:"noticeQueryById.action",
		data:{"id":ckid},
		dataType:"json", 
		type:"post",
		success:function (date) {
			var mm = date.model;
			$("#type_s").html(mm.type);						
			$("#content_s").html(mm.content);
			
			$(".sure-btn,.mask").click(function(){
				$(".mask").hide();
				$(".look-box").hide();
			});
			
			$.ajax({
				url:"updateNoticeState.action",
				data:{"id":ckid},
				dataType:"json", 
				type:"post",
				success:function (date) {
					//刷新本页
					gainList1();
				}, 
				error:function (error) {
				}
			});
		}, 
		error:function (error) {
		}
	});
	
}

//展示弹窗
function bianji(bjid){
	$(".mask").show();
	$(".edit-con").show();
	$("#tc_id_s").html(bjid);
	tanchuang();
}



		
			
		</script>
			
	</body>
</html>