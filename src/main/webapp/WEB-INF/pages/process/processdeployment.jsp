<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>流程部署</title>
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<%-- <script src="<c:url value='/assets/js/app.js'/>"></script> --%>
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
				/*//background-color: #EEF2F0;*/
				/*border: 1px solid white;*/
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
				
				$("form").submit(function(){
					
					var jsonstr="";
					alert("---------");
					
					$("tbody tr").each(function(index, item) {
						var processnum = $(this).find('td').eq(1).find('select').val().trim();
						var processname = $(this).find('td').eq(2).find('select').val().trim();
						var authority1 = $(this).find('td').eq(3).html().trim();
						var authority2 = $(this).find('td').eq(4).html().trim();
						var authority3 = $(this).find('td').eq(5).html().trim();
						var authority4 = $(this).find('td').eq(6).html().trim();
						var authority5 = $(this).find('td').eq(7).html().trim();
						
						
						
						jsonstr+=processnum+"|"+processname+"|"+authority1+"|"+authority2+"|"+authority3+"|"+authority4+"|"+authority5;
						alert(jsonstr);
						console.log(jsonstr);
					});			
				
					
					$("#text").val(jsonstr); 
					return true;
				});
				
			
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
		<div class="am-u-sm-12" style="margin-top: 10px">
			<div>
				<table class="am-table am-table-bordered am-table-radius am-table-striped">
	          		<thead>
	            		 <tr class="am-success">
							<th width="170px" align="left">流程编号</th>
							<th width="95px" align="left">流程名称</th>
							<th width="95px" align="left">权限1的人</th>
							<th width="95px" align="left">权限2的人</th>
							<th width="95px" align="left">权限3的人</th>
							<th width="95px" align="left">权限4的人</th>
							<th width="95px" align="left">权限5的人</th>
							<th width="40px" align="left">
							</th>
		
						</tr>
					</thead>
					<tbody id="apply-table">
					<c:forEach items="${processnamelist}" var="pro">
						<tr id="1" style="background-color: white;">
							<td id="td1" class="oder">
								${pro.processdefinitionid}
							</td>
							<td id="td2" contentEditable="true">
								${pro.processname }
							</td>						
							<td id="td4" contentEditable="true">${pro.authority1 }
							</td>
							<td id="td5" contentEditable="true">${pro.authority2 }
							</td>
							<td id="td6" contentEditable="true">${pro.authority3 }
							</td>
							<td id="td7" contentEditable="true">${pro.authority4 }
							</td>
							<td id="td8" contentEditable="true">${pro.authority5 }
							</td>
							<td id="td9">
								<input type="button" name="delete" id="dele" onclick="deleteBatchRow('${pro.processdefinitionid}')" value="删除" />
							</td>
						</tr>
					</c:forEach>
					
					</tbody>
				</table>
				
			</div>

				<!-- <input type="button" id="send" value="提交"/> -->
		</div>

		

		
		
	</body>
	<script>
	var deleteBatchRow=function(id){
		if(confirm("您确认要删除？")){
			$.ajax({
				url:"deletepro.action?id="+id,
				type:"POST",
				success:function(result){
					if(result=="success"){
						alert("删除成功！");
						window.location.reload();
					}else{
						alert("删除失败！");
					}
				}			
			})
		}
	}
	</script>

</html>