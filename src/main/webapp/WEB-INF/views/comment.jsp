<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="/commons/taglibs.jsp" %>
<%@include file="/commons/no-cache.jsp" %>
<%@include file="/commons/common-header.jsp" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html class=" hasFontSmoothing-true"><head><meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<script src="/me/resources/js/jquery.js" type="text/javascript"></script>
<script src="/me/resources/js/jquery.form.js" type="text/javascript"></script>



<link rel="stylesheet" href="http://s.libdd.com/css/base/base.$7058.css">
<link rel="stylesheet" href="http://s.libdd.com/css/module/notes.$7249.less">
<style type="text/css">.notes {
background:#FFFFFF;color: #444444;}
.notes #register-third-cancel,
.notes .register-third-logout{
color: #444444;
}
.register {}
.list-container a,
.list-container a:link,
.list-container a:hover,
.list-container a:visited,
.list-container a:active {
color: #444444;
}.operation a,
.operation a:link,
.operation a:hover,
.operation a:visited,
.operation a:active {
color: rgba(68, 68, 68, 0.3);
}
.share-container{
margin-bottom: 15px;
height: 24px;
overflow: hidden;
list-style: none;
}
.share-container .share-tip{
float: left;
height: 20px;
line-height: 20px;
line-height: 24px\9;
overflow: hidden;
color: #444;
}
.share-container{
opacity: 0.6;
filter:alpha(opacity=60);
}
.share-container:hover{
opacity: 1;
filter:alpha(opacity=100);
-moz-transition: opacity 0.2s ease-in, color 0.2s ease-in;
-webkit-transition: opacity 0.2s ease-in, color 0.2s ease-in;
-o-transition: opacity 0.2s ease-in, color 0.2s ease-in;
transition: opacity 0.2s ease-in, color 0.2s ease-in;
}
.share-panel { position:relative;top:-1px;top:2px\9;z-index:2;float: left; zoom:1; height:24px; width:175px; background:url('http://s.libdd.com/img/theme/notes/share.$6745.png') 0 -2px no-repeat;}
.share-panel a.icon { position:absolute; width:17px; height:17px; top:2px; overflow:hidden; text-indent:-9999px; }
.share-panel a.icon-sina { left:20px; }
.share-panel a.icon-renren { left:38px; }
.share-panel a.icon-qzone { left:56px; }
.share-panel a.icon-tencent { left:74px; }
.share-panel a.icon-douban { left:92px; }
.share-panel a.icon-kaixin { left:113px; }
.share-panel a.icon-facebook{left:130px;}
.share-panel a.icon-twitter{left:148px;}
.notab .share-panel{
left:0;
}/* customize options */
</style><style>#haloword-pron { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -34px; }#haloword-pron:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -34px; }#haloword-open { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -17px; }#haloword-open:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -17px; }#haloword-close { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px 0; }#haloword-close:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px 0; }#haloword-add { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -51px; }#haloword-add:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -51px; }#haloword-remove { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -68px; }#haloword-remove:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -68px; }</style><script src="http://s.libdd.com/js/lib/frameupload.$7202.js" async="" charset="utf-8"></script><script src="http://s.libdd.com/js/lib/photo-reply.$7202.js" async="" charset="utf-8"></script><script src="http://s.libdd.com/sky/build/sky.$6939.js" async="" charset="utf-8"></script><script src="http://s.libdd.com/js/kissy/1.2/template.js?t=20120703155558" async="" charset="utf-8"></script><script src="http://s.libdd.com/js/util.$7202.js" async="" charset="utf-8"></script><script src="http://s.libdd.com/js/kissy/1.2/core.js?t=20120703155558" async="" charset="utf-8"></script><script src="http://s.libdd.com/js/lib/notes.$7202.js" async="" charset="utf-8"></script><link rel="stylesheet" href="http://s.libdd.com/css/base/base.$7058.css"><link rel="stylesheet" href="http://s.libdd.com/css/module/notes.$7249.less"><style type="text/css">.notes {
	background:#FFFFFF;
	background:rgba(255, 255, 255, 0.0);color: #444444;}
	.notes #register-third-cancel,
	.notes .register-third-logout{
	color: #444444;
	}
	.register {}
	.list-container a,
	.list-container a:link,
	.list-container a:hover,
	.list-container a:visited,
	.list-container a:active {
	color: #3B5998;
	}
	.list-container a { text-decoration: none; }.operation a,
	.operation a:link,
	.operation a:hover,
	.operation a:visited,
	.operation a:active {
	color: rgba(59, 89, 152, 0.3);
	}
	.share-container{
	margin-bottom: 15px;
	height: 24px;
	overflow: hidden;
	list-style: none;
	}
	.share-container .share-tip{
	float: left;
	height: 20px;
	line-height: 20px;
	line-height: 24px\9;
	overflow: hidden;
	color: #444;
	}
	.share-container{
	opacity: 0.6;
	filter:alpha(opacity=60);
	}
	.share-container:hover{
	opacity: 1;
	filter:alpha(opacity=100);
	-moz-transition: opacity 0.2s ease-in, color 0.2s ease-in;
	-webkit-transition: opacity 0.2s ease-in, color 0.2s ease-in;
	-o-transition: opacity 0.2s ease-in, color 0.2s ease-in;
	transition: opacity 0.2s ease-in, color 0.2s ease-in;
	}
	.share-panel { position:relative;top:-1px;top:2px\9;z-index:2;float: left; zoom:1; height:24px; width:175px; background:url('http://s.libdd.com/img/theme/notes/share.$6745.png') 0 -2px no-repeat;}
	.share-panel a.icon { position:absolute; width:17px; height:17px; top:2px; overflow:hidden; text-indent:-9999px; }
	.share-panel a.icon-sina { left:20px; }
	.share-panel a.icon-renren { left:38px; }
	.share-panel a.icon-qzone { left:56px; }
	.share-panel a.icon-tencent { left:74px; }
	.share-panel a.icon-douban { left:92px; }
	.share-panel a.icon-kaixin { left:113px; }
	.share-panel a.icon-facebook{left:130px;}
	.share-panel a.icon-twitter{left:148px;}
	.notab .share-panel{
	left:0;
	}/* customize options */
	</style><style>#haloword-pron { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -34px; }#haloword-pron:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -34px; }#haloword-open { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -17px; }#haloword-open:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -17px; }#haloword-close { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px 0; }#haloword-close:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px 0; }#haloword-add { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -51px; }#haloword-add:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -51px; }#haloword-remove { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -68px; }#haloword-remove:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -68px; }</style><style>#haloword-pron { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -34px; }#haloword-pron:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -34px; }#haloword-open { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -17px; }#haloword-open:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -17px; }#haloword-close { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px 0; }#haloword-close:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px 0; }#haloword-add { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -51px; }#haloword-add:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -51px; }#haloword-remove { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -94px -68px; }#haloword-remove:hover { background: url(chrome-extension://bhkcehpnnlgncpnefpanachijmhikocj/img/icon.svg) -111px -68px; }</style></head>
	
	
	
	
		<body>
	<div id="wrapper">
	<div id="container" class="notes"><li id="share-container" class="share-container"> <div class="share-tip" id="share-tip">分享到</div> <div class="share-panel" id="share-panel"> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-sina" title="新浪微博">新浪微博</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-renren" title="人人">人人</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-qzone" title="QQ空间">QQ空间</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-tencent" title="腾讯微博">腾讯微博</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-douban" title="豆瓣">豆瓣</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-kaixin" title="开心网">开心网</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-facebook" title="facebook">facebook</a> <a target="_blank" href="${ctx}/article/${id}" class="icon icon-twitter" title="twitter">twitter</a> </div> </li> <div class="publisher"> <div class="comment"> <textarea class="ui-textarea skin-textarea-notes" cloud="" name="pubComment" placeholder="" id="ctrltextareapubComment" data-control="pubComment" style="width: 680px; height: 66px;"></textarea> <div id="photo-reply"><a href="#" class="dd-photo-reply frameupload-hook" id="dd-photo-reply1374654829975" uploadid="24" style="cursor: default;"></a><input type="hidden" id="dd-photo-reply-value1374654829975"></div> </div> <div class="submit"> <div class="ui-button skin-button-notes" cloud="" id="ctrlbuttonpubSubmit" data-control="pubSubmit" style=""><span class="ui-button-bg-left skin-button-notes-bg-left"></span><div id="ctrlbuttonpubSubmitlabel" class="ui-button-label skin-button-notes-label"><span id="ctrlbuttonpubSubmittext" class="ui-button-text skin-button-notes-text">回 应</span></div></div> </div><div id="not-login-msg" class="not-login-msg" style="display: none;"> 请选择一个账号登录，才可以发表回应 </div> </div></div>
	</div>
	</body></html>