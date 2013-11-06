<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广州精诚所至贸易有限公司  后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="${ctx}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen"/>
<style>
body {
	padding-top: 60px;
	margin: 0;
	font-family: Verdana, "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	line-height: 18px;
	color: #333333;
	background-color: #ffffff;
}
</style>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-dropdown.js"></script>
<script type="text/javascript">
	$(function() {
		
		$(".cms-left").click(function() {
			var targetUrl = $(this).attr("lang");
			var id = $(this).attr("id");
			$("#right").load(targetUrl, function() {
				$(".nav-pills > .active").attr("class", "");
				$("li[lang='"+ id +"']").attr("class", "active");
			});
		});
		
		$(".cms-left")[0].click();
		
		$(".cms-nav").click(function() {
			var url = $(this).attr("lang");
			var id = $(this).attr("id");
			$("#cms-content").load(url, function() {
				$("#cms-nav-ul > .active").attr("class", "");
				$("li[lang='" + id + "']").attr("class", "active");
			});
		});
		
	});
	
	
</script>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="${ctx }/home.do">广州精诚所至贸易有限公司</a>
				<div class="nav-collapse">
					<ul class="nav" id="cms-nav-ul">
						<li class="active"><a href="${ctx }/admin/index.do" >系统信息</a></li>
						<li lang="cms-content-manage"><a href="#none" class="cms-nav" id="cms-content-manage" lang="${ctx }/admin/content.do">内容管理</a></li>
						<li lang="cms-site-manage"><a href="#none" id="cms-site-manage" class="cms-nav" lang="${ctx }/admin/site.do">站点管理</a></li>
						<li lang="cms-system-manage"><a href="#none" id="cms-system-manage" class="cms-nav" lang="${ctx }/admin/system.do">系统管理</a></li>
					</ul>

					<ul class="nav pull-right">
						<li class="divider-vertical"></li>
						<li class="dropdown">
							<a href="#none" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i> 您好，吴雪霞女士<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx }/admin/sign-out.do"><i class='icon-off'></i> 退出登录</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>

	<div class="container-fluid" id="cms-content">
		<div class="row-fluid"> 
			<div class="span2 bs-docs-sidebar well">
				<ul class="nav nav-pills nav-stacked">
					<li class="active" lang="system-info"><a class="cms-left" id="system-info" lang="${ctx }/admin/system-info.do" href="#dropdowns"><i class="icon-home"></i> 系统信息</a></li>
				</ul>
			</div>

			<div id="right" class="span9">
			</div>
		</div>
	</div>
	<hr/>
	<center>
	Copyright © 2013&nbsp;&nbsp;power by <a href="http://www.linxiaosheng.com/" target="_blank">Linxs</a>
	</center>
	
</body>
</html>
