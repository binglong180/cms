<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/commons/taglibs.jsp" %>
<%@include file="/commons/no-cache.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>竭诚所至贸易有限公司</title>
<link href="${ctx }/resources/css/fore.css" rel="stylesheet" type="text/css"/> 
<script src="${ctx }/resources/js/jquery.js" type="text/javascript"></script>
<style type="text/css">
html{
     overflow-x:hidden;
     overflow-y:scroll;
}
</style>
</head>
<body>
    <%@include file="/WEB-INF/common/head.jsp" %>
    <div class="frist"><img src="${ctx}/resources/images/fore/pic.jpg" width="21" height="18" />
        	<span class="gray"><a href="#">首页</a>></span><span><a href="#">关于我们</a>></span>
        </div>
<div class="about_us">
  <h1>${company.companyName }</h1>
  ${company.companyIntro }
  </div>
   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>
</body>
</html>

