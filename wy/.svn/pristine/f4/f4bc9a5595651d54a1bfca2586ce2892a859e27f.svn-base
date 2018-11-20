<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--账户信息-->
<div class="wrapper main-wrapper row" id="userInfo">
    <div class="order-top clearfix">
        <div class="order-left">
            <span class="chunk"></span>
            <span class="title">账户信息</span>
        </div>
        <div class="order-right">
            <span class="search order">更新</span>
        </div>
    </div>
    <div class="account-box">
        <div class="head">
            <canvas id="cvs" width="121" height="121">
            </canvas>
            <img src="assets/images/account-tx.png" class="tx imgUpload"/>
            <a href="">
                <input type="file" id="upload"/>
                <img src="assets/images/account-edit.png" class="edit"/>
            </a>
        </div>
        <ul>
            <li>
                <span>昵称：</span>
                <input readonly type="text" value="" id="nickname_s">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
            <li>
                <span>身份证号：</span>
                <input readonly type="text" value="" id="idcard_s">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
            <li>
                <span>真实姓名：</span>
                <input readonly type="text" value="" id="name_s">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
            <li>
                <span>性别：</span>
                <select name="sex" id="sexSelect">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                <input readonly type="text" value="" id="sex">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
            <li>
                <span>手机号：</span>
                <input readonly type="text" value="" id="phone_s">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
            <li>
                <span>地区：</span>
                <input readonly type="text" value="" id="district">
				<span id="city">
					<select class="prov"></select>
					<select class="city" disabled="disabled"></select>
					<select class="dist" disabled="disabled"></select>
				</span>
                <img src="assets/images/account-edit.png" class="edit1" id="citySelect" click=""/>
            </li>
            <li>
                <span>邮箱：</span>
                <input readonly type="email" value="" id="email_s">
                <img src="assets/images/account-edit.png" class="edit1"/>
            </li>
        </ul>
    </div>
    <input type="text" value="" id="mess" style="display:none;color:#F1F2F7;" />
	<input type="text" value="" id="dq" style="display:none;color:#F1F2F7;" />
</div>
<!--账户信息-->
<!--账号安全-->
<div class="wrapper main-wrapper row" id="safety">
    <div class="order-top clearfix">
    <input type="text" id="passwordshow" value="" style="display:none;"/>
        <div class="order-left">
            <span class="chunk"></span>
            <span class="title">账号安全</span>
        </div>
        <div class="order-right">
            <span class="search order" onclick="gengxin()">更新</span>
        </div>
    </div>
    <ul class="update-box">
        <li>
            <i>输入当前密码</i>
            <input type="password" class="password" id="c_password" value="" maxlength="20"/>
        </li>
        <li>
            <i>输入新密码</i>
            <input type="password" class="password" id="new_password" value="" maxlength="20"/>
        </li>
        <li>
            <i>再次输入新密码</i>
            <input type="password" class="password" id="news_password" value="" maxlength="20"/>
        </li>
    </ul>
</div>
<!--账号安全-->
<!--版本介绍-->
<div class="wrapper main-wrapper row" id="versionIntro">
    <div class="order-top clearfix">
        <div class="order-left">
            <span class="chunk"></span>
            <span class="title">版本介绍</span>
        </div>
        <div class="order-right">
            <span class="search order" onclick="updateVersion()">更新</span>
        </div>
    </div>
    <div class="vertial-box">
        <div class="vertial clearfix">
            <img src="assets/images/user-img-version.png"/>
            <span class="dang">当前版本</span>
            <span class="ver-number"></span>
            <ul id="for_version">
            </ul>
        </div>
    </div>
</div>
<!--退出登录-->
<div class="wrapper main-wrapper row" id="exit">
</div>