<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>仓库管理系统</title>
<link href="<c:url value='/img/login/style/login.css'/>" rel="stylesheet" type="text/css">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/steed.js'/>"></script>
<script src="<c:url value='/js/jQuery.md5.js'/>" type="text/javascript"></script>
<script type="text/javascript">

	if (window != top) 
	top.location.href = location.href; 
	
	function submitLogin() {
		$("#btndiv").remove();
		$("#loging").css("display", "");
		setTimeout(function() {
			document.getElementById("loginForm").submit();
		}, 2000);
	}

	var clickable = true;
	function login() {
		var nickName = $("#nickName").val();
		if (isObjNull(nickName)) {
			alert("用户名不能为空！！");
			return false;
		}
		
		var pwd = $("#password").val();
		if (isObjNull(pwd)) {
			alert("密码不能为空！！");
			return false;
		}
		var password = $.md5(pwd);
		$("#btndiv").hide();
		$("#loging").show();		
		return true;
	}
</script>
</head>
<body>
	<div class="full-bg">
		<div class="header">
			<ul>
				<li>|</li>
				<li>仓库管理系统</li>
			</ul>
		</div>
		<style>
			.header{
				position: absolute;
				top:0;
				left:0;
				width: 100%;
				height: 80px;
				background-color: #4f647e;
			}
			.header ul{
				margin-top: 12px;
				margin-left: 10px;
				color: #ffffff;
				font-size: 35px;
				font-family:KaiTi;
				font-weight: bold;
				height: 60px;
			}
			.header ul li{
				float: left;
				margin-left:10px;
				list-style: none;
				height: 50px;
				line-height: 50px;
				
			}
			.header ul li img{
				margin-top: 5px;
				height: 40px;
				width: 125px;
			}
		</style>
		<div class="full_pic"></div>
		<div class="footer">
		</div>
		<style>
			.footer{
					position: fixed;
					bottom:0;
					left:0;
					width: 100%;
					height: 80px;
					background-color: #4f647e;
					color: #ffffff;
					font-family:KaiTi;
					padding-top: 10px;
				}
				.footer ul{
					width: 900px;
					height: 30px;
					margin: 0 auto;
				}
				.footer ul li{
					float:left;
					margin-left:10px;
					list-style: none;
					height: 30px;
					line-height: 30px;
				}
		</style>
		<div class="login">
			<div class="company"><st:config key="companyName"></st:config></div>
			<div class="menu">
				<form action="user/login.action" onsubmit="return login();" id="loginForm" method="post">
					<div>
						<input type="text" name="username" id="nickName" />
						<span><img src="<c:url value='/img/login/images/name.jpg'/>"></span>
					</div>
					<div>
						<input type="password" name="pwd" id="password" />
						<span><img src="<c:url value='/img/login/images/mima.jpg'/>"></span>
					</div>
					<div class="btn" id="btndiv">
						<input class="sub" type="submit" value="登录" style="width: 100%;color: white;font-family:'微软雅黑';font-size: 16px;font-weight: bolder;" />
					</div>
					<center style="font-size: 13px; color: #2FA7E4; display: none; margin-top: 5px;" id="loging">
						<img alt="正在登录..." src="<c:url value='/img/login/images/loading.gif'/>" />
						正在登录，请稍后...
					</center>
				</form>
			</div>
		</div>
	</div>
</body>
</html>