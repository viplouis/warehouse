<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="<c:url value='/assets/i/favicon.png'/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value='/assets/i/app-icon72x72@2x.png'/>">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="<c:url value='/assets/css/amazeui.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/assets/css/admin.css'/>">
    <link rel="stylesheet" href="<c:url value='/diagram-viewer/inputtop.css'/>">
    <script src="<c:url value='/assets/js/jquery.min.js'/>"></script>
    <script src="<c:url value='/assets/js/app.js'/>"></script>
    <script src="<c:url value='/js/jqPaginator.js'/>"></script>
    <style type="text/css">
    body {
	vertical-align: middle;
	font-family: "Microsoft YaHei";
	font-size: 2.2em;
	color:#666;
	letter-spacing: 2px;
}
.keleyi:hover
{
background-color: #eee;
}
    </style>
</head>
<body>

<div class="admin-biaogelist" style="position:fixed; top:0px;left:0px;right:0px;bottom:0px;background-color: #4c6983;">
<!-- <div style="width: 100px;height: 100px;color: red;background-color: #4c6983;"> -->
<div style="height:97%; margin: 21px 0px 0px 20px;background-color: #f8fcff;">
<div style="width: 100%;height: 60px;background-color: #cee8ff;">
<div style="width:600px;height:40px; position:fixed; top:32px;left:60px;">
<img src="<c:url value='/img/main/shenyin.png'/>">
<span style=" font-size: 0.8em;color: #808080;letter-spacing: 0px;">欢迎登入，您好！</span>
<span style=" font-size: 1.2em;color: #666;letter-spacing: 0px;">&nbsp;&nbsp;&nbsp;营业部&nbsp;:&nbsp;李江</span>
</div>
</div>
<div style="position:fixed;top:83px;left:20px;right:0px;bottom:0px;width: 100%;overflow: hidden;">
<div style="float: left;width: 20%;height:100%;background-color:#dcefff;min-width: 300px;overflow: inherit;">
<!-- 待办任务 -->
<div style="width: 100%;height: 80px;">
<div style="width:250px;height:60px; position:fixed; top:100px;left:60px;overflow: hidden;">
<div style="width: 220px;height: 20px;float: left;">
<img style="margin-top: -10px;" src="<c:url value='/img/main/tishi.png'/>">
<span style=" font-size: 1.3em;color: #666;letter-spacing: 3px;">&nbsp;&nbsp;待办任务</span>
</div><div style="width: 20px;height: 20px;float: left;border-radius: 25px;color:#fff;background-color: #ec3029;text-align: center;cursor: pointer;" onclick="javascript:location.href='process/todoTask.action'">
<span  style=" font-size: 0.6em;letter-spacing: 0px;">0</span></div>
</div>
</div>
<div style="margin-left:2%; width: 96%;height: 100%;background-color: #f0f8ff;">
<span style="margin-left:60px; font-size: 1.2em;color: gray;letter-spacing: 0px;">暂无待办任务</span>
</div>
<div></div>
</div>
<div style="float: left;width: 80%;height:100%;background-color: #f8fcff;min-width: 1200px;overflow: auto;">
<div style="width: 160px;height: 175px;margin: 7% 0 0 14%;float: left;cursor: pointer;" onclick="javascript:location.href='office_useapply/sendAddDetail.action'">
<div style="width: 160px;height: 130px;background:url(<c:url value='/img/main/bgypsq.png'/>) 16px 5px no-repeat;"></div>
<div class="keleyi" style="width: 160px;height: 45px;border-radius: 8px;"><span style="font-size: 1.2em;color: #666;letter-spacing: 0px;">办公用品申请</span></div>
</div>
<div style="width: 160px;height: 175px;margin: 7% 0 0 14%;float: left;cursor: pointer;"onclick="javascript:location.href='carUse/sendAdd.action'">
<div style="width: 160px;height: 130px;background:url(<c:url value='/img/main/clsysq.png'/>) 16px 5px no-repeat;"></div>
<div class="keleyi" style="width: 160px;height: 45px;border-radius: 8px;"><span style="font-size: 1.2em;color: #666;letter-spacing: 0px;">车辆使用申请</span></div>
</div>
<div style="width: 160px;height: 175px;margin: 7% 0 0 14%;float: left;cursor: pointer;"onclick="javascript:location.href='fixed/sendUseApply.action'">
<div style="width: 160px;height: 130px;background:url(<c:url value='/img/main/gdzcsq.png'/>) 16px 5px no-repeat;"></div>
<div class="keleyi" style="width: 160px;height: 45px;border-radius: 8px;"><span style="font-size: 1.2em;color: #666;letter-spacing: 0px;">固定资产申请</span></div>
</div>
<div style="width: 160px;height: 175px;margin: 7% 0 0 14%;float: left;cursor: pointer;"onclick="javascript:location.href='carAccident/sendApply.action'">
<div style="width: 160px;height: 130px;background:url(<c:url value='/img/main/sgsb.png'/>) 16px 5px no-repeat;"></div>
<div class="keleyi" style="width: 160px;height: 45px;border-radius: 8px;"><span style="font-size: 1.2em;color: #666;letter-spacing: 0px;">&nbsp;&nbsp;&nbsp;事故申报</span></div>
</div>
<div style="width: 160px;height: 175px;margin: 7% 0 0 14%;float: left;cursor: pointer;"onclick="javascript:location.href='carUse/sendRepairApply.action'">
<div style="width: 160px;height: 130px;background:url(<c:url value='/img/main/clwx.png'/>) 16px 5px no-repeat;"></div>
<div class="keleyi" style="width: 160px;height: 45px;border-radius: 8px;"><span style="font-size: 1.2em;color: #666;letter-spacing: 0px;">&nbsp;&nbsp;&nbsp;车辆维修</span></div>
</div>
</div>
</div>

 
<%-- <div style="background:url(<c:url value='/img/bug.png'/>) 16px 5px no-repeat;">
</div> --%>
</div>
</div>
<%-- ${message}<br/><a href="javascript:history.back(-1)">返回</a> --%>
</body>
</html>