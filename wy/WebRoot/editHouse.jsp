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
		<title>编辑房源</title>
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
		<link href="<%=basePath %>assets/css/order.css" rel="stylesheet" type="text/css" />
		<!--<link href="assets/css/accoutInfo.css" rel="stylesheet" type="text/css" />-->
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
				width:auto;
				height:auto;
				overflow:hidden;
				display:none;
				border-radius: 0!important;
				margin-bottom:10px;
			}
			#canvas	img{
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
							<span class="title">编辑房源</span>
						</div>
						<div class="order-right">
							<img src="<%=basePath %>assets/images/return.png" class="return"/>
						</div>
					<div class="content-box list">
						<form action="<%=basePath%>editHouse.action" method="post" id="editHouse" name="editHouse">
						<input type="hidden" name="id" value="${houseModel.id}" />
						<input type="hidden" name="net_house_id" value="<%=random_id %>" />
						<input type="text" style="display: none;color:#F1F2F7;" value="${userid}" id="userid" name="operate_id"/>
						<input type="text" style="display: none;color:#F1F2F7;" value="<%=basePath %>" id="basepath"/>
							<ul class="content">
								<li class="titles clearfix">分组信息</li>
								<li class="clearfix">
								<span>分组：</span>
									<select class="getGroupsList" name="groups" id="groupsid">
										<option value="${houseModel.groups}">选择分组</option>
										<option value="艾比迎2期" <c:if test="${houseModel.groups=='艾比迎2期' }">selected</c:if>>艾比迎2期</option>
										<option value="艾比迎3期" <c:if test="${houseModel.groups=='艾比迎3期' }">selected</c:if>>艾比迎3期</option>
										<option value="艾比迎4期" <c:if test="${houseModel.groups=='艾比迎4期' }">selected</c:if>>艾比迎4期</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房源：</span>
									<input type="text" value="${houseModel.house}" placeholder="请输入房源" name="house"/>
								</li>
								<li class="clearfix">
									<span>上传平台：  </span>
									<select name="source">
										<option value="${houseModel.source}" selected="selected">选择平台</option>
										<option value="途家网" <c:if test="${houseModel.source=='途家网' }">selected</c:if>>途家网</option>
										<option value="途牛网" <c:if test="${houseModel.groups=='途牛网' }">selected</c:if>>途牛网</option>
									</select>
								</li>
								<li class="titles clearfix">房源信息</li>
								<li class="clearfix">
									<span>网约房名称：</span>
									<input type="text" value="${houseModel.net_house_name}" placeholder="请输入名称" name="net_house_name"/>
								</li>
								<li class="clearfix">
									<span>房号：</span>
									<input type="text" value="${houseModel.housenum}" placeholder="请输入房号" name="housenum"/>
								</li>
								<li class="clearfix">
									<span>房间锁名称：</span>
									<input type="text" value="${houseModel.lock_name}" placeholder="请输入房间锁名称" name="lock_name"/>
								</li>
								<li class="clearfix house-type">
									<span>房屋类型：</span>
									<label>
									<input type="text" value="${houseModel.shi}" placeholder="" name="shi"/> 室
								</label>
									<label>
									<input type="text" value="${houseModel.ting}" placeholder="" name="ting"/> 厅
								</label>
									<label>
									<input type="text" value="${houseModel.wei}" placeholder="" name="wei"/> 卫
								</label>
								</li>
								<li class="clearfix">
									<span>地址：</span>
									<span id="city" style="width: 400px;">
										<select class="prov" name="net_house_provinces1" ></select>
										<select class="city" disabled="disabled"	name="net_house_provinces2"></select>
										<select class="dist" disabled="disabled"	name="net_house_provinces3"></select>
									</span>
									<input type="text" style="width: 120px;" value="${houseModel.net_house_street}" name="net_house_street"/>街路巷（小区）
								</li>
								<li class="clearfix">
									<span>区内详细地址：</span>
									<textarea placeholder="区划内详细地址" value="${houseModel.net_house_addr}" name="net_house_addr">${houseModel.net_house_addr}</textarea>
								</li>
								<li class="clearfix">
									<span>地址名称：</span>
									<input type="text" value="${houseModel.net_house_addr_name}" name="net_house_addr_name"/>
								</li>
								<li class="clearfix">
									<span>地址编码：</span>
									<input type="text" value="${houseModel.net_house_addr_id}" name="net_house_addr_id"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人姓名：</span>
									<input type="text" value="${houseModel.house_property_name}" placeholder="" name="house_property_name"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人联系电话：</span>
									<input type="text" value="${houseModel.house_property_phone}" placeholder="" name="house_property_phone"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人证件种类：</span>
									<input type="text" value="${houseModel.house_property_id_type}" placeholder="" name="house_property_id_type"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人证件号码：</span>
									<input type="text" value="${houseModel.house_property_id_num}" placeholder="" name="house_property_id_num"/>
								</li>
								<li class="clearfix">
									<span>房屋产权人类型：</span>
									<select name="house_property_type">
										<option value="${houseModel.house_property_type}" selected="selected">选择类型</option>
										<option value="1" <c:if test="${houseModel.house_property_type=='1' }">selected</c:if>>自然人</option>
										<option value="2" <c:if test="${houseModel.house_property_type=='2' }">selected</c:if>>企业</option>
									</select>
								</li>
								<li class="clearfix">
									<span>出租类型：</span>
									<select	name="house_rentout_type">
										<option value="${houseModel.house_rentout_type}" selected="selected">选择类型</option>
										<option value="1" <c:if test="${houseModel.house_rentout_type=='1' }">selected</c:if>>整租</option>
										<option value="2" <c:if test="${houseModel.house_rentout_type=='2' }">selected</c:if>>分租</option>
										<option value="9" <c:if test="${houseModel.house_rentout_type=='9' }">selected</c:if>>其他</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房屋来源：</span>
									<select name="house_source">
										<option value="${houseModel.house_source}" selected="selected">选择来源</option>
										<option value="1" <c:if test="${houseModel.house_source=='1' }">selected</c:if>>转租</option>
										<option value="2" <c:if test="${houseModel.house_source=='2' }">selected</c:if>>自营</option>
									</select>
								</li>
								<li class="clearfix">
									<span>该地所属县（市、区）公安局代码：</span>
									<input type="text" value="${houseModel.net_house_data_psb_id}" placeholder="" name="net_house_data_psb_id"/>
								</li>
								<li class="clearfix">
									<span>该地所属县（市、区）公安局名称：</span>
									<input type="text" value="${houseModel.net_house_data_psb_name}" placeholder="" name="net_house_data_psb_name"/>
								</li>
								<li class="clearfix">
									<span>该地所属派出所代码：</span>
									<input type="text" value="${houseModel.net_house_data_local_police_id}" placeholder="" name="net_house_data_local_police_id"/>
								</li>
								<li class="clearfix">
									<span>该地所属派出所名称：</span>
									<input type="text" value="${houseModel.net_house_data_local_police_name}" placeholder="" name="net_house_data_local_police_name"/>
								</li>
								<li class="clearfix">
									<span>房屋类别：</span>
									<input type="text" value="${houseModel.house_type}" placeholder="" name="house_type"/>
								</li>
								<li class="clearfix">
									<span>房屋间数：</span>
									<select name="house_num">
										<option value="1间" <c:if test="${houseModel.house_num=='1间' }">selected</c:if>>1间</option>
										<option value="2间" <c:if test="${houseModel.house_num=='2间' }">selected</c:if>>2间</option>
										<option value="3间" <c:if test="${houseModel.house_num=='3间' }">selected</c:if>>3间</option>
									</select>
								</li>
								<li class="clearfix">
									<span>房屋面积_面积(平方米)：</span>
									<input type="text" value="${houseModel.house_acreage}" placeholder="" name="house_acreage"/>
								</li>
								<li class="clearfix">
									<span>朝向：</span>
									<select name="toward">
										<option value="${houseModel.toward}" selected="selected">选择朝向</option>
										<option value="南北" <c:if test="${houseModel.toward=='南北' }">selected</c:if>>南北</option>
										<option value="东西" <c:if test="${houseModel.toward=='东西' }">selected</c:if>>东西</option>
									</select>
								</li>
								<li class="clearfix">
									<span>装修：</span>
									<select	name="decoration">
										<option value="${houseModel.decoration}" selected="selected">选择类型</option>
										<option value="精装" <c:if test="${houseModel.decoration=='精装' }">selected</c:if>>精装</option>
										<option value="毛坯" <c:if test="${houseModel.decoration=='毛坯' }">selected</c:if>>毛坯</option>
									</select>
								</li>
								<li class="clearfix house-type">
									<span>楼层：</span>
									<label>
										<input type="text" value="${houseModel.ceng}" placeholder="" name="ceng"/> 层
									</label>
									<label>
									共 <input type="text" value="${houseModel.cengs}" placeholder="" name="cengs"/> 层
								</label>
									<label>
									<input type="text" value="${houseModel.danyuan}" placeholder="" name="danyuan"/> 单元
								</label>
								</li>
								<li class="clearfix zujin">
									<span>租金：</span>
									<input type="text" name="rent" value="${houseModel.rent}"/> 元/天
								</li>
								<li class="clearfix title">
									<span>标题：</span>
									<input type="text" name="title" value="${houseModel.title}"/>
								</li>
								<li class="clearfix">
									<span>房源描述：</span>
									<textarea class="desc" name="describes" value="${houseModel.describes}">${houseModel.describes}</textarea>
								</li>
							</form>
							<li class="titles clearfix">图片信息</li>
								<li class="clearfix">
									<span>上传图片：</span>
									<span id="canvas"></span>				
									<a href="##" class="img-box">
										<input type="file" id="upload" name="file" />
										<img src="assets/images/update.png" class="imgUpload"/>
									</a>
								</li>
							<li class="titles clearfix">协议信息</li>
							<li class="clearfix">
								<span>上传协议：</span>
								<span id="canvas2"></span>
								<a href="##" class="img-box">
									<input type="file" id="upload2" name="file" />
									<img src="assets/images/update-filt.png" class="imgUpload"/>
								</a>
							</li>
						
						
								<div class="save" onclick="addHouse222()">提交</div>
							</ul>
							
						
					</div>
				</div>
			</section>
		</div>
		<!--更新成功弹窗-->
		<div class="mask none"></div>
		<div class="updates-box none">
			<img src="assets/images/updates.png"/>
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
	function addHouse222(){
		 document.getElementById("editHouse").submit();//表单提交  
	}	
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
		})
console.info("上传图片-------------------------------------------------------------");
	//获取上传按钮
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
		
	}
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
			
			var net_house_provinces1 = '${houseModel.net_house_provinces1 }';
			var net_house_provinces2 = '${houseModel.net_house_provinces2 }';
			var net_house_provinces3 = '${houseModel.net_house_provinces3 }';
			var imgs = '${houseModel.img }';
			var img = imgs.split(";");
			var imgBox = "<img>";
			/* console.log(img);
			var imgs = img.slice[0,] */
			for(var i = 0;i < img.length-1;i++){
				var imgAppend = $(imgBox);
				imgAppend.attr('src','http://114.116.128.50:8080/wy/house_img/'+img[i]);
				$('#canvas').append(imgAppend);
			}
			$('#canvas').show();
			
			var agreements = '${houseModel.agreement }';
			var agreement = agreements.split(";");
			var agreementBox = "<img>";
			for(var i = 0;i < agreement.length-1;i++){
				var imgAppend = $(agreementBox);
				imgAppend.attr('src','http://114.116.128.50:8080/wy/house_agreement/'+agreement[i]);
				$('#canvas2').append(imgAppend);
			}
			$('#canvas2').show();
			
			//选择城市
			$('#city').show().citySelect({
				prov: net_house_provinces1,
				city: net_house_provinces2,
				dist: net_house_provinces3,
				nodata: "none"
			});
			
			
		//更新弹出
		$(".save").click(function(){
			$(".updates-box,.mask").show();
		})
		//关闭弹窗
		$(".mask").click(function(){
			$(".updates-box,.mask").hide();
		})
	</script>

</html>