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
* {margin:0; padding:0;}
body {font-size:12px; color:#222; font-family:Verdana,Arial,Helvetica,sans-serif; background:#f0f0f0;}
.clearfix:after {content: "."; display: block; height: 0; clear: both; visibility: hidden;}
.clearfix {zoom:1;}
ul,li {list-style:none;}
img {border:0;}

.wrapper {width:800px; margin:0 auto; padding-bottom:50px;}

h1 {height:50px; line-height:50px; font-size:22px; font-weight:normal; font-family:"Microsoft YaHei",SimHei;}

.shuoming {margin-top:20px; border:1px solid #ccc; padding-bottom:10px;}
.shuoming dt {height:30px; line-height:30px; font-weight:bold; text-indent:10px;}
.shuoming dd {line-height:20px; padding:5px 20px;}

/* qqshop focus */
#focus {width:959px; height:420px; overflow:hidden; position:relative;}
#focus ul {height:380px; position:absolute;}
#focus ul li {float:left; width:959px; height:420px; overflow:hidden; position:relative; background:#000;}
#focus ul li div {position:absolute; overflow:hidden;}
#focus .btnBg {position:absolute; width:959px; height:20px; left:0; bottom:0; background:#000;}
#focus .btn {position:absolute; width:959px; height:10px; padding:5px 10px; right:0; bottom:0; text-align:right;}
#focus .btn span {display:inline-block; _display:inline; _zoom:1; width:25px; height:10px; _font-size:0; margin-left:5px; cursor:pointer; background:#007AC7;}
#focus .btn span.on {background:#fff;}
#focus .preNext {width:45px; height:100px; position:absolute; top:150px; background:url(${ctx}/resources/images/fore/sprite.png) no-repeat 0 0; cursor:pointer;}
#focus .pre {left:0;}
#focus .next {right:0; background-position:right top;}
</style>

</head>
<body>
    <%@include file="/WEB-INF/common/head.jsp" %>
    <div class="banner">
   <div id="focus">
		<ul style="margin-left: 25px;">
			<li><a href="#none" target="_blank"><img src="${ctx }/resources/images/fore/banner.jpg" alt="QQ商城焦点图效果下载" style="width: 960px; height: 397px;" /></a></li>
			<li><a href="#none" target="_blank"><img src="${ctx }/resources/images/fore/banner2.jpg" alt="QQ商城焦点图效果教程" style="width: 960px; height: 397px;"/></a></li>
			<li><a href="#none" target="_blank"><img src="${ctx }/resources/images/fore/banner.jpg" alt="jquery商城焦点图效果" style="width: 960px; height: 397px;"/></a></li>
			<li><a href="#none" target="_blank"><img src="${ctx }/resources/images/fore/banner2.jpg" alt="jquery商城焦点图代码" style="width: 960px; height: 397px;"/></a></li>
			<li><a href="#none" target="_blank"><img src="${ctx }/resources/images/fore/banner.jpg" alt="jquery商城焦点图源码" style="width: 960px; height: 397px;"/></a></li>
		</ul>
	</div>
    <!-- 代码结束 -->
    
    </div>
<div class="content">
    	<h1>产品展示</h1>
          <div class="product">
          		<c:forEach items="${commoditys.result }" var="commodity" begin="0" end="5" varStatus="index">
          			<c:choose>
          				<c:when test="${index.index % 3 == 0 }">
          					<div class="pic_no"><a href="${ctx }/commodity.do?id=${commodity.id }"><img src="${ctx }${commodity.images[0].path }" style="width: 246px; height: 185px;" alt="${commodity.commodityName }" /> </a>
                            <h2><a href="${ctx }/commodity.do?id=${commodity.id }" style="color: #007AC7;">${commodity.commodityName }</a></h2>
                            <img src="${ctx }/resources/images/fore/product_line.jpg" style="width: 250px; height: 1px;" />
                        </div>
          				</c:when>
          				<c:otherwise>
          					<div class="pic"><a href="${ctx }/commodity.do?id=${commodity.id }"><img src="${ctx }${commodity.images[0].path }" style="width: 246px; height: 185px;" alt="${commodity.commodityName }" /> </a>
                            <h2><a href="${ctx }/commodity.do?id=${commodity.id }" style="color: #007AC7;">${commodity.commodityName }</a></h2>
                            <img src="${ctx }/resources/images/fore/product_line.jpg" style="width: 250px; height: 1px;" />
                        </div>
          				</c:otherwise>
          			</c:choose>
                        
          		</c:forEach>
  			</div>
            <h1>公司视频</h1>
  <div class="video">
            		<div class="video_left">
          		    <video src="http://www.w3school.com.cn/i/movie.ogg"  width="456" height="370" controls="controls">
					Your browser does not support the video tag.
					</video>
            		</div>
    <div class="video_right">
                    	<h3>三星和LG</h3>
                        <p>在2009年加入了由他的儿子肖恩廉，前LG和三星，现在运行该公司的全球业务来自英国的供应链专家GJ廉。自加入本公司以来，肖恩扮演的VectorFog™产品的设计和制造中不可或缺的一部分。</p>
    </div>
    <div class="video_leftone">
                    	<h3>三星和LG</h3>
                        <p>在2009年加入了由他的儿子肖恩廉，前LG和三星，现在运行该公司的全球业务来自英国的供应链专家GJ廉。自加入本公司以来，肖恩扮演的VectorFog™产品的设计和制造中不可或缺的一部分。</p>
    </div>
    <div class="video_rightone">
       <video src="http://www.w3school.com.cn/i/movie.ogg"  width="456" height="370" controls="controls">
					Your browser does not support the video tag.
					</video>
    </div>
   	<div class="video_lefttwo">
   	  <video src="http://www.w3school.com.cn/i/movie.ogg"  width="456" height="370" controls="controls">
					Your browser does not support the video tag.
					</video>
   	</div>
        <div class="video_righttwo">
                    	<h3>三星和LG</h3>
                        <p>在2009年加入了由他的儿子肖恩廉，前LG和三星，现在运行该公司的全球业务来自英国的供应链专家GJ廉。自加入本公司以来，肖恩扮演的VectorFog™产品的设计和制造中不可或缺的一部分。</p>
    </div>
    
  </div>
          
</div>

<div class="foot">
    		<p><a href="${ctx}/">首页</a> | <a href="${ctx}/aboutus.do">关于我们</a> | <a href="${ctx}/contactus.do"> 联系我们</a></p>
    </div>  
    <script type="text/javascript">
        $(function() {
        	var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
        	var len = $("#focus ul li").length; //获取焦点图个数
        	var index = 0;
        	var picTimer;
        	
        	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
        	var btn = "<div class='btnBg'></div><div class='btn'>";
        	for(var i=0; i < len; i++) {
        		btn += "<span></span>";
        	}
        	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
        	$("#focus").append(btn);
        	$("#focus .btnBg").css("opacity",0.5);

        	//为小按钮添加鼠标滑入事件，以显示相应的内容
        	$("#focus .btn span").css("opacity",0.4).mouseenter(function() {
        		index = $("#focus .btn span").index(this);
        		showPics(index);
        	}).eq(0).trigger("mouseenter");

        	//上一页、下一页按钮透明度处理
        	$("#focus .preNext").css("opacity",0.2).hover(function() {
        		$(this).stop(true,false).animate({"opacity":"0.5"},300);
        	},function() {
        		$(this).stop(true,false).animate({"opacity":"0.2"},300);
        	});

        	//上一页按钮
        	$("#focus .pre").click(function() {
        		index -= 1;
        		if(index == -1) {index = len - 1;}
        		showPics(index);
        	});

        	//下一页按钮
        	$("#focus .next").click(function() {
        		index += 1;
        		if(index == len) {index = 0;}
        		showPics(index);
        	});

        	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
        	$("#focus ul").css("width",sWidth * (len));
        	
        	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
        	$("#focus").hover(function() {
        		clearInterval(picTimer);
        	},function() {
        		picTimer = setInterval(function() {
        			showPics(index);
        			index++;
        			if(index == len) {index = 0;}
        		},4000); //此4000代表自动播放的间隔，单位：毫秒
        	}).trigger("mouseleave");
        	
        	//显示图片函数，根据接收的index值显示相应的内容
        	function showPics(index) { //普通切换
        		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
        		$("#focus ul").stop(true,false).animate({"left":nowLeft - 28},300); //通过animate()调整ul元素滚动到计算出的position
        		//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
        		$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
        	}
        });
    </script>
   
</body>
</html>

