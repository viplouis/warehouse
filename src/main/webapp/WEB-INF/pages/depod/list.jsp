<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>仓库管理</title>
<meta name="description" content="这是一个仓库查询页面">
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
      <ul><img style="margin:-5px 5px 0px 0px;" src="<c:url value='/img/index/main1.png'/>"> 仓库查询</ul>
      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">仓库查询</a></dl>
      <!--这里打开的是新页面-->
    </div>
    <div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
      <form id="search" action="<c:url value='/depod/list.action'/>" method="post">
    <input name="currentPage" type="hidden" value="1">
  <ul>  
    <li><input class="gjz-quq" name="depod.depodnum" value="${depodVo.depod.depodnum}" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="仓库编号" /></li>
    <li><input class="gjz-quq" name="depod.depodname" value="${depodVo.depod.depodname }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="仓库名称" /></li>
    <li><input class="gjz-quq" name="depod.depodaddress" value="${depodVo.depod.depodaddress }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="仓库地址" /></li>
    <li><input class="gjz-quq" name="depod.principal" value="${depodVo.depod.principal }" type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="负责人" /></li>
    <li><button type="submit" class="am-btn am-radius am-btn-xs am-btn-success find-quq"><span class="find-quq find">搜索</span></button></li>
  </ul>
  </form>
</div>
    <form class="am-form am-g" action="<c:url value='/depod/deletelist.action'/>" onsubmit="javascript:return confirm('您确认要删除吗?');">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
             <thead>
              <tr class="am-success">
                <th class="table-check"><input id="all" type="checkbox"></th>
                <th class="table-id" style="text-align:center;">ID</th>
                <th class="table-title" style="text-align:center;">仓库编号</th>
                <th class="table-type" style="text-align:center;">名称</th>
                <th class="table-type" style="text-align:center;">仓库地址</th>
                <th class="table-type" style="text-align:center;">存放类型</th>
                <th class="table-type" style="text-align:center;">负责人</th>
                <th class="table-type" style="text-align:center;">联系电话</th>
                <th width="100px" class="table-set" style="text-align:center;">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageBean.list }" var="depod" varStatus="Status">
              <tr>
              <td><input type="checkbox" name="ids" value="${depod.depodid }"/></td>
                <td style="text-align:center;">${(pageBean.currentPage-1)*(pageBean.pageSize)+Status.index+1 }</td>
                <td style="text-align:center;">${depod.depodnum }</td>
                <td style="text-align:center;">${depod.depodname }</td>
                <td style="text-align:center;">${depod.depodaddress }</td>
                <td style="text-align:center;">${depod.storigetype }</td>
                <td style="text-align:center;">${depod.principal }</td>
                <td style="text-align:center;">${depod.telphone }</td>
                	 <td style="text-align:center;">
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" href="<c:url value='/depod/updatepage.action?depodId=${depod.depodid }'/>" title="修改"><span class="am-icon-pencil-square-o"></span></a>
                      <a type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除" href="javascript:if(confirm('确实要删除吗?'))location='<c:url value='/depod/delete.action?depodId=${depod.depodid }'/>'"><span class="am-icon-trash-o" ></span></a>
                    </div>
                  </div>
                	</td>
              </tr>
             </c:forEach>
              
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
               <button type="submit" class="am-btn am-btn-default button-del"></button>
              <a  type="button" class="am-btn am-btn-default button-add" href="<c:url value='/depod/addpage.action'/>"></a>
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