<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
<title>供应商</title>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
</head>
<body>
<form:form commandName="blog"></br>
日志标题：<form:input path="title" class="text" /></br>
日志内容：<form:input path="content" class="text" /></br>
<input type="submit" value="保存"/>
</form:form>
</body>
</html>
