<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
</head>
<body onload="IFrameResize()">
		<div class="col-sm-12" style="margin-top: 15px;margin-bottom: 15px;font-size: 14px;"align="left">
			 <img >
			 角色管理
		</div>
		<form class="form-horizontal" action="${pageContext.request.contextPath }/group/update.action" method="post">
			 <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label"> 角色编号：</label>
			    <div class="col-sm-10" style="margin-top: 5px;">
			 		    <input type="text" class="form-control" id="inputEmail3" name="userclassid" value="${info.userclassid }">
			    </div>
			 </div>
			 <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label"> 角色名称：</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="userclassname" value="${info.userclassname }">
			    </div>
			 </div>
			 <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">描述信息：</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="classnotes" value="${info.classnotes}">
			    </div>
			 </div>
			  <div class="col-sm-12" align="center">
			      <button type="submit" class="btn btn-default">修改</button>
			      <button type="reset" class="btn btn-default">重提</button>
			 </div>
			
		</form>
	</body>
</html>
