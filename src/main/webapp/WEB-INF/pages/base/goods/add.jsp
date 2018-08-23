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
<script type="text/javascript">
var message=${message};
if(message!=null){
	alert(message);
}
</script>
</head>
<body>
	 <!-- Row start -->
	<div class="am-g">
		<div class="am-u-sm-12" style="padding-top: 50px;padding-bottom: 50px"align="center">
			<h2>添加商品</h2>
		</div>
        <div class="am-u-sm-12">
          <form class="am-form am-form-horizontal" id="myform" action="add.action" method="post">
          		<div class="am-form-group">
				    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">商品名称</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-3" name="goodsname" placeholder="请输入商品名称">
				    </div>
				  </div>
				
				<div class="am-form-group">
			      <label for="doc-select-1" class="am-u-sm-2 am-form-label">商品类型</label>
			      <div class="am-u-sm-10">
				      <select id="doc-select-1" required name="goodstype">
				        <option value="0">-=请选择=-</option>
				        <option value="1">信息化</option>
				        <option value="2">非信息化</option>
				      </select>
				   <span class="am-form-caret"></span>
			      </div>
			    </div>
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">型号</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-pwd-2" name="model" placeholder="请输入型号">
				    </div>
				  </div>
				
				<div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">单价</label>
				    <div class="am-u-sm-10">
				      <input type="number" min="0" step="0.01" name="price" id="doc-ipt-pwd-2" placeholder="请输入商品单价">
				    </div>
				  </div>
				  
				  <div class="am-form-group">
				    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">供应商</label>
				    <div class="am-u-sm-10">
				      <input type="text" id="doc-ipt-pwd-2" name="supplier" placeholder="请输入供应商名称">
				    </div>
				  </div>
				  
				
				  <div class="am-form-group">
				    <div class="am-u-sm-10 am-u-sm-offset-2">
				      <button type="submit" class="am-btn am-btn-default">确认提交</button>
				      <button type="reset" class="am-btn am-btn-default">重新填写</button>
				      <button href="list.action" class="am-btn am-btn-default">返回</button>
				    </div>
				  </div>
          </form>
        </div>

     </div>

</body>
</html>