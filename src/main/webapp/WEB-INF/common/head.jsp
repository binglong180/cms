<%@include file="/commons/taglibs.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<div class="nav_top">
        <div class="logo"><img src="${ctx }${logo.path}" width="320" height="33" alt="${logo.title}"></div>
    </div>
<div class="nav">
            <div class="nav_center">
                <ul>
                    <li><a href="${ctx }/home.do">首页</a></li>
                    <c:forEach items="${channelTop}" var="channel">
		                <li><a href="${ctx }/channel.do?id=${channel.id}">${channel.name}</a></li>
                    </c:forEach>
	                <li><a href="${ctx }/ulv.do">ULV的定义</a></li>
	                <li><a href="${ctx }/news.do">行业新闻</a></li>
	                <li><a href="${ctx }/aboutus.do">关于我们</a></li>
	                <li class="nobg"><a href="${ctx }/contactus.do">联系我们</a></li>
                </ul>
            </div>
    </div>
<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=8&amp;pos=right&amp;uid=0" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
var bds_config={"bdTop":258};
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
</script>
<!-- Baidu Button END -->



