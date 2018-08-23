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
<script src="<c:url value='/js/jqPaginator.js'/>"></script>
</head>
<body>
	<div class="am-g">
		<div class="am-u-sm-12" style="padding-top: 50px;padding-bottom: 50px"align="center">
			<h2>添加部门</h2>
		</div>
		<div class="am-u-sm-12">
			<form class="am-form am-form-horizontal" id="myform" action="addDept.action" method="post">
			<div class="am-form-group">
			    <label for="inputEmail3" class="am-u-sm-2 am-control-label">编号</label>
			    <div class="am-u-sm-10">
			      <input type="text" class="form-control" id="inputEmail3"value="" name="deptid">
			    </div>
	  		</div>
	  		<div class="am-form-group">
			    <label for="inputEmail3" class="am-u-sm-2 am-control-label">部门名称</label>
			    <div class="am-u-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="deptname">
			    </div>
	  		</div>
	  		<div class="am-form-group">
			    <label for="inputEmail3" class="am-u-sm-2 am-control-label">公司</label>
			    <div class="am-u-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="company">
			    </div>
	  		</div>
			<div class="am-form-group" align="center">
				<button type="submit" class="btn btn-default">保存</button>
				<button type="reset" class="btn btn-default">重填</button>
			</div>
		</form>
		</div>
	</div>
</body>
<script type="text/javascript">
function IFrameResize(){ 
	//alert(this.document.body.scrollHeight); //弹出当前页面的高度 
	var obj = parent.document.getElementById("addFrame"); //取得父页面IFrame对象 
	//alert(obj.height); //弹出父页面中IFrame中设置的高度 
	obj.height = this.document.body.scrollHeight; //调整父页面中IFrame的高度为此页面的高度 
	} 
</script>
</html>