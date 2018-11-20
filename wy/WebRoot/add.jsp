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
    <title>添加订单</title>
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
		<link href="<%=basePath %>assets/css/addHouseNew.css" rel="stylesheet"/>
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
    <style>
        #canvas{
            display:none;
            border-radius: 0!important;
        }
        .fangwucommon{
            display:none;
        }
        .fangwuweizhi{
            display:block;
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
                    <img src="assets/images/return.png" class="return"/>
                </div>
            </div>
            <div class="content-box list">
                <form action="<%=basePath%>insertOrder.action" method="post" id="addOrder" name="addOrder">
                    <ul class="content">
                        <li class="titles clearfix">请添加订单</li>
                        <li class="clearfix">
                            <span>房源：</span>
                            <select>
                                <option value="">选择房源</option>
                                <option value="">半三半岛</option>
                                <option value="">湖心岛</option>
                                <option value="">爱彼迎4期1254</option>
                            </select>
                        </li>
                        <li class="clearfix">
                            <span>订单来源：</span>
                            <select>
                                <option value="">选择来源</option>
                                <option value="">途家</option>
                                <option value="">链家</option>
                            </select>
                        </li>
                        <li class="clearfix">
                            <span>姓名：</span>
                           <input type="text" value="" placeholder="张三" />
                        </li>
                        <li class="clearfix">
                            <span>入住人证件号码：</span>
                            <input type="number" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>入住人联系电话：</span>
                            <input type="number" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>入住人数：</span>
                            <input type="number" value="" placeholder="" />
                        </li>
                         <li class="clearfix">
                            <span>入住房号：</span>
                            <input type="text" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>入住时间：</span>
                            <input type="date" value="" placeholder="" />
                        </li>
                         <li class="clearfix">
                            <span>退房时间：</span>
                            <input type="date" value="" placeholder="" />
                        </li>
                         <li class="clearfix">
                            <span>房费：</span>
                            <input type="number" value="" placeholder="200" />
                        </li>
                        <!--房客照片-->
                        <!-- 价格-->
                       
                    </ul>
                    <div class="save" onclick="addOrder222()">提交</div>
                </form>
            </div>
        </div>
    </section>
</div>
<!--更新成功弹窗-->
<div class="mask none"></div>
<div class="updates-box none">
    <img src="<%=basePath %>assets/images/updates.png"/>
    <span>订单已添加！</span>
</div>
<script src="<%=basePath %>assets/js/jquery-1.11.2.min.js"></script>
<script src="<%=basePath %>assets/js/citySelect/cityselect.js"></script>
<script src="<%=basePath %>assets/js/common.js"></script>
<script src="<%=basePath %>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath %>assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="<%=basePath %>assets/plugins/viewport/viewportchecker.js"></script>
<script src="<%=basePath %>assets/js/scripts.js"></script>
<script src="<%=basePath %>assets/js/include.js"></script>
</body>
<script>
	function addOrder222(){
		 document.getElementById("addOrder").submit();//表单提交  
	}
    $('.kindSelect li').click(function(){
        var val = $(this).attr('weizhi');
        $('.kindSelect li').removeClass('active');
        $(this).addClass('active');
        $('.fangwucommon').hide();
        $('.fangwucommon[select='+val+']').show();
    });
    $('.pingtaiSelect li').click(function(){
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
    //更新弹出
    $(".save").click(function(){
        $(".updates-box,.mask").show();
    });
    //关闭弹窗
    $(".mask").click(function(){
        $(".updates-box,.mask").hide();
    });
</script>
</html>