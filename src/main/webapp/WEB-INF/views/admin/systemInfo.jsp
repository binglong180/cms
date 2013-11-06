<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录</title>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script src="${ctx }/resources/js/jquery-timer.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$("#current").timer({format: "yy年mm月dd日 W HH:MM:ss"});
	});
</script>
</head>
<body>
	<div class="hero-unit">
		<legend>广州精诚所至贸易有限公司企业网站后台管理系统</legend>
		<p>当前系统时间：<span id="current" class="badge"></span></p>
		<li>服务器系统：${props['os.name'] }</li>
		<li>服务器系统版本：${props['os.version'] }</li>
		<li>JAVA运行时环境：${props['java.version'] }</li>
		<li>技术支持：<a href="http://www.linxiaosheng.com" target="_blank">Linxs</a></li>
		<legend></legend>
		浏览器支持：Google Chrome 
		<a target="_blank"
				href="http://www.google.cn/chrome/intl/zh-CN/landing_chrome.html?hl=zh-CN"
				class="btn btn-success btn-small">点此下载 》</a>
	</div>
</body>
</html>
