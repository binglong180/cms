<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="/commons/taglibs.jsp" %>
<%@include file="/commons/no-cache.jsp" %>
<%@include file="/commons/common-header.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>竭诚所至贸易有限公司</title>
<link href="${ctx }/resources/css/fore.css" rel="stylesheet" type="text/css"/> 
<style type="text/css">
html{
     overflow-x:hidden;
     overflow-y:scroll;
}
</style>
</head>
<body>
    <%@include file="/WEB-INF/common/head.jsp" %>
    <div class="frist"><img src="${ctx }/resources/images/fore/pic.jpg" width="21" height="18" />
        	<span class="gray"><a href="#">首页</a>></span><span><a href="#">新闻</a>></span>
        </div>
        <div class="news_content">
        		<div class="content_top"></div>
                <div class="content_middle">
                	<h1>${news.title }</h1>
                    <p>${news.content }</p>
						<p class="date"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${news.time}" /></p>
                </div>
                <div class="content_bottom"></div>
        </div>

   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>
</body>
</html>

