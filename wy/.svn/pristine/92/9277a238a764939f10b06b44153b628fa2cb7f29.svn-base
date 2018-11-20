<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dhcc.common.util.CommUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String random_id = CommUtil.getID();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>添加房源</title>
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
			.canvas{
				width:auto;
				height:auto;
				overflow:hidden;
				display:none;
				border-radius: 0!important;
				margin-bottom:10px;
				display:none;
			}
			.canvas	img{
				float:left;
				margin-right:10px;
				margin-top:10px;
				width:120px!important;
				height:120px!important;
				overflow:hidden;
			}
			#canvas2{
				width:auto;
				height:auto;
				overflow:hidden;
				display:none;
				border-radius: 0!important;
				margin-bottom:10px;
			}
			#canvas2 img{
				float:left;
				margin-right:10px;
				margin-top:10px;
				width:120px!important;
				height:120px!important;
				overflow:hidden;
			}
			#upload2{
				width:100%;
				height:100%;
				overflow:hidden;
				position:absolute;
				opacity:0;
				z-index:1000;
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
                    <span class="title">添加房源</span>
                </div>
                <div class="order-right">
                    <img src="assets/images/return.png" class="return"/>
                </div>
            </div>
            <div class="content-box list">
                <form action="<%=basePath%>addHouse.action" method="post" id="addHouse" name="addHouse">
						<input type="hidden" name="net_house_id" value="<%=random_id %>" />
                    <ul class="content">
                        </li>
                        <li class="titles clearfix">请完善经营者信息</li>
                        <li class="clearfix">
                            <span>经营者类型：</span>
                            <select>
										<option value="">选择类型</option>
										<option value="">自然人</option>
										<option value="">企业</option>
									</select>
                        </li>
                        <li class="clearfix">
                            <span>经营责任人姓名：</span>
                            <input type="text" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>经营责任人证件种类：</span>
                           <select>
										<option value="">选择种类</option>
										<option value="">身份证</option>
										<option value="">营业执照</option>
									</select>
                        </li>
                        <li class="clearfix">
                            <span>经营责任人证件号码：</span>
                            <input type="text" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>经营责任人联系电话：</span>
                            <input type="text" value="" placeholder="" />
                        </li>
                        <li class="clearfix">
                            <span>经营责任人实际居住地址：</span>
                            <textarea name="" rows="" cols=""></textarea>
                        </li>
                        <li class="titles clearfix">请选择所属管辖区域</li>
                        	<li class="clearfix">
									<span>地址名称：</span>
									<input type="text" name="net_house_addr_name"/>
								</li>
								<li class="clearfix">
									<span>地址编码：</span>
									<input type="text" name="net_house_addr_id" />
								</li>
								<li class="clearfix">
									<span>使用状态：</span>
									<select>
										<option value="">选择状态</option>
										<option value="">已使用</option>
										<option value="">未使用</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房屋产权人姓名：</span>
									<input type="text" value="" placeholder="" name="house_property_name"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人联系电话：</span>
									<input type="text" value="" placeholder="" name="house_property_phone"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人证件种类：</span>
									<select name="house_property_id_type" >
										<option value="" selected="selected">选择种类</option>
										<option value="身份证">身份证</option>
										<option value="营业执照">营业执照</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房屋产权人证件号码：</span>
									<input type="text" value="" placeholder=""   name="house_property_id_num"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人类型：</span>
									<select name="house_property_type">
										<option value="" selected="selected">选择类型</option>
										<option value="1">自然人</option>
										<option value="2">法人</option>
									</select>
								</li>
								<li class="clearfix">
									<span>出租类型：</span>
									<select name="house_rentout_type">
										<option value="" selected="selected">选择类型</option>
										<option value="1">整租</option>
										<option value="2">分租</option>
										<option value="9">其他</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房屋来源：</span>
									<select name="house_source">
										<option value="" selected="selected">选择来源</option>
										<option value="1">转租</option>
										<option value="2">自营</option>
									</select>
								</li>
								<li class="clearfix">
									<span>该地所属县（市、区）公安局名称：</span>
									<input type="text" value="" placeholder="某省某市某县" name="net_house_data_psb_name"/>
									<!-- <select>
										<option value="">选择省</option>
										<option value="">山西省</option>
										<option value="">海南省</option>
									</select>
									<select>
										<option value="">选择市</option>
										<option value="">三亚市</option>
										<option value="">海南省</option>
									</select>
									<select>
										<option value="">选择县/区</option>
										<option value="">吉阳区</option>
										<option value="">天涯区</option>
									</select> -->
								</li>
								<li class="clearfix">
									<span>该地所属派出所代码：</span>
									<input type="text" value="" placeholder="" name="net_house_data_local_police_id"/>
								</li>
								<li class="clearfix">
									<span>该地所属派出所名称：</span>
									<input type="text" value="" placeholder="" name="net_house_data_local_police_name"/>
								</li>
								<li class="clearfix">
                        <li class="titles clearfix">请添加房源信息</li>
                        <li class="clearfix">
                            <span>信息选项：</span>
                            <ul class="income-box kindSelect">
                                <li weizhi="fangwuweizhi" style="margin-left:0;" class="income active">房屋位置</li>
                                <li weizhi="fanfwuxiangqing" class="income">房屋详情</li>
                                <li weizhi="fangwumiaoshu" class="income">房屋描述</li>
                                <li weizhi="sheshifuwu" class="income">设施服务</li>
                                <li weizhi="ruzhuguize" class="income">入住规则</li>
                                <li weizhi="fangkezhaopian" class="income">房屋照片</li>
                                <li weizhi="jiage" class="income">价格</li>
                                <li weizhi="lijie" class="income">房屋协议</li>
                            </ul>
                        </li>
                        <li select="fanfwuxiangqing" class="fangwucommon">
                            <div class="clearfix">
                                <span>出租方式：</span>
                                <select class="kindSelect">
                                    <option value="zhnegzu">整套房屋</option>
                                    <option value="hezu">独立房间</option>
                                </select>
                            </div>
                            <div class="clearfix">
                                <span>房屋类型：</span>
                                <select class="kindSelect" name="house_type">
                                    <option value="gongyu">公寓</option>
                                    <option value="kezhan">客栈</option>
                                    <option value="bieshu">别墅</option>
                                    <option value="qita">其他/特色</option>
                                </select>
                                <select class="kindSelect">
                                    <option class="gongyu">普通公寓</option>
                                    <option value="gongyu">酒店式公寓</option>
                                    <option class="kezhan">客栈</option>
                                    <option class="bieshu">独栋别墅</option>
                                    <option class="bieshu">别墅单间</option>
                                    <option class="bieshu">联排别墅</option>
                                    <option class="bieshu">叠拼别墅</option>
                                    <option class="qita">农家乐</option>
                                    <option class="qita">老洋房</option>
                                    <option class="qita">四合院</option>
                                    <option class="qita">渔家乐</option>
                                </select>
                            </div>
                            <div class="clearfix">
                                <span>房屋面积：</span>
                                <div class="fangwumianji">
                                    <input type="number" placeholder="122" name="house_acreage"/>
                                    <span>平米</span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>房屋景观：</span>
                                <select class="kindSelect">
                                    <option class="" selected>无</option>
                                    <option value="">海景</option>
                                    <option class="">湖景</option>
                                    <option class="">江景</option>
                                    <option class="">山景</option>
                                </select>
                            </div>
                            <div class="clearfix house-type">
                                <span>房屋户型：</span>
                                <label>
                                    <input type="number" value="" placeholder="2" name="shi"/> 室
                                </label>
                                <label>
                                    <input type="number" value="" placeholder="2" name="ting"/> 厅
                                </label>
                                <label>
                                    <input type="number" value="" placeholder="2" name="wei"/> 卫
                                </label>
                            </div>
                            <div class="clearfix">
                                <span>床型：</span>
                                <div class="chuangxing">
                                    <div class="chuangxingBox">
                                        <select>
                                            <option class="" selected>大床</option>
                                            <option value="">圆床</option>
                                            <option class="">双层床</option>
                                            <option class="">双人沙发床</option>
                                            <option class="">单人床</option>
                                            <option class="">单人沙发床</option>
                                            <option class="">儿童床</option>
                                            <option class="">儿童双层床</option>
                                            <option class="">榻榻米</option>
                                            <option class="">炕</option>
                                            <option class="">地上床垫</option>
                                        </select>
                                        <select>
                                            <option class="" selected>2×1.8米</option>
                                            <option value="">2×1.5米</option>
                                            <option class="">1.8米×1.5米</option>
                                            <option class="">2米×2米</option>
                                            <option class="">2米×1.6米</option>
                                            <option class="">2.2米×2.2米</option>
                                        </select>
                                        <select>
                                            <option class="" selected>1</option>
                                            <option value="">2</option>
                                            <option class="">3</option>
                                            <option class="">4</option>
                                            <option class="">5</option>
                                            <option class="">6</option>
                                        </select>
                                        <button>删除</button>
                                    </div>
                                    <button>继续添加床型</button>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>宜住人数：</span>
                                <input type="number"/>
                            </div>
                        </li>
                        <!--房屋描述-->
                        <li select="fangwumiaoshu" class="fangwucommon">
                            <div class="clearfix">
                                <span>房屋名称：</span>
                                <input type="number" class="fangwumingcheng"/>
                            </div>
                            <div class="clearfix">
                                <span>房屋特色：</span>
                                <textarea  class="fangwutese"   name="describes"></textarea>
                            </div>
                            <div class="clearfix">
                                <span>交通位置(选填)：</span>
                                <textarea class="fangwutese"></textarea>
                            </div>
                            <div class="clearfix">
                                <span>周边介绍(选填)：</span>
                                <textarea class="fangwutese"></textarea>
                            </div>
                        </li>
                        <!--房屋描述-->
                        <!--入住规则-->
                        <li select="ruzhuguize" class="fangwucommon">
                            <div class="clearfix">
                                <span>房客入住时间：</span>
                                <input type="date">
                            </div>
                            <div class="clearfix">
                                <span>房客退房时间：</span>
                                <input type="date">
                            </div>
                            <div class="clearfix">
                                <div class="fangwumianji">
                                    <span>接待房客时间：</span>
                                    <input type="date"><span class="fangwumianjiSpan">至</span><input type="date">
                                    <span>添加接待时段</span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>接待性别：</span>
                                <input class="radio" type="radio" name="sex"/>
                                <span>不限</span>
                                <input class="radio" type="radio" name="sex"/>
                                <span>男</span>
                                <input class="radio" type="radio" name="sex"/>
                                <span>女</span>
                            </div>
                            <div class="clearfix">
                                <span>接待特殊年龄段：</span>
                                <input class="duoxuan" type="checkbox" name="jiedai"/>
                                <span> 儿童（0-12岁）</span>
                                <input class="duoxuan" type="checkbox" name="sex"/>
                                <span>老人（65岁以上）</span>
                            </div>
                            <div class="clearfix">
                                <span>打扫换洗方式：</span>
                                <div class="fangwumianji">
                                    <div class="clearfix">
                                        <span>多久提供打扫卫生</span>
                                        <select>
                                            <option class="" selected>1客1扫</option>
                                            <option value="">1天1扫</option>
                                            <option class="">2天1扫</option>
                                            <option class="">3天1扫</option>
                                            <option class="">4天1扫</option>
                                            <option class="">5天1扫</option>
                                            <option class="">6天1扫</option>
                                            <option class="">7天1扫</option>
                                        </select>
                                    </div>
                                    <div class="clearfix">
                                        <span>多久提供被单更换</span>
                                        <select>
                                            <option class="" selected>1客1换</option>
                                            <option value="">1天1换</option>
                                            <option class="">2天1换</option>
                                            <option class="">3天1换</option>
                                            <option class="">4天1换</option>
                                            <option class="">5天1换</option>
                                            <option class="">6天1换</option>
                                            <option class="">7天1换</option>
                                        </select>
                                    </div>
                                    <div class="clearfix">
                                        <span>多久提供牙具更换</span>
                                        <select>
                                            <option class="" selected>1客1换</option>
                                            <option value="">1天1换</option>
                                            <option class="">2天1换</option>
                                            <option class="">3天1换</option>
                                            <option class="">4天1换</option>
                                            <option class="">5天1换</option>
                                            <option class="">6天1换</option>
                                            <option class="">7天1换</option>
                                        </select>
                                    </div>
                                    <div class="clearfix">
                                        <span>多久提供毛巾/浴巾更换</span>
                                        <select>
                                            <option class="" selected>1客1换</option>
                                            <option value="">1天1换</option>
                                            <option class="">2天1换</option>
                                            <option class="">3天1换</option>
                                            <option class="">4天1换</option>
                                            <option class="">5天1换</option>
                                            <option class="">6天1换</option>
                                            <option class="">7天1换</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>对房客的要求：</span>
                                <div class="fangwumianji">
                                    <div class='fangwumianjii'>
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许吸烟</span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="空代表不收费，若收取费用请说明"></textarea>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许带宠物 </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许做饭 </span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="空代表不收费，若收取费用请说明"></textarea>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许聚会 </span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="空代表不收费，若收取费用请说明"></textarea>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许加人 </span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="仅可对超出宜住人数的人员进行收费"></textarea>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许商业拍摄 </span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="仅可对超出宜住人数的人员进行收费"></textarea>
                                        </div>
                                    </div>
                                    <div class="fangwumianjii">
                                        <div class="fangwumianjii">
                                            <div>
                                                <input name="yaoqiu" class="fangkeyaoqiu duoxuan" type="checkbox"/>
                                                <span>允许房客加床 </span>
                                            </div>
                                            <textarea class="guizeTextarea" placeholder="仅可对超出宜住人数的人员进行收费"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>其他入住提示(选填)</span>
                                <textarea placeholder="不可录入“发票”“押金”等信息，不可与已录入信息矛盾，否则不会审核通过哦~
若对客有其他入住要求，请说明。例如：水电燃气费、额外打扫费用、入住所需证件等。"></textarea>
                            </div>
                        </li>
                        <!--入住规则-->
                        <!--房客照片-->
                        <li select="fangkezhaopian" class="fangwucommon">
                            <div class="fangwumianjii">
                                <div class="fangwumianjii">照片需满足以下类型</div>
                                <div class="fangwumianjii">
                                    <span>客厅：1张</span>
                                    <span>卧室：2张</span>
                                    <span>厨房：1张</span>
                                    <span>卫生间：2张</span>
                                    <span>外景：1张</span>
                                </div>
                                <p>
                                    请保证上传的图片高清、无水印、无logo和联系方式；为了避免房屋图片与户型不符产生客诉，请根据所选户型上传。
                                    如未找到图片所属类型，可返回房屋详情修改户型信息
                                </p>
                            </div>
                            <div>
                                <span>客厅</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>				
									<a href="##" class="img-box">
										<input type="file" id="upload" class="upload" name="file" />
										<img src="assets/images/update.png" class="imgUpload"/>
									</a>
                                </div>
                            </div>
                            <div>
                                <span>卧室</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload"/>
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            <div>
                                <span>厨房</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload"/>
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            <div>
                                <span>卫生间</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload"/>
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            <div>
                                <span>阳台</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload"/>
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            <div>
                                <span>外景</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload"/>
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            <div>
                                <span>其他</span>
                                <div class="clearfix">
                                    <span>上传图片：</span>
                                    <span class="canvas"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload" name="file" />
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!--房客照片-->
                        <!-- 价格-->
                        <li select="jiage" class="fangwucommon">
                            <div class="clearfix">
                                <span>售卖方式:</span>
                                <select>
                                    <option value="">每周同价</option>
                                    <option value="">周中、周末不同价</option>
                                </select>
                            </div>
                            <div class="clearfix">
                                <span class="">工作日价（周日-周四）:</span>
                                <div class="clearfix">
                                    <input class="floatInput" type="number" name="rent"/>
                                    <span class="fangwumianjiSpan">元</span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>周末价（周五-周六）:</span>
                                <div class="clearfix">
                                    <input class="floatInput" type="number"/>
                                    <span class="fangwumianjiSpan">元</span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>售卖价格覆盖范围:</span>
                                <select class="inputStyle">
                                    <option value="">覆盖所有价格</option>
                                    <option value="">售卖价格覆盖范围</option>
                                </select>
                            </div>
                            <div class="clearfix">
                                <span>连住折扣</span>
                                <div class="clearfix">
                                    <div class="fangwumianjii">
                                        <span class="fangwumianjiSpan">连住天数:</span>
                                        <select>
                                            <option value="">7</option>
                                            <option value="">15</option>
                                        </select>
                                        <span class="fangwumianjiSpan">折扣设置:</span>
                                        <input type="number"/>折
                                        <button>删除</button>
                                    </div>
                                </div>
                                <button>添加连住折扣</button>
                            </div>
                            <div class="clearfix">
                                <span>最少起订天数 起订天数越少，越能满足更多人预订</span>
                                <input type="number" class="floatInput"/>
                                <span class="fangwumianjiSpan">天</span>
                            </div>
                            <div class="clearfix">
                                <span>
                                    <input type="radio" class="radio"/>收取住房押金
                                </span>
                                <input class="floatInput" type="number"/>
                                <span class="fangwumianjiSpan">元</span>
                            </div>
                            <div class="clearfix">
                                <span>
                                    收款方式：
                                </span>
                                <span>全额预付</span>
                            </div>
                            <div class="clearfix">
                                <span>
                                    退款方式
                                </span>
                                <div>
                                    <span class="fangwumianjiSpan">入住</span>
                                    <select>
                                        <option value="">当天</option>
                                        <option value="">前1天</option>
                                        <option value="">前2天</option>
                                        <option value="">前3天</option>
                                        <option value="">前4天</option>
                                        <option value="">前5天</option>
                                        <option value="">前6天</option>
                                        <option value="">前7天</option>
                                        <option value="">前15天</option>
                                        <option value="">前99天</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <!-- 价格-->
                        <!--房屋位置-->
                        <li select="fangwuweizhi" class="fangwuweizhi fangwucommon">
                            <div class="clearfix">
                                <div><span>地址：</span>
									<span id="city" style="width: 400px;">
										<select class="prov"></select>
										<select class="city" disabled="disabled"></select>
										<select class="dist" disabled="disabled"></select>
									</span>
                                    <input type="text" style="width: 120px;" />街路巷（小区）</div>
                            </div>
                            <div class="clearfix">
                                <span>区内详细地址：</span>
                                <textarea placeholder="区划内详细地址"></textarea>
                            </div>
                           <div class="clearfix">
                               <span>补充说明(选填)：</span>
                               <input class="inputStyle" type="text" placeholder="不可与地址重复（例：万达广场对面）"/>
                           </div>
                            <div class="clearfix">
                                <span>门牌号(选填)：</span>
                                <input class="inputStyle" type="text" placeholder="房客预订成功后才显示此信息"/>
                            </div>
                            <div class="clearfix">
                                <span>地图定位：</span>
                                     <!--百度地图容器-->
                                  <div id="map">
                          
                            
                                </div>
                            </div>
                        </li>
                        <!--房屋位置-->
                        <!--设施服务-->
                        <li select="sheshifuwu" class="fangwucommon">
                            <div class="clearfix">
                                <span>居家</span>
                                <div class="fangwumianjii">
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">无线网络</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">有线网络</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电视</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">拖鞋</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电热水壶</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">空调</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">冰箱</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">洗衣机</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">暖气</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电熨斗</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">吹风机</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">净水机</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">茶几</span>
                                    </span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>卫浴</span>
                                <div class="fangwumianjii">
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">独立卫浴</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">全天热水</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">分时段热水</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">洗发水/沐浴露</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">牙具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">毛巾</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">卫生纸</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">浴巾</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">香皂/洗手液</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">浴缸</span>
                                    </span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>餐厨</span>
                                <div class="fangwumianjii">
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">烹饪锅具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">餐具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">刀具菜板</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">燃气灶</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电饭煲</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">洗涤用具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电磁炉</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">调料</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">微波炉</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">烧烤器具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">整体橱柜</span>
                                    </span>
                                </div>
                            </div>
                            <div class="clearfix">
                                <span>娱乐</span>
                                <div class="fangwumianjii">
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">麻将机</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">餐具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="radio" name="reshui"/>
                                        <span class="fangwumianjiSpan">刀具菜板</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">燃气灶</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电饭煲</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">洗涤用具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">电磁炉</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">调料</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">微波炉</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">烧烤器具</span>
                                    </span>
                                    <span class="fangwumianjiSpan">
                                        <input class="duoxuan" type="checkbox" name="jiedai"/>
                                        <span class="fangwumianjiSpan">整体橱柜</span>
                                    </span>
                                </div>
                            </div>
                        </li>
                        <!--设施服务-->
                        
                        <li select="lijie" class="fangwucommon">
                           
                            <div>                         
                                <div class="clearfix">
                                    <span>上传协议：</span>
                                    <span id="canvas2"></span>
                                    <a href="##" class="img-box">
                                        <input type="file" class="upload" id="upload2" name="file" />
                                        <img src="assets/images/update.png" class="imgUpload" />
                                    </a>
                                </div>
                            </div>
                            </li>
                    </ul>
                    <div class="save">提交</div>
                </form>
            </div>
        </div>
    </section>
</div>
<!--更新成功弹窗-->
<div class="mask none"></div>
<div class="updates-box none">
    <img src="<%=basePath %>assets/images/updates.png"/>
    <span>该房源已提交审核！</span>
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
		$(function(){
			if("${userid}"==""){
		    	   document.location.replace("login.jsp");	
			    }
		});
		
	function addHouse222(){
		 document.getElementById("addHouse").submit();//表单提交  
	}	
		$('.kindSelect li').click(function(){
	        var val = $(this).attr('weizhi');
	        $('.kindSelect li').removeClass('active');
	        $(this).addClass('active');
	        $('.fangwucommon').hide();
	        $('.fangwucommon[select='+val+']').show();
    	});
		$('.income-box .income').click(function(){
			if( $(this).attr('click') == '' || $(this).attr('click') == undefined ){
				$(this).addClass('active').attr('click','clicked');
			}else if( $(this).attr('click') == 'clicked' ){
				$(this).removeClass('active').attr('click','');
			}
		});
		//返回房源列表
		$('.return').click(function() {
			window.location.href = 'houseManage.jsp';
		});
console.info("上传图片-------------------------------------------------------------");
	for( var k = 0 ; k < $('.upload').length ; k++ ){
		//获取上传按钮
		var input1 = $($(".upload")[k]).attr('upId',k);
		var canBox = input1.parents(".img-box").siblings('.canvas');
		console.log(canBox);
		console.log(input1);
		if(typeof FileReader==='undefined'){
			//result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
			input1.setAttribute('disabled','disabled');
		}else{
			
			/*input1.addEventListener('change',function (e){
			 console.log(this.files);//上传的文件列表
			 },false); */
		}
	}
			$('.upload').change(function(){
				if(typeof FileReader==='undefined'){
				//result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
					input1.setAttribute('disabled','disabled');
				}else{
					var file = $(this)[0].files[0];
					var index = parseInt($(this).attr('upId'));
					var type = 'image/png' || 'image/jpg'|| 'image/jpeg';
					if(!/image\/\w+/.test(type)){
						alert("文件必须为图片！");
						//图片文件的type值为image/png或image/jpg
						
					}else{
						console.info("----------上传服务器文件开始----------");
						var formData = new FormData();
					    formData.append('file', file);
					    formData.append('id','<%=random_id %>');
						$.ajax({
									url:"uploadHouseFile.action",
									data:formData,
									type:"post",
									dataType:'json',
									async:false,
									cache: false,
					        		contentType: false,
					        		processData: false,
									success:function(msg){
										if(msg.message == "error"){
											alert("上传失败！");
										}else{
											$("#mess").val(msg.message);
										}
									},
									error:function(error){
										console.log("网络数据异常！"+error);
									}
					    });
						console.info("----------上传服务器文件结束----------");
						var imgBox = "<img class='canvasBox'>";
						var reader = new FileReader();//实例一个文件对象
						reader.readAsDataURL(file);//把上传的文件转换成url
						//当文件读取成功便可以调取上传的接口
						reader.onload = function(e){
							var imgAppend = $(imgBox);
							// console.log(this.result);//文件路径
							// console.log(e.target.result);//文件路径
							/*var data = e.target.result.split(',');
							 var tp = (file.type == 'image/png')? 'png': 'jpg';
							 var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
							 //需要上传到服务器的在这里可以进行ajax请求
							 // console.log(imgUrl);
							 // 创建一个 Image 对象
							 var image = new Image();
							 // 创建一个 Image 对象
							 // image.src = imgUrl;
							 image.src = e.target.result;
							 image.onload = function(){
							 document.body.appendChild(image);
							 }*/
			
							var image = new Image();
							// 设置src属性
							image.src = e.target.result;
							console.log(image.src);
							 imgAppend.attr("src",image.src);
							/* alert(e.target.result); */
							var max=200;
							// 绑定load事件处理器，加载完成后执行，避免同步问题
							
							$($(".canvas")[index]).show().append(imgAppend);
							
							
						};
						/* $("#canvas").css("display","block"); */
					}
				}
				
			})
	<%-- //获取上传按钮
	var input1 = document.getElementById("upload");
	console.log(input1);
	if(typeof FileReader==='undefined'){
		//result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
		input1.setAttribute('disabled','disabled');
	}else{
		input1.addEventListener('change',readFile,false);
		/*input1.addEventListener('change',function (e){
		 console.log(this.files);//上传的文件列表
		 },false); */
	}
	function readFile(){	
		var file = this.files[0];//获取上传文件列表中第一个文件
		if(!/image\/\w+/.test(file.type)){
			alert("文件必须为图片！");
			//图片文件的type值为image/png或image/jpg
			return false ;
		}
		/* if(!/image\/\w+/.test(file.type)){
			//图片文件的type值为image/png或image/jpg
			alert("文件必须为图片！");
			return false;
		} */
		// console.log(file);
		
		   console.info("----------上传服务器文件开始----------");
			var formData = new FormData();
		    formData.append('file', file);
		    formData.append('id','<%=random_id %>');
			$.ajax({
						url:"uploadHouseFile.action",
						data:formData,
						type:"post",
						dataType:'json',
						async:false,
						cache: false,
		        		contentType: false,
		        		processData: false,
						success:function(msg){
							if(msg.message == "error"){
								alert("上传失败！");
							}else{
								$("#mess").val(msg.message);
							}
						},
						error:function(error){
							console.log("网络数据异常！"+error);
						}
		    });
			console.info("----------上传服务器文件结束----------");
			var imgBox = "<img class='canvasBox'>";
			var reader = new FileReader();//实例一个文件对象
			reader.readAsDataURL(file);//把上传的文件转换成url
			//当文件读取成功便可以调取上传的接口
			reader.onload = function(e){
				var imgAppend = $(imgBox);
				// console.log(this.result);//文件路径
				// console.log(e.target.result);//文件路径
				/*var data = e.target.result.split(',');
				 var tp = (file.type == 'image/png')? 'png': 'jpg';
				 var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
				 //需要上传到服务器的在这里可以进行ajax请求
				 // console.log(imgUrl);
				 // 创建一个 Image 对象
				 var image = new Image();
				 // 创建一个 Image 对象
				 // image.src = imgUrl;
				 image.src = e.target.result;
				 image.onload = function(){
				 document.body.appendChild(image);
				 }*/

				var image = new Image();
				// 设置src属性
				image.src = e.target.result;
				 imgAppend.attr("src",image.src);
				/* alert(e.target.result); */
				var max=200;
				// 绑定load事件处理器，加载完成后执行，避免同步问题
				$("#canvas").append(imgAppend);
			};
			$("#canvas").css("display","block");
		
	} --%>
	console.info("上传图片-------------------------------------------------------------");
	
	
	
	console.info("上传协议-------------------------------------------------------------");
	//获取上传按钮
	var input2 = document.getElementById("upload2");
	console.log(input2);
	if(typeof FileReader==='undefined'){
		//result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
		input2.setAttribute('disabled','disabled');
	}else{
		input2.addEventListener('change',readFile2,false);
		/*input1.addEventListener('change',function (e){
		 console.log(this.files);//上传的文件列表
		 },false); */
	}
	function readFile2(){
		var xieyiFile = this.files[0];//获取上传文件列表中第一个文件
		if(!/image\/\w+/.test(xieyiFile.type)){
			//图片文件的type值为image/png或image/jpg
			alert("文件必须为图片！");
			return false ;
		}
		// console.log(file);
		/* var reader = new FileReader();//实例一个文件对象
		reader.readAsDataURL(file);//把上传的文件转换成url */
		
		   console.info("----------上传服务器文件开始----------");
			var formData = new FormData();
		    formData.append('file', xieyiFile);
		    formData.append('id','<%=random_id %>');
			$.ajax({
						url:"uploadHouse2.action",
						data:formData,
						type:"post",
						dataType:'json',
						async:false,
						cache: false,
		        		contentType: false,
		        		processData: false,
						success:function(msg){
							if(msg.message == "error"){
								alert("上传失败！");
							}else{
								$("#mess").val(msg.message);
							}
						},
						error:function(error){
							console.log("网络数据异常！"+error);
						}
		    });
			console.info("----------上传服务器文件结束----------");
		
		//当文件读取成功便可以调取上传的接口
		var xieyiBox = "<img class='canvasBox'>";
		var reader = new FileReader();//实例一个文件对象
		reader.readAsDataURL(xieyiFile);//把上传的文件转换成url
		//当文件读取成功便可以调取上传的接口
		reader.onload = function(e){
			var imgAppend = $(xieyiBox);
			// console.log(this.result);//文件路径
			// console.log(e.target.result);//文件路径
			/*var data = e.target.result.split(',');
			 var tp = (file.type == 'image/png')? 'png': 'jpg';
			 var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
			 //需要上传到服务器的在这里可以进行ajax请求
			 // console.log(imgUrl);
			 // 创建一个 Image 对象
			 var image = new Image();
			 // 创建一个 Image 对象
			 // image.src = imgUrl;
			 image.src = e.target.result;
			 image.onload = function(){
			 document.body.appendChild(image);
			 }*/

			var image = new Image();
			// 设置src属性
			image.src = e.target.result;
			 imgAppend.attr("src",image.src);
			/* alert(e.target.result); */
			var max=200;
			// 绑定load事件处理器，加载完成后执行，避免同步问题
			$("#canvas2").append(imgAppend);
		};
		$("#canvas2").css("display","block");
	}
	console.info("上传协议-------------------------------------------------------------");
			
			//选择城市
			$('#city').show().citySelect({
				prov: "陕西",
				city: "西安",
				dist: "雁塔区",
				nodata: "none"
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
	<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(longitude,latitude){
      createMap(longitude,latitude);//创建地图
      setMapEvent();//设置地图事件
      addMapControl();//向地图添加控件
      addMapOverlay();//向地图添加覆盖物
    }
    function createMap(longitude,latitude){ 
      map = new BMap.Map("map"); 
      map.centerAndZoom(new BMap.Point(longitude,latitude),15);
    }
    function setMapEvent(){
      map.enableScrollWheelZoom();
      map.enableKeyboard();
      map.enableDragging();
      map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
      target.addEventListener("click",function(){
        target.openInfoWindow(window);
      });
    }
    function addMapOverlay(){
    }
    //向地图添加控件
    function addMapControl(){
      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
      scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
      map.addControl(scaleControl);
      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:0});
      map.addControl(navControl);
      var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
      map.addControl(overviewControl);
    }
     
     
    var map;
    var pos=document.getElementById("pos");
                var geo=window.navigator.geolocation;
                if(geo){
                        var options={
                      enableHighAccuracy:false, 
                      maximumAge:1000,
                      timeout:10000
                }
 
                        geo.getCurrentPosition(onSuccess,onError,options);
                        function onSuccess(position){
                                var longitude =position.coords.longitude;//获取经度坐标
                                var latitude=position.coords.latitude;//获取纬度坐标
                                initMap(longitude,latitude);
                        }
                }
                function onError(error){
                         switch(error.code){    
                                case 1 :
//                                    alert(error.message);//用户选了不允许
                                  break;    
                                case 2:
//                                    alert(error.message);//连不上GPS卫星，或者网络断了
                                 break;    
                                case 3:
//                                    alert(error.message);//超时了
                                break;     
                                default:
//                                    alert(error.message);//未知错误，其实是err.code==0的时候
                                break;    
                        }
                }
  </script>

</html>