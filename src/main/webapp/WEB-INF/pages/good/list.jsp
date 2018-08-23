<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品查询</title>
<meta name="description" content="这是一个商品查询页面">
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
      <ul><img style="margin:-5px 5px 0px 0px;" src="<c:url value='/img/index/menu6.png'/>"> 仓库物品查询</ul>
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">仓库物品查询</a></dl>
      <!--这里打开的是新页面-->
    </div>
    <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
      <form id="search" action="<c:url value='/good/list.action'/>" method="post">
    <input name="currentPage" type="hidden" value="1">
  <ul>  
    <%-- <li><input class="gjz-quq" name="good.warning" value="${goodVo.good.warning}" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="预警值" /></li> --%>
    <li><input class="gjz-quq" name="good.goodname" value="${goodVo.good.goodname }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="商品名称" /></li>
    <%-- <li><input class="gjz-quq" name="good.unit" value="${goodVo.good.unit }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="单位" /></li> --%>
    <li><button type="submit" class="am-btn am-radius am-btn-xs am-btn-success find-quq"><span class="find-quq find">搜索</span></button></li>
  </ul>
  </form>
</div>
<div class="am-form am-g">
    <form action="<c:url value='/good/deletelist.action'/>" onsubmit="javascript:return confirm('您确认要删除吗?');">
          <table class="am-table am-table-bordered am-table-radius am-table-striped">
             <thead>
              <tr class="am-success">
                <th width="3%" style="text-align:center;"><input id="all" type="checkbox"></th>
                <th width="6%" style="text-align:center;">序号</th>
                <th width="9%" style="text-align:center;">商品类型</th>
                <th width="9%" style="text-align:center;">商品名称</th>
                <th width="9%" style="text-align:center;">商品型号</th>
                <th width="9%" style="text-align:center;">商品生产商</th>
                <th width="9%" style="text-align:center;">单位</th>
                <th width="9%" style="text-align:center;">单价</th>
                <th width="9%" style="text-align:center;">库存</th>
                <th width="9%" style="text-align:center;">预警值</th>
                <th width="9%" style="text-align:center;">操作</th>
              </tr>
            </thead>

            <tbody>
            <c:forEach items="${pageBean.list }" var="good" varStatus="Status">
              <tr style="color: ${good.stock < good.warning ? 'red' : '' }">
              <td style="text-align:center;"><input style="display: ${good.stock == 0 ? 'black' : 'none' }" type="checkbox" name="ids" value="${good.depodid }"/></td>
                <td style="text-align:center;">${(pageBean.currentPage-1)*(pageBean.pageSize)+Status.index+1 }</td>
                <c:choose>
                <c:when test="${good.spare2 == '1' }">
                <td style="text-align:center;">办公用品</td>
                </c:when>
                <c:when test="${good.spare2 == '2' }">
                <td style="text-align:center;">固定资产</td>
                </c:when>
                <c:otherwise>
                <td style="text-align:center;">信息化耗材</td>
                </c:otherwise>
                </c:choose>
                <td style="text-align:center;">${good.goodname }</td>
                <td style="text-align:center;">${good.goodmodel }</td>
                <td style="text-align:center;">${good.goodproducer }</td>
                <td style="text-align:center;">${good.unit }</td>
                <td style="text-align:center;">${good.price }</td>
                <td style="text-align:center;">${good.stock }</td>
                <td style="text-align:center;">${good.warning }</td>
                	 <td style="text-align:center;">	
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                    <a type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" href="<c:url value='/good/updatepage.action?goodId=${good.goodid }'/>" title="修改"><span class="am-icon-pencil-square-o"></span></a> 
                    <a type="button" style="display: ${good.stock == 0 ? 'none' : 'black' }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" href="javascript:confirm('亲，有库存的商品不能删除商品信息哦!')"><span class="am-icon-trash-o" ></span></a>
                    <a type="button" style="display: ${good.stock == 0 ? 'black' : 'none' }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" href="javascript:if(confirm('确实要删除吗?'))location='<c:url value='/good/delete.action?goodId=${good.goodid }'/>'"><span class="am-icon-trash-o" ></span></a>
                      
                    </div>
                  </div>
                	
                	</td>
                	
                	
                	
                	
                
              </tr>
             </c:forEach>
              
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
               <button type="submit" class="am-btn am-btn-default button-del"></button>
               <%-- <a  type="button" class="am-btn am-btn-default " href="<c:url value='/good/addpage.action'/>">商品入库</a>
              			<a  type="button" class="am-btn am-btn-default " href="<c:url value='/good/delpage.action'/>">商品出库</a> --%>
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

</script>
</body>
</html>