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
        	<span class="gray"><a href="#">首页</a></span><span><a href="#">产品列表</a>></span>
        </div>
   		<div class="listing">
        		<div class="list_left">
        			<c:forEach items="${channels }" var="channel" varStatus="index">
                		<div class="list_leftone">
	                		<a href="${ctx }/channel.do?target=${index.index + 1}"><h1>${channel.name }</h1></a>
	                		<c:forEach items="${channel.children }" var="child">
	                			<p><a href="${ctx }/channel-child.do?id=${child.id}">${child.name }</a></p>
	                		</c:forEach>
	                		<p class="line"></p>
	                	</div>
                	</c:forEach>	
                 <div class="listringt_bottom"><img src="${ctx }/resources/images/fore/listingleft_3.jpg" style="width: 210px; height:35px;"  /></div>
                </div>
                
                
                
          <div class="list_right">
          		<c:forEach items="${page.result }" var="commoditys">
                	<div class="product_list">
                    	<a href="${ctx }/commodity.do?id=${commoditys.id}"><img style="width: 185px; height:135px;" src="${ctx }${commoditys.images[0].path }"  /></a>
                    	<p><a href="${ctx }/commodity.do?id=${commoditys.id}">${commoditys.commodityName }</a></p>
                    </div>
            	</c:forEach>
            	
            	<jsp:include page="/commons/page.jsp" flush="true" >
		  			 <jsp:param name="pageLink" value="${ctx }/channel.do" ></jsp:param>
		  		  </jsp:include>
            </div>
            
        </div>
   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>
</body>
</html>

