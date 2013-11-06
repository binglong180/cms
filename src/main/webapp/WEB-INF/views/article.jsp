<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="/commons/taglibs.jsp" %>
<%@include file="/commons/no-cache.jsp" %>
<%@include file="/commons/common-header.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="${ctx}/resources/css/linxs.css">
</head>
<body class="view-post">

<div class="container">
    <div class="header clearfix">
        <a href="${ctx}/" class="avatar"><img src="http://m1.img.libdd.com/farm3/2013/0715/16/CD6BEEFAA620893522DA69FFCF9EAA183129ADB71982C_64_64.jpg"></a>
		<div class="info clearfix">
		    <div class="card">
		        <h1 class="title"><a href="${ctx}/">我是林小生</a></h1>
		        <div class="bio">The relentless pursuit of perfection</div>
		    </div>
		</div>
    </div>

    <div class="main box-wrapper clearfix">
        <div class="sidebar"><span class="post-type icon-text" id="content"></span>
		<div class="detail">
			<div class="item date">Jun 17th 11 am</div>
			<div class="item">3℃</div>
		</div>
	</div>
	
    <div class="content">
    	<div class="entry">
    		<h1 class="title">${blog.title}</h1>
    		<div class="rich-content">
				<blockquote>
					${blog.content}
				</blockquote>
			</div>
		</div>
	</div>
	
</div>
    
    
    <div class="notes box-wrapper clearfix">
        <div class="sidebar"><span class="post-type icon-notes" id="notes">热度</span></div>
        <div class="content">
        	<iframe frameborder="0" scrolling="no" allowtransparency="true" height="145" width="800" src="${ctx}/comment"></iframe>
        </div>
    </div>
    

    
    <div class="pagination box-wrapper clearfix">
        <div class="sidebar"><span class="post-type icon-pagination" id="pagination">分页</span></div>
        <div class="content clearfix">
            
            <a class="pagination-link prev" href="#">上一篇<span class="icon"></span></a>
            
            
            <a class="pagination-link next" href="#">下一篇<span class="icon"></span></a>
            
        </div>
    </div>

    <div class="footer box-wrapper">
        <div class="content">
            © <a href="${ctx}/">我是林小生</a>, Powered by <a href="${ctx}/" target="_blank">Linxs</a>, <a href="${ctx}/" target="_blank">脸书</a> Theme.
        </div>
    </div>

    
</div>






</body>
</html>
