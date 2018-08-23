<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>流程定义</title>
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<style type="text/css">
			#table1 {
				border: 1px solid powderblue;
			}
			
			#thead2 {
				background-color: #D8F0FF;
			}
			
			td {
				border: 1px solid #F0F0FF;
				text-align: center;
			}
			
			#p1 {
				padding-left: 20px;
				padding-top: 10px;
				font-size: 42px;
				color: #33338A;
				padding-left: 80px;
			}
			
			th {
				border-color: white;
			}
			
			#td1 {
				width: 55px;
			}
			
			#td2 {
				width: 170px;
			}
			
			#td3 {
				width: 95px;
			}
			
			#td4 {
				width: 40px;
			}
			
			#dele {
				width: 100%;
				border: 0px;
				background-color: #B0E0E6;
			}
			select{
				width: 100%;
				border: 0px;
			}
		</style>

		<script type="text/javascript">
			$(function() {
					var num = 1;
					var idnum = 0;
					$("#add").click(function() {
						var lastindex = $("tr").length;
						var html = "<tr id='" + lastindex + "' style='background-color: white;'><td id=’td1'  class='oder' ><span class=‘span1’ id=‘num’>" + lastindex + "</span></td><td id='td2' ><select><option >请选择</option><c:forEach items='${goodslist}' var='goods'><option value='${goods.goodsid}'>${goods.goodsname}</option></c:forEach></td><td id='td3' contentEditable='true'></td><td id='td4'><input type='button' name='delete' id='dele' onclick='deleteBatchRow(this)' value='删除'/></td></tr>";
						$("#apply-table").append(html); //添加对应的内容到table
						$("#apply-table tr").hover(function() {
							$(this).css("background-color", "seashell")
						}, function() {
							$(this).css("background-color", "white")
						});
						
					});
				});

			function ObjData(key, value) {
				var Key;
				var Value;
				this.Key = key;
				this.Value = value;
			}
			
			
			
			function deleteBatchRow(obj) {
				$(obj).closest("tr").remove();
				var orders = $(".oder");
				$.each(orders, function(index, item) {
					$(this).html(index + 1);
				});
			}		
		</script>

	</head>
	<body>
		<div class="am-u-sm-12" style="text-align: center;margin-top: 30px;margin-bottom: 50px">
		<h2>流程修改</h2>
		</div>
		<div class="am-u-sm-12">
			<form class="am-form am-form-horizontal" action="${pageContext.request.contextPath }/process/update.action" method="post">
					<input type="hidden" value="${pro.proid }" name="processdefinitionid">
				  <div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-4 am-form-label">流程名称</label>
				    <div class="am-u-sm-4">
				      <input type="text" id="doc-ipt-3" name="processname" placeholder="输入流程名称" value="${pro.processname }">
				    </div>
				    <div class="am-u-sm-6"></div>
				  </div>	
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-4 am-form-label">审批人1</label>
				    <div class="am-u-sm-2">
				    	<select id="authority1" class="dept">
				      		<option value="">--所在部门--</option>
				      			<c:forEach items="${deptlist}" var="dept">				      	
				      				<option value="${dept.deptid}" ${pro.dept1==dept.deptid?"selected='selected'":"" }>${dept.deptname}</option>
				      			</c:forEach>
				      	</select>
				     </div>
				     <div class="am-u-sm-2">
				      	<select name="authority1">
				      		<option value="">--请选择审批人--</option>
				      			<c:forEach items="${userlist }" var="user">				      	
				      				<option value="${user.id }" name="${user.unitid}" ${pro.authority1==user.id?"selected='selected'":"" }>${user.realname}</option>
				      			</c:forEach>
				      	</select>
				   	</div>
				   	<div class="am-u-sm-6"></div>
				  </div>
				  	  
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-4 am-form-label">审批人2</label>
				    <div class="am-u-sm-2">
				    	<select id="authority2" class="dept">
				      		<option value="">--所在部门--</option>
				      			<c:forEach items="${deptlist }" var="dept">				      	
				      				<option value="${dept.deptid}" ${pro.dept2==dept.deptid?"selected='selected'":"" }>${dept.deptname}</option>
				      			</c:forEach>
				      	</select>
				     </div>
				     <div class="am-u-sm-2">
				      	<select name="authority2" >
				      		<option value="">--请选择审批人--</option>
				      			<c:forEach items="${userlist }" var="user">				      	
				      				<option value="${user.id }" name="${user.unitid}" ${pro.authority2==user.id?"selected='selected'":"" }>${user.realname}</option>
				      			</c:forEach>
				      	</select>
				   	</div>
				   	<div class="am-u-sm-6"></div>
				  </div>
				  
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-4 am-form-label">审批人3</label>
				    <div class="am-u-sm-2">
				    	<select id="authority3" class="dept">
				      		<option value="">--所在部门--</option>
				      			<c:forEach items="${deptlist }" var="dept">				      	
				      				<option value="${dept.deptid}" ${pro.dept3==dept.deptid?"selected='selected'":"" }>${dept.deptname}</option>
				      			</c:forEach>
				      	</select>
				     </div>
				     <div class="am-u-sm-2">
				      	<select name="authority3">
				      		<option value="">--请选择审批人--</option>
				      			<c:forEach items="${userlist }" var="user">				      	
				      				<option value="${user.id }" name="${user.unitid}" ${pro.authority3==user.id?"selected='selected'":"" }>${user.realname}</option>
				      			</c:forEach>
				      	</select>
				   	</div>
				   	<div class="am-u-sm-6"></div>
				  </div>
				  
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-4 am-form-label">审批人4</label>
				    <div class="am-u-sm-2">
				    	<select id="authority4" class="dept">
				      		<option value="">--所在部门--</option>
				      			<c:forEach items="${deptlist }" var="dept">				      	
				      				<option value="${dept.deptid}" ${pro.dept4==dept.deptid?"selected='selected'":"" }>${dept.deptname}</option>
				      			</c:forEach>
				      	</select>
				     </div>
				     <div class="am-u-sm-2">
				      	<select name="authority4">
				      		<option value="">--请选择审批人--</option>
				      			<c:forEach items="${userlist }" var="user">				      	
				      				<option value="${user.id }" name="${user.unitid}" ${pro.authority4==user.id?"selected='selected'":"" }>${user.realname}</option>
				      			</c:forEach>
				      	</select>
				   	</div>
				   	<div class="am-u-sm-6"></div>
				  </div>
				  
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-4 am-form-label">审批人5</label>
				    <div class="am-u-sm-2">
				    	<select id="authority5" class="dept">
				      		<option value="">--所在部门--</option>
				      			<c:forEach items="${deptlist}" var="dept">				      	
				      				<option value="${dept.deptid}" ${pro.dept5==dept.deptid?"selected='selected'":"" }>${dept.deptname}</option>
				      			</c:forEach>
				      	</select>
				     </div>
				     <div class="am-u-sm-2">
				      	<select name="authority5" >
				      		<option value="">--请选择审批人--</option>
				      			<c:forEach items="${userlist }" var="user">				      	
				      				<option value="${user.id }" name="${user.unitid}" ${pro.authority5==user.id?"selected='selected'":"" }>${user.realname}</option>
				      			</c:forEach>
				      	</select>
				   	</div>
				   	<div class="am-u-sm-6"></div>
				  </div>
				  <div class="am-form-group">
				    <div class="am-u-sm-10 am-u-sm-offset-5">
				      <button type="submit" class="am-btn am-btn-default">流程保存</button>
				    </div>
				  </div>
				</form>
			<%-- <div>
				<table class="am-table am-table-bordered am-table-radius am-table-striped">
	          		<thead>
	            		 <tr class="am-success">
							<th id="th1" width="55px" align="left">序号</th>
							<th width="170px" align="left">流程名称</th>
							<th width="95px" align="left">权限1</th>
							<th width="95px" align="left">权限2</th>
							<th width="95px" align="left">权限3</th>
							<th width="95px" align="left">权限4</th>
							<th width="95px" align="left">权限5</th>
							<th width="40px" align="left">
							</th>
		
						</tr>
					</thead>
					<tbody id="apply-table">
						<tr id="1" style="background-color: white;">
							<td id="td1" class="oder">
								<span class="span1" id="num">1</span>
							</td>
							<td id="td2" contentEditable="true">
							</td>
							<td id="td3" contentEditable="true">00
							</td>
							<td id="td4" contentEditable="true">00
							</td>
							<td id="td5" contentEditable="true">00
							</td>
							<td id="td6" contentEditable="true">00
							</td>
							<td id="td7" contentEditable="true">00
							</td>
							<td id="td8">
								<input type="button" name="delete" id="dele" onclick="deleteBatchRow(this)" value="删除" />
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- {pageContext.request.contextPath} -->
			<form action="${pageContext.request.contextPath }/process/processdefinitionSubmit.action"  method="post">
				<input name="textjosn" id="text" type="hidden">
				<input type="submit" value="提交">
			</form> --%>
				<!-- <input type="button" id="send" value="提交"/> -->
		</div>		
	</body>
	<script>
		$(function(){	
				$("select[class='dept']").each(function(index,item){				
					$(this).change(function(){
						var deptName=$(this).find("option:selected").text();
						console.log();
						var deptId=$(this).find("option:selected").val();
						if($(this).find("option:selected").text()=='--所在部门--'){
							$("select[name="+$(this).attr('id')+"]").each(function(){
								
								$(this).find("option").each(function(){
									
									$(this).show();
									
								});
								
								});
							return;
						}
						
						$("select[name="+$(this).attr('id')+"]").each(function(){
							
						
							
							$(this).find("option").each(function(){
								
								$(this).hide();
								
								
								
								if($(this).attr("name")==deptId){
									$(this).show();
								}else{
									$(this).hide();
								}
								
							});
							
							});
						
						
					})
					
				});				
		})
	
	</script>

</html>