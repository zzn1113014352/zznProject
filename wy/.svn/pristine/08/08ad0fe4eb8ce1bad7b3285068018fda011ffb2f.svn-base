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
    <title>权限管理</title>
    <link rel="shortcut icon" href="<%=basePath %>assets/images/favicon.png" type="image/x-icon" />
    <link href="<%=basePath %>assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>assets/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>assets/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>assets/css/system.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>assets/css/powerManage.css" rel="stylesheet" type="text/css" />
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
                    <span class="title">权限管理</span>
                </div>
                <div class="order-right">
                    <span class="search addRightMan">添加人员</span>
                </div>
            </div>
            <div class="content-box">
                <table class="content order-list">
                    <tr class="kuai"></tr>
                    <tr>
<!--                         <th class="check-box">
                            <input type="checkbox" class="check" />
                        </th> -->
                        <th>头像</th>
                        <th>昵称</th>
                        <th>状态</th>
                        <th>授权时长</th>
                        <th>授权分配</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${pageBean.pageList}" var="m">
						<tr>
	<!--                         <td>
	                            <input type="checkbox" class="check" />
	                        </td> -->
	                        <td class="photo">
	                            <img src="<%=basePath %>head_img/${m.head_img}" alt=""/>
	                        </td>
	                        <td>${m.nickname}</td>
	                        <td>
	                        	<c:if test="${m.status==1}">
	                        		<span style="color:green;font-weight:bold;">已绑定</span>
								</c:if>
								<c:if test="${m.status==2}">
	                        		<span style="color:red;font-weight:bold;">未绑定</span>
								</c:if>
	                        </td>
	                        <td>${m.authorized_t}</td>
	                        <td class="popupEdit" onclick="bianji('${m.id}','${m.bd_userid}','${m.userid}')">编辑</td>
	                        <td onclick="del('${m.id}')">删除</td>
						</tr>
					</c:forEach>
                </table>
                <!-- 分页开始 -->
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
										<a href="${pageContext.request.contextPath }/findPermissionsByPage.action?currentPage=${pageBean.currentPage-1 }">
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
										<li><a href="${pageContext.request.contextPath }/findPermissionsByPage.action?currentPage=${page }">${page }</a></li>
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
										<a href="${pageContext.request.contextPath }/findPermissionsByPage.action?currentPage=${pageBean.currentPage+1 }">
										>
										</a>
									</li>
								</c:if>
								</ul>
							</div>
						</div>
						<div style="display:none;">
						<!-- 系统公告 -->
						<input type="text" value="" id="xtgg_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="xtggchaxun_" right='1' item='notice' style=""/>
						<input type="text" value="" class="quanxianCommon" id="xtggcaozuo_" right='2' item='notice' style=""/>
						<!-- 房客互动 -->
						<input type="text" value="" id="fkhd_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="fkhdchaxun_" right='1' item='interaction' style=""/>
						<input type="text" value="" class="quanxianCommon" id="fkhdcaozuo_" right='2' item='interaction' style=""/>
						<!-- 订单列表 -->
						<input type="text" value="" id="ddlb_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="ddlbchaxun_" right='1' item='orderList' style=""/>
						<input type="text" value="" class="quanxianCommon" id="ddlbcaozuo_" right='2' item='orderList' style=""/>
						<!-- 房源管理 -->
						<input type="text" value="" id="fygl_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="fyglchaxun_" right='1' item='houseManage' style=""/>
						<input type="text" value="" class="quanxianCommon" id="fyglcaozuo_" right='2' item='houseManage' style=""/>
						<!-- 房间查询 -->
						<input type="text" value="" id="fjcx_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="fjcxchaxun_" right='1' item='houseSearch' style=""/>
						<input type="text" value="" class="quanxianCommon" id="fjcxcaozuo_" right='2' item='houseSearch' style=""/>
						<!-- 统计分析 -->
						<input type="text" value="" id="tjfx_" style=""/>
						<input type="text" value="" class="quanxianCommon" id="tjfxchaxun_" right='1' item='analyze' style=""/>
						<input type="text" value="" class="quanxianCommon" id="tjfxcaozuo_" right='2' item='analyze' style=""/>
						
						
						
						<!-- 系统公告1 -->
						<input type="text" value="" id="xxggchaxunquanxian__" style=""/>
						<input type="text" value="" id="xxggcaozuoquanxian__" style=""/>
						<input type="text" value="" id="xxggid__" style=""/>
						<!-- 房客互动2 -->
						<input type="text" value="" id="fkhdchaxunquanxian__" style=""/>
						<input type="text" value="" id="fkhdcaozuoquanxian__" style=""/>
						<input type="text" value="" id="fkhdid__" style=""/>
						<!-- 订单列表3 -->
						<input type="text" value="" id="ddlbchaxunquanxian__" style=""/>
						<input type="text" value="" id="ddlbcaozuoquanxian__" style=""/>
						<input type="text" value="" id="ddlbid__" style=""/>
						<!-- 房源管理4 -->
						<input type="text" value="" id="fyglchaxunquanxian__" style=""/>
						<input type="text" value="" id="fyglcaozuoquanxian__" style=""/>
						<input type="text" value="" id="fyglid__" style=""/>
						<!-- 房间查询5 -->
						<input type="text" value="" id="fjcxchaxunquanxian__" style=""/>
						<input type="text" value="" id="fjcxcaozuoquanxian__" style=""/>
						<input type="text" value="" id="fjcxid__" style=""/>
						<!-- 统计分析6 -->
						<input type="text" value="" id="tjfxchaxunquanxian__" style=""/>
						<input type="text" value="" id="tjfxcaozuoquanxian__" style=""/>
						<input type="text" value="" id="tjfxid__" style=""/>
						</div>
                <!-- 分页结束 -->
            </div>
        </div>
    </section>
    <!--查看弹窗-->
    <!--查看授权-->
    <div class="mask none"></div>
    <div class="popupDetail popup none">
        <span class="title">授权</span>
        <ul>
            <li class="notice">
                <div class="liTitle">系统公告：</div>
                <div class="choose-btn">
                    <span class="rightCommon" right="1" item="notice">查询权限</span>
                    <span class="rightCommon" right="2" item="notice">操作权限</span>
                </div>
            </li>
            <li>
                <div class="liTitle">房客互动：</div>
                <div class="interaction">
                    <span class="rightCommon clicked" right="1" item="interaction">查询权限</span>
                    <span class="rightCommon" right="2" item="interaction">操作权限</span>
                </div>
            </li>
            <li>
                <div class="liTitle">订单列表：</div>
                <div class="orderList">
                    <span class="rightCommon clicked" right="1" item="orderList">查询权限</span>
                </div>
            </li>
            <li>
                <div class="liTitle">房态管理：</div>
                <div class="subText">
                    <ul>
                        <li>
                            <div class="liTitle">房源管理：</div>
                            <div class="houseManage">
                                <span class="rightCommon clicked" right="1" item="houseManage">查询权限</span>
                                <span class="rightCommon" right="2" item="houseManage">操作权限</span>
                            </div>
                        </li>
                        <li>
                            <div class="liTitle">房间查询：</div>
                            <div class="houseSearch">
                                <span class="rightCommon clicked" right="1" item="houseSearch">查询权限</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <div class="liTitle">统计分析：</div>
                <div class="analyze">
                    <span class="rightCommon clicked" right="1" item="analyze">查询权限</span>
                </div>
            </li>
        </ul>
        <div class="sureButton">
            <button class="sure giveRightSure" onclick="qd()">确定</button>
        </div>
    </div>
    <!--查看授权-->
    <!--添加人员-->
    <div class="popupDetail none addMan">
        <span class="title">添加人员</span>
        <ul>
            <li class="notice">
                <div class="liTitle">授权时长：</div>
                <div class="time_">
                    <span class="rightTime clicked" item="长期">长期</span>
                    <span class="rightTime" item="短期：一个月">短期：一个月</span>
                </div>
            </li>
            <li>
                <div class="liTitle">授权账号：</div>
                <div class="interaction">
                    <input type="text" id="shouquanzhanghao" value="" style=""/>
                    <span class="userSearch">搜索</span>
                </div>
            </li>
        </ul>
        <div class="img">
            <span class="imgBox hidden">
                 <img src="<%=basePath%>assets/images/account-tx.png" id="touxiang_" alt=""/>
            </span>
            <span class="imgUserName hidden" id="head_nickname"></span>
        </div>
        <input type="text" value="" id="houduan_userid" style="display:none;"/>
        <div class="sureButton">
            <button class="sure notSure" disabled onclick="queding()">确定</button>
        </div>
    </div>
    <!--添加人员-->
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
</body>
<script>
    $(function(){
        $('.popupEdit').click(function(){
            $('.popup').show();
            $('.mask').show();
        });
        $('.addRightMan').click(function(){
            $('.addMan').show();
            $('.mask').show();
        });
        //编辑确定按钮点击事件
        $('.sureButton').click(function(){
			//系统公告
			var xxggchaxunquanxian__ = $("#xxggchaxunquanxian__").val();
			var xxggcaozuoquanxian__ = $("#xxggcaozuoquanxian__").val();
			var xxggid__ = $("#xxggid__").val();
			
			//房客互动
			var fkhdchaxunquanxian__ = $("#fkhdchaxunquanxian__").val();
			var fkhdcaozuoquanxian__ = $("#fkhdcaozuoquanxian__").val();
			var fkhdid__ = $("#fkhdid__").val();
			
			//订单列表
			var ddlbchaxunquanxian__ = $("#ddlbchaxunquanxian__").val();
			var ddlbcaozuoquanxian__ = $("#ddlbcaozuoquanxian__").val();
			var ddlbid__ = $("#ddlbid__").val();
			
			//房源管理
			var fyglchaxunquanxian__ = $("#fyglchaxunquanxian__").val();
			var fyglcaozuoquanxian__ = $("#fyglcaozuoquanxian__").val();
			var fyglid__ = $("#fyglid__").val();
			
			//房间查询
			var fjcxchaxunquanxian__ = $("#fjcxchaxunquanxian__").val();
			var fjcxcaozuoquanxian__ = $("#fjcxcaozuoquanxian__").val();
			var fjcxid__ = $("#fjcxid__").val();
			
			//统计分析
			var tjfxchaxunquanxian__ = $("#tjfxchaxunquanxian__").val();
			var tjfxcaozuoquanxian__ = $("#tjfxcaozuoquanxian__").val();
			var tjfxid__ = $("#tjfxid__").val();
			
			//和后台交互
			$.ajax({
    			url:"shouquanData.action",
    			data:{xxggchaxunquanxian__:xxggchaxunquanxian__,xxggcaozuoquanxian__:xxggcaozuoquanxian__,xxggid__:xxggid__,
    				fkhdchaxunquanxian__:fkhdchaxunquanxian__,fkhdcaozuoquanxian__:fkhdcaozuoquanxian__,fkhdid__:fkhdid__,
    				ddlbchaxunquanxian__:ddlbchaxunquanxian__,ddlbcaozuoquanxian__:ddlbcaozuoquanxian__,ddlbid__:ddlbid__,
    				fyglchaxunquanxian__:fyglchaxunquanxian__,fyglcaozuoquanxian__:fyglcaozuoquanxian__,fyglid__:fyglid__,
    				fjcxchaxunquanxian__:fjcxchaxunquanxian__,fjcxcaozuoquanxian__:fjcxcaozuoquanxian__,fjcxid__:fjcxid__,
    				tjfxchaxunquanxian__:tjfxchaxunquanxian__,tjfxcaozuoquanxian__:tjfxcaozuoquanxian__,tjfxid__:tjfxid__},
    			async:false,
    			dataType:"json",
    			type:"post",
    			success:function (data) {
    				var mm = data.result;
    				if(mm == "success"){
    					alert("编辑成功");
    					//刷新本页
    					window.location.href = "${pageContext.request.contextPath }/findPermissionsByPage.action";
    				}else{
    					alert("编辑失败");
    				}
    			},
    			error:function (error) {
    		    }
    		});
        });
        $('.mask').click(function(){
            $('.popupDetail').hide();
            $('.mask').hide();
        });
        //点击搜索显示头像和昵称 start
        $('.userSearch').click(function(){
        	var shouquanzhanghao = $("#shouquanzhanghao").val();
        	if(shouquanzhanghao.length == 0){
        		alert("授权账号不能为空");
        		return false;
        	}
        	if("${username}" == shouquanzhanghao){
        		alert("不能自己添加自己");
        		return false;
        	}
        	$.ajax({
    			url:"userSearchResult.action",
    			data:{shouquanzhanghao:shouquanzhanghao},
    			async:false,
    			dataType:"json",
    			type:"post",
    			success:function (data) {
    				var res = data.result;
    				if(res == "success"){
    					var mm = data.searchmodel;
        				var basepath = $("#basepath").val();
        				$("#touxiang_").attr("src",basepath+"head_img/"+mm.head_img);
        				$("#head_nickname").html(mm.nickname);
        				$("#houduan_userid").val(mm.id);
        				$('.img').find('span').removeClass('hidden');
    				}else{
    					alert("未搜索到此授权账号");
    					//删除头像和昵称展示框
    					$('.img').find('span').addClass('hidden');
    					//清空按钮颜色变成灰色
    					$('.sureButton').find('.sure').removeClass('giveRightSure').addClass('notSure').attr('disabled','disabled');
    				}
    			},
    			error:function (error) {
    		    }
    		});
        });
        //点击搜索显示头像和昵称 end
        $('.rightTime').click(function(){
            $('.rightTime').removeClass('clicked');
            $(this).addClass('clicked');
        });
        $('.imgBox').click(function(){
            if( $(this).attr('click') == '' || $(this).attr('click') == undefined ){
                $(this).css('border','3px solid #3478F7').attr('click','clicked');
                $(this).parents('.img').siblings('.sureButton').find('.sure').removeClass('notSure').addClass('giveRightSure');
                $('.sureButton').find('.sure').removeAttr('disabled');
            }else{
                $(this).css('border','0').attr('click','');
                $(this).parents('.img').siblings('.sureButton').find('.sure').removeClass('giveRightSure').addClass('notSure');
                $('.sureButton').find('.sure').attr('disabled','disabled');
            }
        })
    })
</script>
<script type="text/javascript">
		$(function(){
			if("${userid}"==""){
		    	   document.location.replace("login.jsp");	
			}
		
		})

		//删除
		function del(id){
		alert(id + "=====id");
		
		}
		
		//跳换
		function jump(){
			var pages = document.getElementById("jump").value;
			if(pages == 0){
				alert("请输入跳转页数");
			}else{
				window.location.href= "${pageContext.request.contextPath }/findPermissionsByPage.action?currentPage=" + pages;
			}
		}
		
		//初始化的方法
		function gainQx(id,bduserid,userid){
			$('.rightCommon').removeClass('clicked');
			$.ajax({
					url:"shouquanDataId.action",
					data:{"_id":userid,"result":bduserid,"phone":id},
					async:false,
					dataType:"json",
					type:"post",
					success:function (data) {
						var f = data.sqlist;
						var xtggtype ; 
						var xxggchaxunquanxian ;
						var xxggcaozuoquanxian ;
						var xxggid ;
						
						var ddlbtype ;
						var ddlbchaxunquanxian ;
						var ddlbcaozuoquanxian ;
						var ddlbid ;
						
						var fygltype ;
						var fyglchaxunquanxian ;
						var fyglcaozuoquanxian ;
						var fyglid ;
						
						var fjcxtype ;
						var fjcxchaxunquanxian ;
						var fjcxcaozuoquanxian ;
						var fjcxid ;
						
						var tjfxtype ;
						var tjfxchaxunquanxian ;
						var tjfxcaozuoquanxian ;
						var tjfxid ;
						
						//房客互动
						var fkhdtype ;
						var fkhdchaxunquanxian ;
						var fkhdcaozuoquanxian ;
						var fkhdid ;
						
						$.each(f,function(index,item){//循环
							if(item.menu_type == "系统公告"){
								//系统公告
								xtggtype = "系统公告";
								xxggchaxunquanxian = item.cxquanxian;
								xxggcaozuoquanxian = item.czquanxian;
								xxggid = item.id;
								$("#xtgg_").val(xtggtype);
								$("#xtggchaxun_").val(xxggchaxunquanxian);
								$("#xtggcaozuo_").val(xxggcaozuoquanxian);
								
								
								$("#xxggchaxunquanxian__").val(xxggchaxunquanxian);
				            	$("#xxggcaozuoquanxian__").val(xxggcaozuoquanxian);
				            	$("#xxggid__").val(xxggid);
								if( xxggchaxunquanxian == 1 ){
									$('.rightCommon[item="notice"][right="1"]').addClass('clicked');
								}
								if( xxggcaozuoquanxian == 1 ){
									$('.rightCommon[item="notice"][right="2"]').addClass('clicked');
								}
							}
							if(item.menu_type == "订单列表"){
								//订单列表
								ddlbtype = "订单列表";
								ddlbchaxunquanxian = item.cxquanxian;
								ddlbcaozuoquanxian = item.czquanxian;
								ddlbid = item.id;
								$("#ddlb_").val(ddlbtype);
								$("#ddlbchaxun_").val(ddlbchaxunquanxian);
								$("#ddlbcaozuo_").val(ddlbcaozuoquanxian);
								
								$("#ddlbchaxunquanxian__").val(ddlbchaxunquanxian);
				            	$("#ddlbcaozuoquanxian__").val(ddlbcaozuoquanxian);
				            	$("#ddlbid__").val(ddlbid);
								if( ddlbchaxunquanxian == 1 ){
									$('.rightCommon[item="orderList"][right="1"]').addClass('clicked');
								}
								if( ddlbcaozuoquanxian == 1 ){
									$('.rightCommon[item="orderList"][right="2"]').addClass('clicked');
								}
							}
							if(item.menu_type == "房源管理"){
								//房源管理
								fygltype = "房源管理";
								fyglchaxunquanxian = item.cxquanxian;
								fyglcaozuoquanxian = item.czquanxian;
								fyglid = item.id;
								$("#fygl_").val(fygltype);
								$("#fyglchaxun_").val(fyglchaxunquanxian);
								$("#fyglcaozuo_").val(fyglcaozuoquanxian);
								
								$("#fyglchaxunquanxian__").val(fyglchaxunquanxian);
				                $("#fyglcaozuoquanxian__").val(fyglcaozuoquanxian);
				                $("#fyglid__").val(fyglid);
								if( fyglchaxunquanxian == 1 ){
									$('.rightCommon[item="houseManage"][right="1"]').addClass('clicked');
								}
								if( fyglcaozuoquanxian == 1 ){
									$('.rightCommon[item="houseManage"][right="2"]').addClass('clicked');
								}
							}
							if(item.menu_type == "房间查询"){
								//房间查询
								fjcxtype = "房间查询";
								fjcxchaxunquanxian = item.cxquanxian;
								fjcxcaozuoquanxian = item.czquanxian;
								fjcxid = item.id;
								$("#fjcx_").val(fjcxtype);
								$("#fjcxchaxun_").val(fjcxchaxunquanxian);
								$("#fjcxcaozuo_").val(fjcxcaozuoquanxian);
								
							    $("#fjcxchaxunquanxian__").val(fjcxchaxunquanxian);
				                $("#fjcxcaozuoquanxian__").val(fjcxcaozuoquanxian);
				                $("#fjcxid__").val(fjcxid);
								if( fjcxchaxunquanxian == 1 ){
									$('.rightCommon[item="houseSearch"][right="1"]').addClass('clicked');
								}
								if( fjcxcaozuoquanxian == 1 ){
									$('.rightCommon[item="houseSearch"][right="2"]').addClass('clicked');
								}
							}
							if(item.menu_type == "统计分析"){
								//统计分析
								tjfxtype = "统计分析";
								tjfxchaxunquanxian = item.cxquanxian;
								tjfxcaozuoquanxian = item.czquanxian;
								tjfxid = item.id;
								$("#tjfx_").val(tjfxtype);
								$("#tjfxchaxun_").val(tjfxchaxunquanxian);
								$("#tjfxcaozuo_").val(tjfxcaozuoquanxian);
								
							    $("#tjfxchaxunquanxian__").val(tjfxchaxunquanxian);
				                $("#tjfxcaozuoquanxian__").val(tjfxcaozuoquanxian);
				                $("#tjfxid__").val(tjfxid);
								if( tjfxchaxunquanxian == 1 ){
									$('.rightCommon[item="analyze"][right="1"]').addClass('clicked');
								}
								if( tjfxchaxunquanxian == 1 ){
									$('.rightCommon[item="analyze"][right="2"]').addClass('clicked');
								}
							}
							if(item.menu_type == "房客互动"){
								//房客互动
								fkhdtype = "房客互动";
								fkhdchaxunquanxian = item.cxquanxian;
								fkhdcaozuoquanxian = item.czquanxian;
								fkhdid = item.id;
								$("#fkhd_").val(fkhdtype);
								$("#fkhdchaxun_").val(fkhdchaxunquanxian);
								$("#fkhdcaozuo_").val(fkhdcaozuoquanxian);
								
								$("#fkhdchaxunquanxian__").val(fkhdchaxunquanxian);
				           	 	$("#fkhdcaozuoquanxian__").val(fkhdcaozuoquanxian);
				            	$("#fkhdid__").val(fkhdid);
								if( fkhdchaxunquanxian == 1 ){
									$('.rightCommon[item="interaction"][right="1"]').addClass('clicked');
								}
								if( fkhdcaozuoquanxian == 1 ){
									$('.rightCommon[item="interaction"][right="2"]').addClass('clicked');
								}
							}
			            });
						//点击后的方法
						$('.rightCommon').unbind('click');
						$('.rightCommon').bind('click',function(){
				            if( $(this).attr('class') == 'rightCommon'){//选中状态
				                $(this).addClass('clicked');
				                var item = $(this).attr('item');
				                if( item == 'notice' ){//系统公告
				                	if( $(this).attr('right') == 1 ){//right是1代表查询权限，right是2代表操作权限
				                		xxggchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){               		
				                		xxggcaozuoquanxian = 1 ;
				                	}
				                }else if( item == 'interaction' ){//房客互动
				                	if( $(this).attr('right') == 1 ){
				                		fkhdchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fkhdcaozuoquanxian = 1 ;
				                	}				          
				                }else if( item == 'orderList' ){//订单列表
				                	if( $(this).attr('right') == 1 ){
				                		ddlbchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		ddlbcaozuoquanxian = 1 ;
				                	}
				                }else if( item == 'houseManage' ){//房源管理
				                	if( $(this).attr('right') == 1 ){
				                		fyglchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fyglcaozuoquanxian = 1 ;
				                	}
				                }else if( item == 'houseSearch' ){//房间查询
				                	if( $(this).attr('right') == 1 ){
				                		fjcxchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fjcxcaozuoquanxian = 1 ;
				                	}
				                }else if( item == 'analyze' ){//分析
				                	if( $(this).attr('right') == 1 ){
				                		tjfxchaxunquanxian = 1 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		tjfxcaozuoquanxian = 1 ;
				                	}
				                }     
				            }else if( $(this).attr('class') == 'rightCommon clicked' ){//未选中状态
				                $(this).removeClass('clicked');
				                var item = $(this).attr('item');
				                if( item == 'notice' ){//系统公告
				                	if( $(this).attr('right') == 1 ){//right是1代表查询权限，right是2代表操作权限
				                		xxggchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){               		
				                		xxggcaozuoquanxian = 2 ;
				                	}
				                }else if( item == 'interaction' ){//房客互动
				                	if( $(this).attr('right') == 1 ){
				                		fkhdchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fkhdcaozuoquanxian = 2 ;
				                	}				          
				                }else if( item == 'orderList' ){//订单列表
				                	if( $(this).attr('right') == 1 ){
				                		ddlbchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		ddlbcaozuoquanxian = 2 ;
				                	}
				                }else if( item == 'houseManage' ){//房源管理
				                	if( $(this).attr('right') == 1 ){
				                		fyglchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fyglcaozuoquanxian = 2 ;
				                	}
				                }else if( item == 'houseSearch' ){//房间查询
				                	if( $(this).attr('right') == 1 ){
				                		fjcxchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		fjcxcaozuoquanxian = 2 ;
				                	}
				                }else if( item == 'analyze' ){//分析
				                	if( $(this).attr('right') == 1 ){
				                		tjfxchaxunquanxian = 2 ;//选中 		
				                	}else if( $(this).attr('right') == 2 ){
				                		tjfxcaozuoquanxian = 2 ;
				                	}
				                } 
				            }
				            //alert("系统公告=="+xxggchaxunquanxian + "====" + xxggcaozuoquanxian+ "====" + xxggid);
				            //alert("房客互动=="+fkhdchaxunquanxian + "====" + fkhdcaozuoquanxian+ "====" + fkhdid);
				            //alert("订单列表=="+ddlbchaxunquanxian + "====" + ddlbcaozuoquanxian+ "====" + ddlbid);
				            //alert("房源管理=="+fyglchaxunquanxian + "====" + fyglcaozuoquanxian+ "====" + fyglid);
				            //alert("房间查询=="+fjcxchaxunquanxian + "====" + fjcxcaozuoquanxian+ "====" + fjcxid);
				            //alert("统计分析=="+tjfxchaxunquanxian + "====" + tjfxcaozuoquanxian+ "====" + tjfxid);
				            $("#xxggchaxunquanxian__").val(xxggchaxunquanxian);
				            $("#xxggcaozuoquanxian__").val(xxggcaozuoquanxian);
				            $("#xxggid__").val(xxggid);
				            
				            $("#fkhdchaxunquanxian__").val(fkhdchaxunquanxian);
				            $("#fkhdcaozuoquanxian__").val(fkhdcaozuoquanxian);
				            $("#fkhdid__").val(fkhdid);
				            
				            $("#ddlbchaxunquanxian__").val(ddlbchaxunquanxian);
				            $("#ddlbcaozuoquanxian__").val(ddlbcaozuoquanxian);
				            $("#ddlbid__").val(ddlbid);
				            
				            $("#fyglchaxunquanxian__").val(fyglchaxunquanxian);
				            $("#fyglcaozuoquanxian__").val(fyglcaozuoquanxian);
				            $("#fyglid__").val(fyglid);
				            
				            $("#fjcxchaxunquanxian__").val(fjcxchaxunquanxian);
				            $("#fjcxcaozuoquanxian__").val(fjcxcaozuoquanxian);
				            $("#fjcxid__").val(fjcxid);
				            
				            $("#tjfxchaxunquanxian__").val(tjfxchaxunquanxian);
				            $("#tjfxcaozuoquanxian__").val(tjfxcaozuoquanxian);
				            $("#tjfxid__").val(tjfxid);
						});					
					},
					error:function (error) {
				    }
			});
			
			
		}
		
		//编辑
		function bianji(id,bd_userid,userid){
			//模拟初始化数据
			gainQx(id,bd_userid,userid);
		}
		
		//编辑确定
		function qd(){
			
		}
		
		$('.rightTime').unbind('click');
		$('.rightTime').bind('click',function(){
			$('.rightTime').removeClass('clicked');
            $(this).addClass('clicked');
            
		})
		function queding(){
			var userid = $("#userid").val();
			var time = $('.addMan').find('.clicked').attr('item') ;//获取授权时长的值
			if( time == ''){
				time = "长期" ;
			}
			var houduan_userid = $("#houduan_userid").val();
			$.ajax({
			url:"addRenyuan.action",
			data:{"wy_permissions_userModel.id":userid,"wy_permissions_userModel.authorized_t":time,"houduan_userid":houduan_userid},
			async:false,
			dataType:"json",
			type:"post",
			success:function (data) {
				var f = data.result;
				if(f == "cunfu"){
					alert("您授权过该用户，不能重复授权");
					//清空数据start
					$("#shouquanzhanghao").val("");
					$("#houduan_userid").val("");
					//删除头像和昵称展示框
    				$('.img').find('span').addClass('hidden');
    				//清空数据end
    				//清空按钮颜色变成灰色
    				$('.sureButton').find('.sure').removeClass('giveRightSure').addClass('notSure').attr('disabled','disabled');
					return false;
				}
				if(f == "success"){
					alert("添加成功");
					//刷新本页
					window.location.href = "${pageContext.request.contextPath }/findPermissionsByPage.action";
				}
			},
			error:function (error) {
		    }
			});
			$('.popupDetail').hide();
            $('.mask').hide();
		}
</script>
</html>