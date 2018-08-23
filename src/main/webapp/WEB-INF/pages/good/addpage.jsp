<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品入库</title>
<meta name="description" content="这是一个新增商品页面">
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
<link rel="stylesheet" href="<c:url value='/diagram-viewer/inputtop.css'/>">
<script src="<c:url value='/kendoui/js/kendo.all.min.js'/>"></script>
<style>
	.am-table>tbody>tr>td{
		vertical-align: middle;
	font-family: "Microsoft YaHei";
	font-size: 16px;
	letter-spacing: 2px;
	}
	.am-btn-xs {
    	font-size: 1.4rem;
	}
	.am-btn-group-xs>.am-btn {
    	font-size: 1.4rem;
	}
</style>
<script type="text/javascript">	
					var data = [
					    {text: "办公用品", value:"1"},
					    {text: "固定资产", value:"2"},
					    {text: "信息化耗材", value:"3"}
					];

		
					$(function() {
						       var categories = $("#goodname1").kendoComboBox({  
						    	   dataSource: {
						                transport: {
						                    read: {
						                        url: "javascript:void(0)",
						                    }
						                }
						            }
                     }).data("kendoComboBox");	
					var categories = $("#goodmodel1").kendoComboBox({
						dataSource: {
			                transport: {
			                    read: {
			                        url: "javascript:void(0)",
			                    }
			                }
			            }
			         });
					/* var categories = $("#goodproducer1").kendoComboBox({
						dataSource: {
			                transport: {
			                    read: {
			                        url: "javascript:void(0)",
			                    }
			                }
			            }
			         });
		             var categories = $("#unit1").kendoComboBox({
		     			dataSource: {
		                    transport: {
		                        read: {
		                            url: "javascript:void(0)",
		                        }
		                    }
		                }
		             }); */
		             $("#model1").kendoComboBox({
			            	 dataTextField: "text",
	                         dataValueField: "value",
		                    dataSource: data,
		                    filter: "contains",
		                    suggest: true,
		                   // index: 3
		                 });
				
					var num = 1;
					var idnum = 0;
					$("form").submit(function(){
						var jsonstr="[";
						
						$("#detailslist tbody tr").each(function(index, item) {
							var model =  $(this).find('td').eq(1).find("input").val().trim();
							if(model == "办公用品"){
								model = 1;
							} else if(model == "信息化耗材"){
								model = 3;
							}else{
								model = 2;
							}
							var goodname =  $(this).find('td').eq(2).find("input").val().trim();
							var goodmodel = $(this).find('td').eq(3).find("input").val().trim();
							var goodproducer = $(this).find('td').eq(4).find("input").val().trim();
							var unit = $(this).find('td').eq(5).find("input").val().trim();
							var price = $(this).find('td').eq(6).find("input").val().trim();
							var stock = $(this).find('td').eq(7).find("input").val().trim();
							var warning = $(this).find('td').eq(8).find("input").val().trim();
							jsonstr+="{\"" + "spare2" + "\":\""+ model + "\"," + 
								"\"" + "goodname" + "\":\""+ goodname + "\"," + 
								"\"" + "goodmodel" + "\":\""+ goodmodel + "\"," + 
								"\"" + "goodproducer" + "\":\""+ goodproducer + "\"," + 
								"\"" + "price" + "\":\""+ price + "\"," + 
								"\"" + "stock" + "\":\""+ stock + "\"," + 
								"\"" + "warning" + "\":\""+ warning + "\"," + 
								"\""+"unit"+"\""+":"+"\""+unit+"\"},";
						});			
						jsonstr = jsonstr.substring(0,jsonstr.lastIndexOf(','));//去掉最后一个逗号
						jsonstr +="]";
						$("#text").val(jsonstr); 
						return true;
					});
					
				});
					function dyonchangge(o,e){
						$("#zdmodel" + e + "").val(o.value);
						var categories = $("#goodname" + e + "").kendoComboBox({  
					            filter: "contains",  
					            placeholder: "请输入",  
					            dataTextField: "goodname",  
					            dataValueField: "goodname",  
					            dataSource: {  
					                type: "json",  
					                transport: {  
					                    read: "${pageContext.request.contextPath }/good/getList.action?type="+o.value,  
					                }  
					            }  
              }).data("kendoComboBox");	
					}	
			function model(o,e) {
				$("#zdgoodname" + e + "").val(o.value);      
				var categories = $("#goodmodel" + e + "").kendoComboBox({  
					            dataTextField: "goodmodel",  
					            dataValueField: "goodmodel",  
					            dataSource: {  
					                type: "json",  
					                serverFiltering: true,  
					                transport: {  
					                    read: {
					                    	url:"${pageContext.request.contextPath }/good/getGoodList.action?goodname="+o.value,  
					                    }
					                }  
					            }  
	             }).data("kendoComboBox");	
				/* var categories = $("#goodproducer" + e + '').kendoComboBox({  
					            filter: "contains",  
					            placeholder: "请输入",  
					            dataTextField: "goodproducer",  
					            dataValueField: "goodproducer",  
					            dataSource: {  
					                type: "json",  
					                serverFiltering: true,  
					                transport: {  
					                    read: "${pageContext.request.contextPath }/good/getGoodList.action?goodname="+o.value  
					                }  
					            }  
	             }).data("kendoComboBox");	
	             var categories = $("#unit" + e + '').kendoComboBox({  
			            filter: "contains",  
			            placeholder: "请输入",  
			            dataTextField: "unit",  
			            dataValueField: "unit",  
			            dataSource: {  
			                type: "json",  
			                serverFiltering: true,  
			                transport: {  
			                    read: "${pageContext.request.contextPath }/good/getGoodList.action?goodname="+o.value  
			                }  
			            }  
      			}).data("kendoComboBox"); */
	              
			}
			function xhonchange(o,e){
				$("#zdgoodmodel" + e + "").val(o.value);
				var td_content = $(o).parents("tr").children("td");
	     		var name = $(td_content.eq(2)).find("input[id='goodname"+e+"']").val();
	     		var value = o.value;
	     		$.post("${pageContext.request.contextPath }/good/getGoodListHX.action",
	     				{
	     					goodname : name,
	     					goodmodel : value
	     				}, function(data, status) {
	     					/* $(td_content.eq(2)).find("input[id='model']").val(
	     							data.model); */
	     					$(td_content.eq(4)).find("input[id='goodproducer']").val(
	    	     					data.goodproducer);
	    	     			$(td_content.eq(5)).find("input[id='unit']").val(
	    	     					data.unit);
	     					$(td_content.eq(6)).find("input[id='price']").val(
	     							data.price);
	     					$(td_content.eq(8)).find("input[id='yjz']").val(
	     							data.warning);
	     				});
			}
						
				var index=1;
			function deleteBatchRow(obj) {
				if($(obj).closest("tbody").children("tr").length == 1){
					return false;
				}
				$(obj).closest("tr").remove();
				 var orders = $(".oder");
				$.each(orders, function(index, item) {
					$(this).html(index + 1);
				});
				order(); 
			}
			function addOne(){
				index=index+1;
				var tr = '<tr  style="background-color: white;">'+
				'<td align="center" ><span class="span1" id="num" >1</span>'+
				'</td>'+
				'<td ><input required id="model'+index+'" onchange="dyonchangge(this,' + index + ')" placeholder="物品类型" style="width: 100%;" />'+
				'<input id="zdmodel'+index+'" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required onfocus="gbjr(this)" ></td>'+
				'<td ><input required id="goodname'+index+'" onchange="model(this,' + index + ')" placeholder="物品名称" style="width: 100%;" />'+
				'<input id="zdgoodname'+index+'" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required onfocus="gbjr(this)" ></td>'+
				'<td ><input required id="goodmodel'+index+'" onchange="xhonchange(this,' + index + ')" placeholder="物品型号" style="width: 100%;" />'+
				'<input id="zdgoodmodel'+index+'" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required onfocus="gbjr(this)" ></td>'+
				'<td ><input id="goodproducer" placeholder="生产商" class="am-form-field am-radius" required/></td>'+
				'<td ><input id="unit" placeholder="单位" class="am-form-field am-radius" required/></td>'+
				'<td >'+
				'	<p>'+
				'		<input id="price" type="number" class="am-form-field am-radius"'+
				'			placeholder="单价" step="0.01" min="0" required/>'+
				'	</p>'+
				'</td>'+
				'<td >'+
				'	<p>'+
				'		<input id="number" type="number" class="am-form-field am-radius"'+
				'			placeholder="数量" required min="1" />'+
				'	</p>'+
				'</td>'+
				'<td >'+
				'	<p>'+
				'		<input id="yjz" type="number" class="am-form-field am-radius"'+
				'			placeholder="预警值" />'+
				'	</p>'+
				'</td>'+
				'<td ><a type="button"'+
				'	class="am-btn am-btn-default am-btn-xs am-text-danger am-round "'+
				'	title="删除" href="javascript:void(0);"'+
				'	onclick="deleteBatchRow(this)"> <span class="am-icon-trash-o"></span></a>'+
				'<a type="button"'+
				'							class="am-btn am-btn-default am-btn-xs am-text-danger am-round "'+
				'						title="添加" href="javascript:void(0);"'+
				'							onclick="addOne()"> <span class="am-icon-plus"></span></a>'+
				'</td>'+
				'</tr>';
				 $("#detailslist tbody tr:last").after(tr);
				 order(); 
				$("#goodname"+index+"").kendoComboBox({
                        dataTextField: "goodname",
                        dataValueField: "goodname",
                        dataSource: {
                            type: "json",
                            transport: {
                                read: {
                                    url: "${pageContext.request.contextPath }/good/getList.action",
                                }
                            }
                        },
                        filter: "contains",
                        suggest: true,
                       // index: 3
                     });
				$("#model"+index+"").kendoComboBox({
					dataTextField: "text",
                    dataValueField: "value",
                    dataSource: data,
                    filter: "contains",
                    suggest: true,
                   // index: 3
                 });
				var categories = $("#goodmodel"+index+"").kendoComboBox({
					dataSource: {
		                transport: {
		                    read: {
		                        url: "javascript:void(0)",
		                    }
		                }
		            }
		         });
				var categories = $("#goodproducer"+index+"").kendoComboBox({
					dataSource: {
		                transport: {
		                    read: {
		                        url: "javascript:void(0)",
		                    }
		                }
		            }
		         });
	             var categories = $("#unit"+index+"").kendoComboBox({
	     			dataSource: {
	                    transport: {
	                        read: {
	                            url: "javascript:void(0)",
	                        }
	                    }
	                }
	             });
			}
			function order() {
				$("#detailslist tbody tr").each(function(i){
					$(this).find("td :first").html(i+1);
				});
			}
			 function gbjr(o) {
					var id = o.id;
					var td_content = $(o).parents("td");
					var val = td_content.find("input[aria-owns='" + id.substr(2,id.length) + "_listbox']").focus();
				} 
</script>
</head>
<body>
	
    <div class="listbiaoti am-cf">
      <ul><img style="margin:-5px 5px 0px 0px;" src="<c:url value='/img/index/menu6.png'/>">商品入库</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">仓库管理</a></dl>

      
      
    </div>
	
    <div class="fbneirong">
      <form id="myform" action="${pageContext.request.contextPath }/good/add.action" method="post">
      <input id="text" type="hidden" name="textjosn" value="">
      	<table class="am-table am-table-bordered">
      		<tr>
      			<td>采购人员</td>
      			<td colspan="3"><input type="text" class="am-form-field am-radius"value="${indepod.buyer}" required name="buyer" /></td>
      		</tr>
      		<%-- <tr>
      			<td>入库时间</td>
      			<td colspan="3"><input type="text" class="am-form-field am-radius" value="${indepod.indepodtime }" readonly="readonly" name="deptName"/></td>
      		</tr> --%>
      		<!-- <tr>
      			<td>仓库</td>
      			<td colspan="3"><input id="depodlist" type="text" class="am-form-field am-radius" name="depodid" /></td>
      		</tr> -->
      		<tr>
      			<td>入库物品</td>
      			<td>
      				<table class="am-table am-table-bordered" id="detailslist" style="margin: 0px;">
      						<thead>
									<tr class="am-success">
										<th class="table-id" style="text-align: center;width: 40px;">序号</th>
										<th class="table-title" style="text-align: center;width: 20px;">物品种类</th>
										<th class="table-type" style="text-align: center;width: 20px;">商品名称</th>
										<th class="table-type" style="text-align: center;width: 20px;">型号</th>
										<th class="table-type" style="text-align: center;width: 40px;">生产厂家</th>
										<th class="table-type" style="text-align: center;width: 20px;">单位</th>
										<th class="table-type" style="text-align: center;width: 20px;">单价</th>
										<th class="table-type" style="text-align: center;width: 20px;">数量</th>
										<th class="table-type" style="text-align: center;width: 20px;">预警值</th>
										<th class="table-type" style="text-align: center;width: 70px;">操作</th>
									</tr>
								</thead>
								<tbody id="apply-table">
									<tr  id="detail" style="background-color: white;">
										<td align="center" ><span class="span1" id="num" >1</span>
										</td>
										<td >
 											<input id="model1" onchange="dyonchangge(this,1)" placeholder="所属类别" style="width: 100%;" required/> 
 											<input id="zdmodel1" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required  onfocus="gbjr(this)" >
										</td>
										<td >
 											<input id="goodname1" onchange="model(this,1)" placeholder="物品名称" style="width: 100%;" required/> 
 											<input id="zdgoodname1" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required onfocus="gbjr(this)" >
										</td>
										<td >
 											<input id="goodmodel1" onchange="xhonchange(this,1)" placeholder="物品型号" style="width: 100%;" required/>
 											<input id="zdgoodmodel1" style="height:1px; width: 100%;opacity:0; margin-top: -5px;" required onfocus="gbjr(this)" > 
										</td>
										<td >
 											<input id="goodproducer" placeholder="生产商" class="am-form-field am-radius" required/> 
										</td>
										<td >
 											<input id="unit" placeholder="单位" class="am-form-field am-radius" required/> 
										</td>
										<td>
												<input id="price" type="number" class="am-form-field am-radius"
													placeholder="单价"step="0.01" min="0" required/>
										</td>
										<td>
												<input id="number" type="number" class="am-form-field am-radius"
													placeholder="数量" required min="1" />
										</td>
										<td>
												<input id="yjz" type="number" class="am-form-field am-radius"
													placeholder="预警值" />
										</td>
										<td><a type="button"
											class="am-btn am-btn-default am-btn-xs am-text-danger am-round "
											title="删除" href="javascript:void(0);"
											onclick="deleteBatchRow(this)"> <span class="am-icon-trash-o"></span></a><a type="button"
											class="am-btn am-btn-default am-btn-xs am-text-danger am-round "
											title="添加" href="javascript:void(0);"
											onclick="addOne()"> <span class="am-icon-plus"></span></a>
										</td>
									</tr>						
								</tbody>
      				</table>

      			</td>
      		</tr>
      		<tr>
      			<td colspan="4" align="center">
      				<input type="submit" class="am-btn am-btn-default input-save" value="" />
      			</td>
      		</tr>
      	</table>     		
      </form>
    </div>
</body>
</html>



