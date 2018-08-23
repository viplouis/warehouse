<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品入库查询</title>
<meta name="description" content="这是一个商品入库查询页面">
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
<script src="<c:url value='/js/jqPaginator.js'/>"></script>
</head>
<body>

<div class="admin-biaogelist" style="position: static;">
	
    <div class="listbiaoti am-cf">
      <ul><img style="margin:-5px 5px 0px 0px;" src="<c:url value='/img/index/menu6.png'/>"> 商品入库查询</ul>
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">商品入库查询</a></dl>
      <!--这里打开的是新页面-->
    </div>
    <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
      <form id="search" action="<c:url value='/good/indepodList.action'/>" method="post">
    <input name="currentPage" type="hidden" value="1">
  <ul>  
    <li><input class="gjz-quq" name="goodname" value="${goodname }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="商品名称" /></li>
    <li>
       <input class="datebegin-quq" type="text" name="beginDate" value="${beginDate}" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
	</li>
	<li>
        <input  class="dateend-quq" type="text" name="endDate" value="${endDate}" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="结束日期" data-am-datepicker="{theme: 'success',}"  readonly/>
  <li><button onclick="compaire()"
							class="am-btn am-radius am-btn-xs am-btn-success find-quq">
							<span class="find-quq find">搜索</span>
						</button></li></ul>
  </form>
</div>
    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
             <thead>
              <tr class="am-success">
                <th class="table-id" style="text-align:center;">序号</th>
                <th class="table-type" style="text-align:center;">商品名称</th>
                <th class="table-type" style="text-align:center;">商品型号</th>
                <th class="table-type" style="text-align:center;">商品生产商</th>
                <th class="table-type" style="text-align:center;">单位</th>
                <th class="table-type" style="text-align:center;">单价</th>
                <th class="table-type" style="text-align:center;">数量</th>
                <th class="table-type" style="text-align:center;">入库时间</th>
                <th class="table-type" style="text-align:center;">采购人员</th>
                <th class="table-type" style="text-align:center;">负责人</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach items="${pageBean.list }" var="good" varStatus="Status">
              <tr>
                <td>${(pageBean.currentPage-1)*(pageBean.pageSize)+Status.index+1 }</td>
                <td>${good.goodname }</td>
                <td>${good.goodmodel }</td>
                <td>${good.goodproducer }</td>
                <td>${good.unit }</td>
                <td>${good.price }</td>
                <td>${good.num }</td>
                <td><fmt:formatDate value="${good.indepodtime }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                <td>${good.buyer }</td>
                <td>${good.depodprincipal }</td>
              </tr>
             </c:forEach>
              
            </tbody>
          </table>
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
						        	if(num!=${pageBean.currentPage })
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
var compaire=function(){
	var beginDate=$("input[name='beginDate']").val();  
	 var endDate=$("input[name='endDate']").val();  
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
$(function(){

 $("#all").change(function(){//判断全选框的改变

 	var flage =$(this).is(":checked");//全选选中为true，否则为false

 	$("input[type=checkbox]").each(function(){

 $(this).prop("checked",flage);

 	})

 })

})

</script>
</body>
</html>