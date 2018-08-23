<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>油耗修改</title>
<meta name="description" content="这是一个油耗修改页面">
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
      <ul><img style="margin: -5px 5px 0px 0px;"
					src="<c:url value='/img/index/menu4.png'/>"> 油料管理-修改</ul>
     

      <!--这里打开的是新页面-->
   
    </div>
     <br />
    
    <form class="am-form am-form-horizontal" action="<c:url value='/oil/update.action'/>">
    <input type="hidden" name="oilId" value="${oilCustom.oilId }"/>
  <div class="am-form-group">
    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">卡号</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-3" placeholder="请填入卡号" name="oilCard" value="${oilCustom.oilCard }">
    </div>
  </div>

  <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">消费地址</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="请填入消费地址" name="oilAddress" value="${oilCustom.oilAddress }">
    </div>
  </div>
  <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">消费车牌</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="输入消费车牌" name="oilLicence" value="${oilCustom.oilLicence }">
    </div>
  </div>
    <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">消费人</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="输入消费人" name="oilUser" value="${oilCustom.oilUser }">
    </div>
  </div>
      <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">消费金额</label>
    <div class="am-u-sm-10">
      <input type="text" id="doc-ipt-pwd-2" placeholder="输入消费金额" name="oilMoney" value="${oilCustom.oilMoney }">
    </div>
  </div>
  
    <div class="am-form-group">
    <label for="doc-ipt-pwd-2" class="am-u-sm-2 am-form-label">消费时间</label>
    <div class="am-u-sm-10">
    <p><input type="text" name="time" class="am-form-field" placeholder="消费时间" data-am-datepicker="{theme: 'success'}" value="<fmt:formatDate value='${oilCustom.time }' pattern='yyyy-MM-dd' />"readonly/></p>
<!-- <input size="16" type="text" value="消费时间" readonly class="form-datetime-lang am-form-field" name="time"> -->
    </div>
  </div>


  <div class="am-form-group"align="center">
    <div class="am-u-sm-10 am-u-sm-offset-2">
      <button type="submit" class="am-btn am-btn-default">提交</button>
    </div>
  </div>
  </form>
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