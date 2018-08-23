<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>办公用品查询</title>
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>"/>
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script src="<c:url value='/js/jqPaginator.js'/>"></script>

</head>
<body>
	 <!-- Row start -->
	<div class="am-g">
			<div class="admin-biaogelist" style="position: static;">
	
    	<div class="listbiaoti am-cf">
	      <ul class="am-icon-flag on"> 商品列表</ul>
		      
		      <dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">商品列表</a></dl>
		
		      <!--这里打开的是新页面-->
		</div>      
			<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
		 <!--  <ul>   
		    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
		    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
		  </ul> -->
		</div>
		<div class="am-g">
            <table class="am-table am-table-bordered am-table-radius am-table-striped">
	          <thead>
	             <tr class="am-success">
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id" style="text-align:center;">编号</th>
                <th class="table-type" style="text-align:center;">商品名</th>
                <th class="table-author am-hide-sm-only" style="text-align:center;">型号</th>
                <th class="table-author am-hide-sm-only" style="text-align:center;">商品类型</th>
                <th class="table-author am-hide-sm-only" style="text-align:center;">单价</th>
                <th class="table-date am-hide-sm-only" style="text-align:center;">供应商</th>
                <th class="table-set" style="text-align:center;">操作</th>
               </tr>
              </thead>
              <tbody>
              <c:forEach items="${page.list}" var="goods">
              		<tr>
		                <td><input type="checkbox" value="${goods.goodsid}" /></td>
		                <td style="text-align:center;">${goods.goodsid }</td>
		                <td style="text-align:center;">${goods.goodsname }</a></td>
		                <td style="text-align:center;">${goods.model }</td>
		                <td style="text-align:center;">${goods.goodstype }</td>
		                <td style="text-align:center;">${goods.price}</td>
		                <td style="text-align:center;">${goods.supplier}</td>
		                <td style="text-align:center;">
		                  <div class="am-btn-toolbar">
		                    <div class="am-btn-group am-btn-group-xs">
		                      <a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="sendUpdate.action?goodsid=${goods.goodsid }"><span class="am-icon-pencil-square-o"></span> 编辑</a>
		                      <!-- <a class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</a> -->
		                      <a class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="deleteGoods(${goods.goodsid })"><span class="am-icon-trash-o"></span> 删除</a>
		                    </div>
		                  </div>
		                </td>
		              </tr>
              </c:forEach>
              
              
              
              </tbody>
            </table>
            
            <div class="am-cf">
             	 共 ${page.totalRows} 条记录
              <div class="am-fr">
              <ul class="am-pagination" id="pagination2"></ul>
              <script type="text/javascript">
			    $.jqPaginator('#pagination2', {
			        totalPages: ${page.totalPages},
			        visiblePages: ${page.pageSize},
			        currentPage: ${page.currentPage},
			        prev: '<li class="prev"><a href="javascript:;">上一页</a></li>',
			        next: '<li class="next"><a href="javascript:;">下一页</a></li>',
			        page: '<li class="page"><a href="javascript:;">{{page}}</a></li>',
			        onPageChange: function (num, type) {
			            $('#p2').text(type + '：' + num);
			        }
			    });
			</script>

              </div>
            </div>
            </div>
            <hr />
<!--             <p>注：.....</p> -->
          </form>
        </div>

      </div>
					  <!-- Row end -->
</body>
<script type="text/javascript">
var deleteGoods=function(goodsid){
	if(confirm("您确认要删除？")){
		$.ajax({
			url:"delete.action?goodsid="+goodsid,
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