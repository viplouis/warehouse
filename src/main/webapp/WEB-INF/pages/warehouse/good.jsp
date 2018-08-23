<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">



<title></title>
<link rel="stylesheet"
	href="<c:url value='/assets/css/amazeui.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script src="<c:url value='/js/jqPaginator.js'/>"></script>
</head>

<body>
	<div class="am-g" style="margin-left: 5px; margin-right: 5px;">
		<div class="admin-biaogelist" style="position: static;">

			<div class="listbiaoti am-cf">
				<ul class="am-icon-flag on">仓库列表
				</ul>

				<dl class="am-icon-home" style="float: right;">
					当前位置： 首页 >
					<a href="#">仓库列表</a>
				</dl>
				</div>
				<form action="find.action" method="post">
				<input type="hidden" name="page" value=""/>
					<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
						<ul>
							<li>
								<div class="am-btn-group am-btn-group-xs">
									<select name="id">
										<option value="0" selected="selected">办公用品</option>
										<option value="1">固定资产</option>
										<option value="2">测量</option>
									</select>
								</div>
							</li>
<li>
								<div class="am-btn-group am-btn-group-xs">
									数量<input type="text" name="MinNum"size="5">~<input type="text" name="MaxNum"size="5">
								</div>
							</li>
							<li><button type="submit"
									class="am-btn am-radius am-btn-xs am-btn-success"
									style="height:30px;width:50px;">查询</button></li>
						</ul>
					</div>
				</form>
				<!--这里打开的是新页面-->
			</div>
</div>
		</div>
</div>
		<div class="am-g">
			<table
				class="am-table am-table-bordered am-table-radius am-table-striped">
				<thead>
					<tr class="am-success">
						<th><input type="checkbox" id="checkAll"/></th>
						<th class="table-id">编号</th>
						<th class="table-type">名称</th>
						<th class="table-author am-hide-sm-only">型号</th>
						<th class="table-author am-hide-sm-only">供应商</th>
						<th class="table-author am-hide-sm-only">单位</th>
						<th class="table-date am-hide-sm-only">价格</th>
						<th class="table-author am-hide-sm-only">最大上限</th>
						<th class="table-date am-hide-sm-only">最小上限</th>
						 <th width="20px" align="left">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${paging.list}" var="good">
						<tr>
						<td class="oder">
                        <input type="checkbox" name="goodid" value="${good.goodid }"/>
                    </td>
							<td>${good.goodid }</td>
							<td>${good.goodname }</a></td>
							<td>${good.goodmodel }</td>
							<td>${good.goodproducer }</td>
							<td>${good.unit }</td>
							<td>${good.price}</td>
							<td>${good.maxNumber}</td>
							<td>${good.minNumber}</td>
							<td style="min-width:150px;">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                            <a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="sendUpdate.action?goodid=${good.goodid }"><span class="am-icon-pencil-square-o"></span> 编辑</a>
                                 <button onclick="deletegoodinfo('${good.goodid}')" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除"><span class="am-icon-trash-o" ></span>删除</button>
                            </div>
                        </div>

                    </td>
						</tr>
					</c:forEach>



				</tbody>
			</table>
 <div class="am-btn-group am-btn-group-xs">
        	<button type="button" class="am-btn am-btn-default" onclick="deletechecked()"><span class="am-icon-minus"></span> 选中删除</button>
            <a  type="button" class="am-btn am-btn-default" href="<c:url value='/good/sendAdd.action'/>"><span class="am-icon-plus"></span> 新增</a>
        </div>
			<div class="am-cf">
				共 ${paging.totalRows} 条记录
				<div class="am-fr">
					<ul class="am-pagination" id="pagination2"></ul>
					<script type="text/javascript">
			    $.jqPaginator('#pagination2', {
			        totalPages: ${paging.totalPages},
			        visiblePages: ${paging.pageSize},
			        currentPage: ${paging.currentPage},
			        prev: '<li class="prev"><a href="javascript:;">上一页</a></li>',
			        next: '<li class="next"><a href="javascript:;">下一页</a></li>',
			        page: '<li class="page"><a href="javascript:;">{{page}}</a></li>',
			        onPageChange: function (num, type) {
			            if(num!==${paging.currentPage}){
			            	$("input[name='page']").val(num);
			            	$("form").submit();
			            }
			        }
			    });
			</script>

				</div>
			</div>
		</div>
</body>
<script>

    $(function () {

        $("button[look]").click(function(){

            $("#modalLook").modal("open");


        });
        

    });
    var showdetail=function(id){
        	window.location.href="${pageContext.request.contextPath}/buyapply/showdetail.action?id="+id;
        };
    var deletegoodinfo=function(id){
    	if(confirm("您确认要删除此申请？")){
    		$.ajax({
    			url:"delete.action?ids="+id,
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
    };
    var deletechecked=function(){
    	var ids="";
    	$("input[name='goodid']").each(function(){
    		if($(this).prop("checked")){
    			ids=ids+$(this).val();
    		}    		
    	})
    	if(ids==""){
    		alert("请至少选择一条申请！！");
    		return;
    	}
    	if(confirm("您确认要删除所有选中项？")){
    		$.ajax({
    			url:"delete.action?ids="+ids,
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
    };


</script>
</html>
