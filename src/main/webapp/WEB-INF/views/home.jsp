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
			<c:forEach items="${focusPictures}" var="image">
				<li><a href="${image.title}" target="_blank"><img src="${ctx }${image.path}" style="width: 960px; height: 397px;" /></a></li>
			</c:forEach>
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
            <h1>产品演示视频</h1>
  <div class="video">
            		<div class="video_left">
          		    <iframe height="350" width="450" src="http://player.youku.com/embed/XNTYzODYwMDky" frameborder=0 allowfullscreen></iframe>
            		</div>
    <div class="video_right">
                    	<h3>双重热力喷雾机</h3>
                        <p>热力喷雾机使用范围：</br>
    1、园林、果园、茶园的病虫害防治；</br>
    2、棉花、小麦、水稻、玉米、蔬菜大棚等农作物以及草场的病虫害防治；</br>
    3、城市下水道、地下室、防空洞、垃圾场、高楼层的垃圾通道、公共厕所以及大型仓库的消毒杀菌及蚊虫消杀；</br>
    4、医院、影剧院、体育馆、商务大厦、车站码头、餐馆饭店等密闭场所的卫生消毒及虫害处理；</br>
    5、牛、马、猪、鸡等畜禽养殖场的消毒灭菌处理等。</p>
    </div>
    <div class="video_leftone">
                    	<h3>Ts一10系列热力喷雾机</h3>
                        <p>是一种应用冲压式火箭发动机为动力的、以超低容量方式施放杀虫杀菌药剂的高新技术产品。</br>
                        工作效率高:本机每小时可对果树施药达17亩到27亩(视果树高度及密度不同).是其它施药器材的十几倍。杀灭率高:由于其施放无死角、附着力好、抗雨水冲刷等特点</p>
    </div>
    <div class="video_rightone">
       <iframe height="350" width="450" src="http://player.youku.com/embed/XNTY1OTA2NzY4" frameborder=0 allowfullscreen></iframe>
    </div>
   	<div class="video_lefttwo">
   	  <iframe height="350" width="450" src="http://player.youku.com/embed/XNTc3NTc2NTIw" frameborder=0 allowfullscreen></iframe>
   	</div>
        <div class="video_righttwo">
                    	<h3>TS一35系列热力喷雾机</h3>
                        <p>射程大:对于果树、林木等高度大的作业环境.其效率是无所匹敌的。穿透力强:由于是颗粒极小的烟雾，有极高穿透力和渗透力。对于密度大的棉田，中后期小麦、水稻.蔗田、高粱、玉米等高秆植物，以及下水道，垃圾道等曲折迂回、有死角而无法直接施药的场所，有很好的效果。</p>
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

