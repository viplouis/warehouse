<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>流程部署查询</title>
<meta name="description" content="流程部署查询">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<c:url value='/assets/i/favicon.png'/>">
<link rel="apple-touch-icon-precomposed" href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
</head>
<body>

<div class="admin-biaogelist" style="position: static;">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">流程部署查询</ul>  
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">流程部署查询</a></dl>   
    </div>
    <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  		<ul>
    		<li>
      			<div class="am-btn-group am-btn-group-xs">
        			<select name="serachtype" data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
          				<option value="">选择</option>
           				<option value="licence">车牌</option>
            			<option value="carType">品牌车型</option>
            			<option value="state">状态</option>
       		 		</select>
      			</div>
    		</li>
    
			<li>
				<span class="tubiao am-icon-calendar"></span> 
      			<input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    		</li>
       		<li>
				<span class="tubiao am-icon-calendar"></span> 
      			<input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    		</li>

    		<li>
    			<input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" />
    		</li>
    		<li>
    			<button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索
    			</button>
    		</li>
  		</ul>
	</div>
    <form class="am-form am-g" action="<c:url value='/car/deletelist.action'/>">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
             <thead>
              <tr class="am-success">
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">序号</th>
                <th class="table-id">流程编号</th>
                <th class="table-title">流程名称</th>
                <th class="table-type">第一顺序审批人</th>
                <th class="table-type">第二顺序审批人</th>
                <th class="table-type">第三顺序审批人</th>
                <th class="table-type">第四顺序审批人</th>
                <th class="table-type">第五顺序审批人</th>
                <th class="table-author am-hide-sm-only">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${processnamelist}" var="pro" varStatus="Status">
              <tr>
                <td><input type="checkbox" name="ids" value="${pro.processdefinitionid}"/></td>
                <td>${Status.index+1}</td>
                <td>${pro.processdefinitionid}</td>
                <td>${pro.processname}</td>
                <td>${pro.authority1}</td>
                <td>${pro.authority2}</td>
                <td>${pro.authority3}</td>
                <td>${pro.authority4}</td>
                <td>${pro.authority5}</td>    
                <td>          	
                	<div class="am-btn-toolbar">
                   		<div class="am-btn-group am-btn-group-xs">
                       		<a type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" href="<c:url value='sendUpdate.action?id=${pro.processdefinitionid}'/>" title="修改"><span class="am-icon-pencil-square-o"></span></a>
                      		<a type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" name="delete" id="dele" onclick="deleteBatchRow('${pro.processdefinitionid}')"><span class="am-icon-trash-o" ></span></a>
                    	</div>
                  	</div>             	
                </td>    
              </tr>
             </c:forEach>   
            </tbody>
          </table>
<%--           <div class="am-btn-group am-btn-group-xs">
              <button type="submit" class="am-btn am-btn-default"><span class="am-icon-minus"></span> 选中删除</button>
              <a  type="button" class="am-btn am-btn-default" href="<c:url value='/car/addpage.action'/>"><span class="am-icon-plus"></span> 新增</a>
          </div>  --%>    
     	 <ul class="am-pagination am-fr">
             <li class="am-active">
             	<c:if test="${pageBean.currentPage!=1 }"> 
               		<a href="<c:url value='/car/list.action?currentPage=${pageBean.currentPage-1 }'/>">上一页</a>
             	</c:if>
             </li>
             <li class="am-active">
             	<c:if test="${pageBean.currentPage!=totalPages }">
                	<a href="<c:url value='/car/list.action?currentPage=${pageBean.currentPage+1 }'/>">下一页</a>
               </c:if>
             </li>
         </ul>
         <hr />
      </form>
</div>
<script src="<c:url value='/assets/js/amazeui.min.js'/>"></script>
</body>
</html>
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