<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>油耗查询</title>
<meta name="description" content="这是一个油耗查询页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<c:url value='/assets/i/favicon.png'/>">
<link rel="apple-touch-icon-precomposed" href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<link rel="stylesheet" href="<c:url value='/diagram-viewer/inputtop.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
</head>
<body>

<div class="admin-biaogelist" style="position: static;">
	
    <div class="listbiaoti am-cf">
      <ul><img style="margin: -5px 5px 0px 0px;"
					src="<c:url value='/img/index/menu4.png'/>">  油耗查询</ul>
      
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">油耗查询</a></dl>

      <!--这里打开的是新页面-->
    </div>
    <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
      <form id="search" action="<c:url value='/oil/list.action'/>">
    <input name="currentPage" type="hidden" value="1">
  <ul>  
    <li><input class="gjz-quq" name="oil.oilCard" value="${oilVo.oil.oilCard }" type="text" class="am-form-field am-input-sm am-input-xm" placeholder="卡号" /></li>
    <li><input class="gjz-quq" name="oil.oilAddress" value="${oilVo.oil.oilAddress }" type="text" class="am-form-field am-input-sm am-input-xm" placeholder="消费地址" /></li>
    <li><input class="gjz-quq" name="oil.oilLicence" value="${oilVo.oil.oilLicence }" type="text" class="am-form-field am-input-sm am-input-xm" placeholder="消费车牌" /></li>
    <li><input class="gjz-quq" name="oil.oilUser" value="${oilVo.oil.oilUser }" type="text" class="am-form-field am-input-sm am-input-xm" placeholder="消费人" /></li>
    <li>
      <%-- <input class="datebegin-quq" name="beginTime" value="<fmt:formatDate value="${oilVo.beginTime }" pattern="yyyy-MM-dd"/>" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/> --%>
       <input class="datebegin-quq" type="text" name="beginTime"value="${oilVo.beginTime}"class="am-form-field am-input-sm am-input-zm  am-icon-calendar"placeholder="开始日期" data-am-datepicker="{theme: 'success',}"readonly />
    </li>
       <li>
     <%--  <input  class="dateend-quq" name="endTime" value="<fmt:formatDate value="${oilVo.endTime }" pattern="yyyy-MM-dd"/>" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="结束日期" data-am-datepicker="{theme: 'success',}"  readonly/> --%>
   <input class="dateend-quq" type="text" name="endTime"value="${oilVo.endTime}"class="am-form-field am-input-sm am-input-zm  am-icon-calendar"placeholder="结束日期" data-am-datepicker="{theme: 'success',}"readonly />
    </li>
    <li><button onclick="compaire()"
							class="am-btn am-radius am-btn-xs am-btn-success find-quq">
							<span class="find-quq find">查询</span>
						</button></li>
  </ul>
  </form>
</div>
    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
            <thead>
              <tr class="am-success">
               <th class="table-check"style="text-align:center;"><input id="all" type="checkbox"></th>

                <th class="table-id"style="text-align:center;">序号</th>
                <th class="table-title"style="text-align:center;">卡号</th>
                <th class="table-type"style="text-align:center;">消费地址</th>
                <th class="table-type"style="text-align:center;">消费车牌</th>
                <th class="table-type"style="text-align:center;">消费人</th>
                <th class="table-type"style="text-align:center;">消费金额</th>
                <th class="table-type"style="text-align:center;">消费时间</th>
                <th class="table-type"style="text-align:center;">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageBean.list }" var="oil"  varStatus="Status">
              <tr>
		       <td width="3%" style="text-align:center;"><input type="checkbox" name="ids" value="${oil.oilId }"/></td>
                <td width="6%" style="text-align:center;">${(pageBean.currentPage-1)*(pageBean.pageSize)+Status.index+1 }</td>
                <td width="9%" style="text-align:center;">${oil.oilCard }</td>
                <td width="9%" style="text-align:center;">${oil.oilAddress }</td>
                <td width="9%" style="text-align:center;">${oil.oilLicence }</td>
                <td width="9%" style="text-align:center;">${oil.oilUser }</td>
                <td width="9%" style="text-align:center;">${oil.oilMoney }元</td>
                <td width="9%" style="text-align:center;"><fmt:formatDate value="${oil.time }" pattern="yyyy-MM-dd hh:mm"/></td>
                
                	 <td width="9%" style="text-align:center;">
                	
                      	
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                     
                      <a type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" href="<c:url value='/oil/updatepage.action?oilId=${oil.oilId }'/>" title="修改"><span class="am-icon-pencil-square-o"></span></a>
                     	<button	onclick="deleteOne('${oil.oilId}')"	class="am-btn am-btn-default am-btn-xs am-text-danger am-round"
											title="删除">	<span class="am-icon-trash-o"></span>删除</button>
                    </div>
                  </div>
                	</td>
              </tr>
             </c:forEach>
              
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
                	<button type="button" class="am-btn am-btn-default button-del"
					onclick="deletechecked()"></button>
            		<a  type="button" class="am-btn am-btn-default button-add" 
            		href="addpage.action"></a>
     <!-- <button type="submit" class="am-btn am-btn-default"><span class="am-icon-minus"></span> 选中删除</button> 
              <a  type="button" class="am-btn am-btn-default" href="addpage.action"><span class="am-icon-plus"></span> 新增</a> -->
                 
                  </div>

      <ul class="am-pagination am-fr" id="pagination1">
</ul>
<ul class="am-pagination am-fr">
<li>总条数：${pageBean.totalRows }</li>
<li>总页数：${pageBean.totalPages }</li>
</ul>
			              <script type="text/javascript">
						    $.jqPaginator('#pagination1', {
						        totalPages: ${pageBean.totalPages },
						        visiblePages: 3,
						        currentPage: ${pageBean.currentPage},
						        disableClass: 'am-disabled',
						        activeClass: 'am-active',
						        prev: '<li class=""><a href="javascript:;">上一页</a></li>',
						        next: '<li class=""><a href="javascript:;">下一页</a></li>',
						        page: '<li class=""><a href="javascript:;">{{page}}</a></li>',
						        onPageChange: function (num, type) {
						        	if(num!=${pageBean.currentPage})
						        		{
						            $("input[name='currentPage']").val(num);
						            $("#search").submit();
						        		}
						        }
						    });
						</script>
          <hr />
        </form>
</div>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="<c:url value='/assets/js/amazeui.min.js'/>"></script>
<script type="text/javascript">

$(function(){

 $("#all").change(function(){//判断全选框的改变

 	var flage =$(this).is(":checked");//全选选中为true，否则为false

 	$("input[type=checkbox]").each(function(){

 $(this).prop("checked",flage);

 	})

 })

})
 var deleteOne=function(id){
    	if(confirm("您确认要删除此申请？")){
    		$.ajax({
    			url:"${pageContext.request.contextPath}/oil/delete.action?ids="+id,
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
    	$("input[name='ids']").each(function(){
    		if($(this).prop("checked")){
    			ids=$(this).val()+","+ids;
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
    var compaire=function(){
    	var beginDate=$("input[name='beginTime']").val();  
    	 var endDate=$("input[name='endTime']").val();  
    	 var d1 = new Date(beginDate.replace(/\-/g, "\/"));  
    	 var d2 = new Date(endDate.replace(/\-/g, "\/"));  

    	  if(beginDate!=""&&endDate!=""&&d1 >=d2)  
    	 {  
    	  alert("开始时间不能大于结束时间！");  
    	  return false;  
    	 }
    	  else{
    		  $("form").submit();
    	  }
    }
</script>
</body>
</html>