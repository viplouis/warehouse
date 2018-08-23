<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>新增仓库办公用品信息</title>
<meta name="description" content="这是一个新增仓库办公用品信息页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="<c:url value='/assets/i/favicon.png'/>">
<link rel="apple-touch-icon-precomposed"
	href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="<c:url value='/assets/css/amazeui.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<!-- kendoui combox -->
<script src="<c:url value='/kendoui/js/jquery.min.js'/>"></script>
<link href="<c:url value='/kendoui/styles/kendo.common.min.css'/>" rel="stylesheet">
<link href="<c:url value='/kendoui/styles/kendo.default.min.css'/>" rel="stylesheet">
<script src="<c:url value='/kendoui/js/kendo.all.min.js'/>"></script>
<style>
	.am-table>tbody>tr>td{
		vertical-align: middle;
	}
	.am-btn-xs {
    	font-size: 1.4rem;
	}
	.am-btn-group-xs>.am-btn {
    	font-size: 1.4rem;
	}
</style>
</head>
<body>
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">新增仓库办公用品信息</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 >仓库管理><a href="#">新增仓库办公用品信息</a></dl>

      
      
    </div>
	
    <div class="fbneirong">
      <form id="myform" action="${pageContext.request.contextPath }/good/Add.action" method="post">
      <input id="text" type="hidden" name="textjosn" value="">
      	<table class="am-table am-table-bordered">
      		<tr>
      			<td class="am-text-cente">名称</td>
      			<td><input type="text" class="am-form-field am-radius"value="${good.goodname }"  name="goodname" /></td>
      		</tr>
      		<tr>
      			<td class="am-text-cente">型号</td>
      			<td><input type="text" class="am-form-field am-radius" value="${good.goodmodel }"  name="goodmodel"/></td>
      		</tr>
      		<tr>
      			<td class="am-text-cente">供应商</td>
      			<td><input type="text" class="am-form-field am-radius" value="${good.goodproducer }"  name="goodproducer"/></td>
      		</tr>
      		<tr>
      			<td class="am-text-cente">单位</td>
      			<td><input type="text" class="am-form-field am-radius" value="${good.unit }"  name="unit"/></td>
      		</tr>
      		      		<tr>
      			<td class="am-text-cente">价格</td>
      			<td><input type="number" class="am-form-field am-radius" value="${good.price }"  name="price"/></td>
      		</tr>
      		      		<tr>
      			<td class="am-text-cente">最大上限</td>
      			<td><input type="number" class="am-form-field am-radius" value="${good.maxNumber }"  name="maxNumber"/></td>
      		</tr>
      		      		<tr>
      			<td class="am-text-cente">最小上限</td>
      			<td><input type="number" class="am-form-field am-radius" value="${good.minNumber }"  name="minNumber"/></td>
      		</tr>
      		<tr>
      			<td colspan="2" align="center">
      				<input type="submit" value="新增"  />
      				<input type="reset" value="重置"  />
      			</td>
      		</tr>
      	</table>     		
      </form>
    </div>
</body>
</html>



