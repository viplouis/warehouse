<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>修改用户</title>
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script type="text/javascript">
var message=${message};
if(message!=null){
	alert(message);
}
</script>
</head>
<body>
	 <!-- Row start -->
	<div class="am-g">
		<div class="am-u-sm-12" style="padding-top: 50px;padding-bottom: 50px"align="center">
			<h2>修改用户</h2>
		</div>
        <div class="am-u-sm-12">
          <form class="am-form am-form-horizontal" id="myform" action="${pageContext.request.contextPath }/user/update.action" method="post">
          		
          		<div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">员工编号</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-3" name="emplyeeid" placeholder="请输入真实姓名" value="${user.emplyeeid}">
				    </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">用户名</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-pwd-2" name="usename" placeholder="请输入登录用的用户名" value="${user.usename}">
				    </div>
				  </div>
          		<div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">姓名</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-3" name="realname" placeholder="请输入真实姓名" value="${user.realname}">
				    </div>
				  </div>
				
				<%-- <div class="am-form-group">
			      <label for="doc-select-1" class="am-u-sm-2 am-form-label">性别</label>
			      <div class="am-u-sm-10">
				      <select id="doc-select-1" required name="sex">
				        <option value="0" ${user.sex==0?"selected='selected'":"" }>男</option>
				        <option value="1" ${user.sex==1?"selected='selected'":"" }>女</option>
				      </select>
				   <span class="am-form-caret"></span>
			      </div>
			    </div> --%>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">电话</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-pwd-2" name="phone" placeholder="请输入你的电话号码" value="${user.phone}">
				    </div>
				  </div>
				
				<div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">单位</label>
				    <div class="am-u-sm-10">
				     	<select id="doc-select-1" required name="deptid">
				     	<option value="${user.deptid }">${user.deptname}</option>
				     		<c:forEach items="${deptList }" var="dept">
					      	  <option value="${dept.deptid }" ${dept.deptid==user.emplyeeid?"selected='selected'":"" }>${dept.deptname}</option>

					       </c:forEach>
					      </select> 
				     </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">职称</label>
				    <div class="am-u-sm-10">
				     	<select id="doc-select-1" required name="titleid" >
				     	<option value="${user.titleid }">${titlename}</option>
				     		<c:forEach items="${titlelist }" var="title">
					      	  <option value="${title.titleid }" ${titleid==title.titleid?"selected='selected'":"" }>${title.titlename}</option>
					       </c:forEach>
					      </select>
				     </div>
				  </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">角色</label>
				    <div class="am-u-sm-10">
				     	<select id="doc-select-1" required name="groupid">
				     	<option value="${user.groupid }">${grouping.userclassname}</option>
				     		<c:forEach items="${grouplist }" var="group">
					       	 <option value="${group.userclassid }" ${group.userclassid==user.groupid?"selected='selected'":"" }>${group.userclassname }</option>
					        </c:forEach>
					      </select> 
				     </div>
				  </div>

				  
				
				  <div class="am-form-group">
				    <div class="am-u-sm-10 am-u-sm-offset-2">
				      <button type="submit" class="am-btn am-btn-default">确认提交</button>
				      <button type="reset" class="am-btn am-btn-default">重新填写</button>
				      <button href="list.action" class="am-btn am-btn-default">返回</button>
				    </div>
				  </div>
          </form>
        </div>

     </div>

</body>
</html>