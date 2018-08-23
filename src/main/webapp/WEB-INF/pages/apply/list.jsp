<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<title>办公用品查询</title>
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
</head>
<body>
	 <!-- Row start -->
		<div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-type">申请编号</th>
                <th class="table-type">申请人</th>
                <th class="table-author am-hide-sm-only">申请时间</th>
                <th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody border=1px;>
              <c:forEach items="${list}" var="apply">
              		<tr>
		                <td><input type="checkbox"  value="${apply.id}"/></td>
		                <td>${apply.id}</td>
		                <td>${apply.username}</td>
		                <td class="am-hide-sm-only"><fmt:formatDate value="${apply.applytime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
		                <td>
		                  <div class="am-btn-toolbar">
		                    <div class="am-btn-group am-btn-group-xs">
		                    	<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span>查看</button>
		                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
		                    </div>
		                  </div>
		                </td>
		              </tr>
              </c:forEach>
              
              
              
              </tbody>
            </table>
           
            <hr />
          </form>
        </div>

      </div>
					  <!-- Row end -->
</body>
</html>