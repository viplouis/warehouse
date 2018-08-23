<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		
		
		
		<title></title>
		<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
		<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
		<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
		<script src="<c:url value='/assets/js/app.js'/>"></script>
		<script src="<c:url value='/js/jqPaginator.js'/>"></script>
	</head>

	<body>
		<div class="am-g" style="margin-left: 5px;margin-right: 5px;">
			<div class="admin-biaogelist" style="position: static;">
	
    	<div class="listbiaoti am-cf">
	      <ul class="am-icon-flag on"> 仓库列表</ul>
		      
		      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">仓库列表</a></dl>
		<form>
<select name="id">
<option value="first"selected="selected">办公用品</option>
<option value="second">固定资产</option>
<option value="last" >测量</option>
</select>
<li><button type="submit" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">查询</button></li>
</form>
		      <!--这里打开的是新页面-->
		</div>      
		
		</div>
</body>
</html>
