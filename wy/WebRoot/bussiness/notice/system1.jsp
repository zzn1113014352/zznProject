<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="wrapper main-wrapper row" id="service">
	
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
	</body>
</html>