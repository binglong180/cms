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
    <div class="frist"><img src="${ctx }/resources/images/fore/pic.jpg" width="21" height="18" />
        	<span class="gray"><a href="#">首页</a>></span><span><a href="#">ULV定义</a>></span>
        </div>
        <div class="news_content">
        		<div class="content_top"></div>
                <div class="content_middle">
                	<h1>ULV的定义</h1>
                    <p>Vectorfog™ 超低容量喷雾器使用大功率，高速电机产生高速气流，同时将化学药剂按按所需流量可调节在高速气流和特殊的喷嘴结构的共同作业下产生只有5-50微米的冷雾雾粒。因此使冷雾雾粒在应用空间内具有很强的弥散性，均匀性。喷洒直径长，高度高，范围更高，空中飘浮时间长，无死角，从而所使用药剂可以充分发挥最用。并且在不同情况下可以根据需要自行调节药剂液滴的大小，即使活动的飞虫也无法逃避，配合有效的药物能够充分达到理想的病虫害防治和净化空气的效果。
根据optimum Volume Medium Diameter (VMD)关于带菌病虫害的研究表明，喷出的药剂珠液体积调节在20微米最为理想
ULV冷雾机和热力烟雾机的区别在于热力烟雾机使用汽油发动机来启动并加热所添加的化学药剂和柴油等混合物产生可见的热雾进行作业，同时排放气体，在室内的情况下，ULV冷雾机更具有环保性，它使用电力启动，所以不需要燃烧所需化学药剂，通过电机震动，产生冷雾，同时也无气体排放。因此世界卫生组织WHO推荐使用由电力启动的电机通过震动不需要加热燃烧的超低容量冷雾机。它被广泛应用与室内，如仓库，温室大棚，商场，宾馆，家禽畜牧养殖场，各类公共室内场所等。
例：本公司C100 ULV冷雾机 作业范围在100平方米的情况下只需要80秒左右。
优势：操作简便，节约药剂，大量的作业时间，质量保证。

对比ULV和传统的背负式喷雾器，热力烟雾机。


Conventional Sprayer
背负式烟雾机在作业的时候喷出的雾珠体积较大，在100-200微米之间，作业花费时间和人力偏多并排放废气，适合在例如公园，广场等室外进行作业。在室内进行作业的话没有ULV冷雾机效果理想。


H Series Thermal Fogging
热力烟雾机需要通过燃油来加热化学药剂产生出稠密可见的由10微米左右的小体积液珠所形成的烟雾进行对表面的带菌病虫害防治。在室内作业的情况，相比ULV冷雾机，对飞行昆虫的防治效果较弱。易排放气体，存在化学药剂残留物。因此本公司研发出不仅可以添加化学药剂混合物，而且可以使用水剂的双重热力烟雾机。</p>
						<p class="date"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${news.time}" /></p>
                    
                </div>
                <div class="content_bottom"></div>
        </div>

   
<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>
</body>
</html>

