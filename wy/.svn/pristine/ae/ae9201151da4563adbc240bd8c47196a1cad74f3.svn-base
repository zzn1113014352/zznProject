<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script src="assets/js/jquery-2.0.3.min.js"></script>
<div class='logo-area'>
   网&nbsp;约&nbsp;房&nbsp;登&nbsp;记&nbsp;上&nbsp;报
</div>
<div class='quick-area'>
    <div class='pull-right'>
        <a href="<%=basePath %>login.jsp" class="exit" style="margin-top:26px;">
            <img src="assets/images/exit.png" />
        </a>
        <div id="userCenter">
				<span class="userName">
					<span class="name" style="width:auto;height:auto;overflow:hidden;" id="nickname_ss"></span>
					<img src="<%=basePath %>assets/images/tx.png" class="tx" />
				</span>
        </div>
        <img src="<%=basePath %>assets/images/info.png" class="info" />
        <img id="addorder" src="<%=basePath %>assets/images/addorder.png" alt=""/>
        <input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid"/>
		<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
    </div>
    <script>
    if( $('.mask').length == 2 ){
        $('.mask').eq(1).remove();
    }
    $("#addorder").click(function(){
        $(".setupOrder").show();
        $('.mask').eq(0).show();
        $('.erweimabutton').click(function(){
            $(".setupOrder").hide();
            $('.setUpMa').show();
        })
    });
    $(".mask").click(function(){
        $(".popupDetail,.look-order-box,.setUpMa,.updates-box,.mask").hide();
    });
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
	
    </script>
</div>
<!---->
<link href="assets/css/order.css" rel="stylesheet" type="text/css" />
<!--创建订单-->
<div class="look-order-box none setupOrder">
    <span class="title">创建订单</span>
    <ul class="clearfix">
        <li class="clearfix">
            <span>预订房源:</span>
            <input type="text" placeholder="艾比迎7期1245"/>
        </li>
        <li class="clearfix">
            <span>入住人姓名：</span>
            <input type="text" placeholder="姓名用,隔开"/>
        </li>
        <li class="clearfix">
            <span>房间号：</span>
            <input type="text" placeholder="1032"/>
        </li>
        <li class="clearfix">
            <span>证件种类：</span>
            <select>
                <option value="">身份证</option>
                <option value="">护照</option>
                <option value="">驾驶证</option>
            </select>
        </li>
        <li class="clearfix">
            <span>房名：</span>
            <input type="text" placeholder="紫阳花苑小区2期7号楼"/>
        </li>
        <li class="clearfix">
            <span>证件号码：</span>
            <input type="number" placeholder="身份证用,隔开"/>
        </li>
        <li class="clearfix">
            <span>预订人：</span>
            <input type="text" placeholder="黎明"/>
        </li>
        <li class="clearfix">
            <span>入住人电话：</span>
            <input type="number" placeholder="18227881245"/>
        </li>
        <li class="clearfix">
            <span>证件种类：</span>
            <select>
                <option value="">身份证</option>
                <option value="">护照</option>
                <option value="">驾驶证</option>
            </select>
        </li>
        <li class="clearfix">
            <span>下单时间：</span>
            <input type="date"/>
        </li>
        <li class="clearfix">
            <span>证件号码：</span>
            <input type="number" placeholder="140322199005278945"/>
        </li>
        <li class="clearfix">
            <span>更新时间：</span>
            <input type="date"/>
        </li>
        <li class="clearfix">
            <span>预定人电话：</span>
            <input type="number" placeholder="18235467891"/>
        </li>
        <li class="clearfix">
            <span>授权码：</span>
            <input type="number" readonly placeholder="授权码自动生成"/>
        </li>
        <li class="clearfix">
            <span>住客编号：</span>
            <input type="number" readonly placeholder="住客编号自动生成"/>
        </li>
    </ul>
    <div class="sure-btn erweimabutton">生成入住二维码</div>
</div>
<!--创建订单-->
<!--创建二维码-->
<div class="look-order-box none setUpMa">
    <span class="title">创建订单</span>
			<span class="erweima">
				<img src="assets/images/erweima.png" alt=""/>
			</span>
    <span class="erweimatext">请顾客使用elD核验小程序扫描上方二维码，完成人证核验</span>
</div>
<!--创建二维码-->
<!-- 核验成功-->
<div class="updates-box none checkIfSuccess">
    <img src="assets/images/updates.png"/>
    <span>核验成功！</span>
</div>
<!-- 核验成功-->
<div class="mask none"></div>
