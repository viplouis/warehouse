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
			<h2>修改部门信息</h2>
		</div>
	<form class="am-form am-form-horizontal" action="updateDept.action" method="post">
	<input type="hidden" class="form-control" name="ex2" value="">
		<div class="am-form-group">
		    <label for="inputEmail3" class="am-u-sm-2 am-control-label">编号</label>
		    <div class="am-u-sm-10">
		      <input type="text" class="form-control" id="inputEmail3" name="deptid" value="${dept.deptid }" readonly="readonly">
		    </div>
  		</div>
  		<div class="am-form-group">
		    <label for="inputEmail3" class="am-u-sm-2 am-control-label">部门名称</label>
		    <div class="am-u-sm-10">
		      <input type="text" class="form-control" id="inputEmail3" name="deptname" value="${dept.deptname }">
		    </div>
  		</div>
  		<div class="am-form-group">
		    <label for="inputEmail3" class="am-u-sm-2 am-control-label">部门领导</label>
		    <div class="am-u-sm-10">
		      <select  name="ex3" onchange="showInfo()">
		      	<option id="leader"
		      	 value="0">请选择人员</option>
		      	<c:forEach items="${employee }" var="p">
		      		<option name="employee" value="${p.emplyeeid}" ${dept.ex3==p.emplyeeid?"selected='selected'":"" }>${p.realname }</option>
		      	</c:forEach>
		      </select>
		    </div>
  		</div>
  		<div class="am-form-group">
			    <label for="inputEmail3" class="am-u-sm-2 am-control-label">公司</label>
			    <div class="am-u-sm-10">
			      <input type="text" class="form-control" id="inputEmail3" name="company"value="${dept.company }">
			    </div>
	  		</div>
		<div class="am-form-group" align="center">
			<button type="submit" class="btn btn-default">保存</button>
			<button type="reset" class="btn btn-default">重填</button>
		</div>
	</form>
	</div>
</body>
<script type="text/javascript">
function showInfo() {
	/* var value = obj.value;
	$.post("${pageContext.request.contextPath }/dept/getdeptById.action",
			{
				id : value
			}, function(data, status) {
				$().find("input[name='ex2']").val(
						data.deptname);
			}); */
			/* $("#leader").find("option").each(function){
				第一种方法
			} */
			//第二种方法
			var deptname=$("option[name='employee']:selected").text();
			$("input[name='ex2']").val(deptname);
};
</script>
</html>