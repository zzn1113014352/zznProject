<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
    <title>消息设置</title>
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon" />
    <link href="assets/css/common.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/system.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/order.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/inforSet.css" rel="stylesheet" type="text/css" />
    <link href="assets/js/lib/honeySwitch.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="assets/css/button/normalize.css">
    <link rel="stylesheet" href="assets/css/button/style.css" media="screen" type="text/css" />
</head>
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
    <section id="main-content" class=" ">
        <div class="wrapper main-wrapper row" id="safety">
            <div class="order-top clearfix">
                <div class="order-left">
                    <span class="chunk"></span>
                    <span class="title">消息设置</span>
                </div>
                <div class="order-right">
                    <span class="search order" onclick="gx()">更新</span>
                </div>
            </div>
            <ul class="update-box">
                <li>
                    <i>接受消息提醒</i>
                    <div class="inforSwitchBox">
                        <div swith="0" class="inforSwitch" item="inforRemind" ></div>
                    </div>
                </li>
                <li>
                    <i>接受用户消息提醒</i>。
                    <div class="inforSwitchBox">
                        <div swith="0" class="inforSwitch" item="userInforRemind"></div>
                    </div>
                </li>
                <li>
                    <i>用户访问提醒</i>
                    <div class="inforSwitchBox">
                        <div swith="0" class="inforSwitch" item="userAccessRemind"></div>
                    </div>
                </li>
                <li>
                    <i>房源变动提醒</i>
                    <div class="inforSwitchBox">
                        <div swith="0" class="inforSwitch" item="houseChangeRemind"></div>
                    </div>
                </li>
            </ul>
        </div>
    </section>
</div>
<script src="assets/js/jquery-1.11.2.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="assets/plugins/viewport/viewportchecker.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="assets/js/include.js"></script>
<script src="assets/js/lib/honeySwitch.js"></script>
<script>
    $(function() {
    get();
    if("${userid}"==""){
	    	   document.location.replace("login.jsp");	
		}
        switchEvent("#fly", function() {
            $("#network").slideUp();
        }, function() {
            $("#network").slideDown();
        });
        switchEvent("#directory", function() {
            $("#directory_content").fadeIn();
        }, function() {
            $("#directory_content").fadeOut();
        });
//        按钮操作
        $('.inforSwitch').unbind('click');
        $('.inforSwitch').bind('click',function(){
            var switchWidth = parseInt($(this).width());
            var boxWidth = parseInt($(this).parents('.inforSwitchBox').width());
            if( $(this).attr('click') == '' || $(this).attr('click') == undefined ){
                $(this).animate({'left':'1px'},150,function(){
                    $(this).parents('.inforSwitchBox').css('background','#999');
                    $(this).attr({'click':'clicked','swith':'1'});
                })
            }else if( $(this).attr('click') == 'clicked' ){
                var cha = boxWidth - (switchWidth + 1);
                $(this).animate({'right':'1px','left':cha},150,function(){
                    $(this).parents('.inforSwitchBox').css('background','#3478F6');
                    $(this).attr({'click':'','swith':'0'});
                });
            }
        });
    });
    
    function get(){
    	$.ajax({
		url:"InforQueryById.action",
		dataType:"json",
		type:"post",
		success:function (date) {
			var mm = date.model;
			var swith1=mm.take_mess;
			var swith2=mm.user_mess;
			var swith3=mm.visit_mess;
			var swith4=mm.changes_house;
			if( swith1 == 0 ){
	   			$(".inforSwitch[item='inforRemind']").attr({'click':'','swith':'0'}).parents(".inforSwitchBox").css("background","#3478F6");
	    	}else if( swith1 == 1 ){
	    		$(".inforSwitch[item='inforRemind']").attr({'click':'clicked','swith':'1'}).parents(".inforSwitchBox").css("background","#999");
	    	}
	    	if( swith2 == 0 ){
	    		$(".inforSwitch[item='userInforRemind']").attr({'click':'','swith':'0'}).parents(".inforSwitchBox").css("background","#3478F6");
	    	}else if( swith2 == 1 ){
	    		$(".inforSwitch[item='userInforRemind']").attr({'click':'clicked','swith':'1'}).parents(".inforSwitchBox").css("background","#999");
	    	}
	    	if( swith3 == 0 ){
	    		$(".inforSwitch[item='userAccessRemind']").attr({'click':'','swith':'0'}).parents(".inforSwitchBox").css("background","#3478F6");
	    	}else if( swith3 == 1 ){
	    		$(".inforSwitch[item='userAccessRemind']").attr({'click':'clicked','swith':'1'}).parents(".inforSwitchBox").css("background","#999");
	    	}
	    	if( swith4 == 0 ){
	    		$(".inforSwitch[item='houseChangeRemind']").attr({'click':'','swith':'0'}).parents(".inforSwitchBox").css("background","#3478F6");
	    	}else if( swith4 == 1 ){
	    		$(".inforSwitch[item='houseChangeRemind']").attr({'click':'clicked','swith':'1'}).parents(".inforSwitchBox").css("background","#999");
	    	}
				
				
			}, 
			error:function (error) {
				alert("数据异常！");
			}
	});
    
    
    
    
    	
    
    }
    
    function gx(){
    	var swith1 = $(".inforSwitch[item='inforRemind']").attr("swith");
    	var swith2 = $(".inforSwitch[item='userInforRemind']").attr("swith");
    	var swith3 = $(".inforSwitch[item='userAccessRemind']").attr("swith");
    	var swith4 = $(".inforSwitch[item='houseChangeRemind']").attr("swith");
    	$.ajax({
		url:"updateInforSet.action",
		data:{"take_mess":swith1,"user_mess":swith2,"visit_mess":swith3,"changes_house":swith4},
		dataType:"json",
		type:"post",
		success:function (date) {
			var mm = date.result;
			if(mm == "success"){
				alert("数据更新成功");
			}
		}, 
		error:function (error) {
			alert("数据更新异常！");
		}
	});
    }
</script>
</body>
</html>