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
        	<span class="gray"><a href="#">首页</a>></span><span><a href="#">联系我们</a>></span>
        </div>
<div class="contact_us">
        	<div class="contact_left">
            		<p>公司名称：${company.companyName }</p>
                    <p>公司地址：${company.companyAddress }</p>
                    <p>公司电话：${company.companyTelephone }</p>
                    <p>传      真：${company.companyFax }</p>
                    <p>E-MAIL ：${company.companyEmail }</p>
            </div>
            
            <div class="contact_right"><p>欢迎光临${company.companyName }洽谈项目需求</p>
</div>
        <div class="map"><a href="#"><img src="${ctx }/resources/images/fore/contact_usmap.jpg" style="padding-top:27px;" width="914" height="340" alt="地图" /></a></div>
        </div>
        

   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>  
</body>
</html>

