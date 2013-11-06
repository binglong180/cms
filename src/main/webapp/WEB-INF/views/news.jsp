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
        	<span class="gray"><a href="#">首页</a>></span><span><a href="#">行业新闻</a>></span>
        </div>
   		<div class="news">
   			<c:forEach items="${page.result }" var="news">
   			
            <div class="new_title">
            	<div class="big_title"><a href="${ctx }/news-content.do?id=${news.id }">${news.title }</a></div>
                <div class="title_date"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${news.time}" /></div>  
            </div>
            
   			</c:forEach>
         
            <div class="new_page">
                            <span><a href="#">上一页</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">下一页</a></span>
                            <span>转到 <img src="${ctx }/resources/images/fore/page.jpg" width="32" height="19" /> 页</span> 
                            <a href="#"><img src="${ctx }/resources/images/fore/page_confirmi.jpg" width="43" height="22" /> </a>
                        </div>
        </div>    
                                     
   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>
</body>
</html>

