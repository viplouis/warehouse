<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>仓库管理</title>
<meta name="description" content="这是一个商品修改页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<c:url value='/assets/i/favicon.png'/>">
<link rel="apple-touch-icon-precomposed" href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/amazeui.datetimepicker.css'/>">
<link rel="stylesheet" href="<c:url value='/diagram-viewer/inputtop.css'/>">
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script src="<c:url value='/assets/js/amazeui.datetimepicker.min.js'/>"></script>
</head>
<body>
<div class="admin-biaogelist" style="position: static;">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"><img style="margin:-5px 5px 0px 0px;" src="<c:url value='/img/index/menu6.png'/>">  仓库管理-商品修改</ul>
     

      <!--这里打开的是新页面-->
   
    </div>
     <br />
    
    <form class="am-form am-form-horizontal" action="<c:url value='/good/update.action'/>" method="post">
    <input type="hidden" name="goodid" value="${good.goodid }"/>
  <div class="am-form-group" style="display: none;">
    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">商品编号</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-3" placeholder="请填入仓库编号" name="goodnum" value="${good.goodnum }">
    </div>
  </div>

	<div class="am-form-group">
    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">商品名称</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-3" placeholder="请填入仓库名称" name="goodname" value="${good.goodname }">
    </div>
  </div>
	
  <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">商品型号</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入仓库地址" name="goodmodel" value="${good.goodmodel }">
    </div>
  </div>
  
  <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">商品生产商</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入固定资产、信息类、非信息类等" name="goodproducer" value="${good.goodproducer }">
    </div>
  </div>
  
  <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">单位</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入负责人" readonly="readonly" name="unit" value="${good.unit }">
    </div>
  </div>
    
      <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">单价</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入联系电话" readonly="readonly" name="price" value="${good.price }">
    </div>
  </div>
  
    <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">库存</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入负责人" readonly="readonly" name="stock" value="${good.stock }">
    </div>
  </div>
    
      <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">预警值</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入联系电话" name="warning" value="${good.warning }">
    </div>
  </div>
    
  </div>


  <div class="am-form-group">
    <div class="am-u-sm-10 am-u-sm-offset-2">
      <button type="submit" class="am-btn am-btn-default input-save"></button>
    </div>
  </div>
  </form>
  
 
 
 
 <div class="foods">
  <ul>
    版权所有@2015
  </ul>
  <dl>
    <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
  </dl>
</div>




</div>
<script src="<c:url value='/assets/js/amazeui.min.js'/>"></script>
<!-- <!-- <script> --> 
<!--  (function($){ -->
<!--    // 也可以在页面中引入 amazeui.datetimepicker.zh-CN.js -->
<!--  $.fn.datetimepicker.dates['zh-CN'] = { -->
<!--      days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"], -->
<!--     daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"], -->
<!--    daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"], -->
<!--      months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], -->
<!--    monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"], -->
<!--     today: "今日", -->
<!--      suffix: [], -->
<!--     meridiem: ["上午", "下午"] -->
<!--    }; -->

<!--   $('.form-datetime-lang').datetimepicker({ -->
<!--    language:  'zh-CN', -->
<!--     format: 'yyyy-mm-dd hh:ii' -->
<!--    }); -->
<!--  }(jQuery)); -->
<!-- <!-- </script> --> 
</body>
</html>