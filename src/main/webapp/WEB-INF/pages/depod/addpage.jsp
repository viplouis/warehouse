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
<meta name="description" content="这是一个仓库新增页面">
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
<script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/assets/js/app.js'/>"></script>
<script src="<c:url value='/assets/js/amazeui.datetimepicker.min.js'/>"></script>
</head>
<body>
<div class="admin-biaogelist" style="position: static;">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 能耗管理-新增</ul>
     

      <!--这里打开的是新页面-->
   
    </div>
     <br />
    
<form  class="am-form" data-am-validator action="<c:url value='/depod/add.action'/>" style="width: 80%">
  <fieldset>
    <div class="am-form-group">
      <label for="doc-vld-name-2">仓库编号：</label>
      <input type="text" id="doc-vld-name-2"  placeholder="请填入仓库编号" name="DepodCustom.depodnum" required/>
    </div>

	<div class="am-form-group">
      <label for="doc-vld-name-2">仓库名称：</label>
      <input type="text" id="doc-vld-name-2"  placeholder="请填入仓库名称" name="DepodCustom.depodname" required/>
    </div>
	
    <div class="am-form-group">
      <label for="doc-vld-name-2">仓库地址：</label>
      <input type="text" id="doc-vld-name-2"  placeholder="请填入仓库地址" name="DepodCustom.depodaddress" required/>
    </div>

    <div class="am-form-group">
      <label for="doc-vld-name-2">仓库类型：</label>
       <input type="text" id="doc-vld-name-2"  placeholder="请填入固定资产、信息类、非信息类等" name="DepodCustom.storigetype" required/>
    </div>
    
    <div class="am-form-group">
      <label for="doc-vld-name-2">负责人：</label>
      <input type="text" id="doc-vld-name-2"  placeholder="请填入负责人" name="DepodCustom.principal" required/>
    </div>

   <div class="am-form-group">
      <label for="doc-vld-name-2">联系电话：</label>
      <input type="text" id="doc-vld-name-2"  placeholder="请填入联系电话" name="DepodCustom.telphone" required/>
    </div>

    <button class="am-btn am-btn-secondary" type="submit">保存</button>
  </fieldset>
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
<script>
(function($){
  // 也可以在页面中引入 amazeui.datetimepicker.zh-CN.js
  $.fn.datetimepicker.dates['zh-CN'] = {
    days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
    daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
    daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
    months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
    monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
    today: "今日",
    suffix: [],
    meridiem: ["上午", "下午"]
  };

  $('.form-datetime-lang').datetimepicker({
	   language:  'zh-CN',
	    format: 'yyyy-mm-dd hh:ii',
	        autoclose: true,
	        todayBtn: true,
	        startDate: '2018-02-14 14:45',
  });
}(jQuery));
</script>
</body>
</html>