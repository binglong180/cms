<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
<title>供应商</title>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
</head>
<body>
日志 &nbsp:&nbsp; <a href="${ctx}/admin/blog/create">写日志</a></br>
<c:forEach items="${page.result}" var="article">
	${article.title}</br>
</c:forEach>
</body>
</html>
