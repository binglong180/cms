<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script type="text/javascript" src="${ctx }/resources/js/jquery.form.js"></script>
<link rel="stylesheet" href="${ctx}/resources/js/plugins/bootstrap-wysiwyg/index.css" />
<script type="text/javascript" src="${ctx }/resources/js/plugins/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/plugins/bootstrap-wysiwyg/jquery.hotkeys.js"></script>

<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet"/>

<style>
#contentEditor {
	max-height: 250px;
	height: 250px;
	background-color: white;
	border-collapse: separate;
	border: 1px solid rgb(204, 204, 204);
	padding: 4px;
	box-sizing: content-box;
	-webkit-box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
	box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	border-top-left-radius: 3px;
	overflow: scroll;
	outline: none;
}
</style>


<script type="text/javascript">
	$(function() {
		function initToolbarBootstrapBindings() {
		      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
		            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
		            'Times New Roman', 'Verdana'],
		            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
		      $.each(fonts, function (idx, fontName) {
		          fontTarget.append($('<li><a data-edit="fontName' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
		      });
		      $('a[title]').tooltip({container:'body'});
		    	$('.dropdown-menu input').click(function() {return false;})
				    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
		        .keydown('esc', function () {this.value='';$(this).change();});

		      $('[data-role=magic-overlay]').each(function () { 
		        var overlay = $(this), target = $(overlay.data('target')); 
		        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
		      });
		      $('#voiceBtn').hide();
		    };
		initToolbarBootstrapBindings(); 
		
		$('#contentEditor').wysiwyg();
		
		$("#cms-news-from-submit").click(function() {
			var content = $("#contentEditor").html();
			$("#cms-news-content").attr("value", content);
			$("#cms-news-form").ajaxSubmit({
				success : function(data) {
					if("success" === data) {
						$(".cms-left")[2].click();
					}
				}
			});
		});
	});
</script>

	<div class="span12">
		 <form:form class="form-horizontal" id="cms-news-form" commandName="news">
			<fieldset>
				<legend>发布产品</legend>
				
				<div class="control-group">
					<label class="control-label" for="input01">新闻标题</label>
					<div class="controls">
						<form:input path="title" class="input-xxlarge input-block-level" placeholder="请输入新闻标题..." />
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="input01">新闻内容</label>
					<div class="controls">
						<div class="btn-toolbar" data-role="editor-toolbar" data-target="#contentEditor">
							<div class="btn-group">
								<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
									data-original-title="字体"><i class="icon-font"></i><b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a data-edit="fontName Serif"
										style="font-family: 'Serif'">Serif</a></li>
									<li><a data-edit="fontName Sans"
										style="font-family: 'Sans'">Sans</a></li>
									<li><a data-edit="fontName Arial"
										style="font-family: 'Arial'">Arial</a></li>
									<li><a data-edit="fontName Arial Black"
										style="font-family: 'Arial Black'">Arial Black</a></li>
									<li><a data-edit="fontName Courier"
										style="font-family: 'Courier'">Courier</a></li>
									<li><a data-edit="fontName Courier New"
										style="font-family: 'Courier New'">Courier New</a></li>
									<li><a data-edit="fontName Comic Sans MS"
										style="font-family: 'Comic Sans MS'">Comic Sans MS</a></li>
									<li><a data-edit="fontName Helvetica"
										style="font-family: 'Helvetica'">Helvetica</a></li>
									<li><a data-edit="fontName Impact"
										style="font-family: 'Impact'">Impact</a></li>
									<li><a data-edit="fontName Lucida Grande"
										style="font-family: 'Lucida Grande'">Lucida Grande</a></li>
									<li><a data-edit="fontName Lucida Sans"
										style="font-family: 'Lucida Sans'">Lucida Sans</a></li>
									<li><a data-edit="fontName Tahoma"
										style="font-family: 'Tahoma'">Tahoma</a></li>
									<li><a data-edit="fontName Times"
										style="font-family: 'Times'">Times</a></li>
									<li><a data-edit="fontName Times New Roman"
										style="font-family: 'Times New Roman'">Times New Roman</a></li>
									<li><a data-edit="fontName Verdana"
										style="font-family: 'Verdana'">Verdana</a></li>
								</ul>
							</div>
							<div class="btn-group">
								<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
									data-original-title="字体大小"><i class="icon-text-height"></i>&nbsp;<b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
									<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
									<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
								</ul>
							</div>
							<div class="btn-group">
								<a class="btn" data-edit="bold" title=""
									data-original-title="加粗 (Ctrl/Cmd+B)"><i
									class="icon-bold"></i></a> <a class="btn" data-edit="italic"
									title="" data-original-title="斜体 (Ctrl/Cmd+I)"><i
									class="icon-italic"></i></a> <a class="btn"
									data-edit="strikethrough" title=""
									data-original-title="删除线"><i
									class="icon-strikethrough"></i></a> <a class="btn"
									data-edit="underline" title=""
									data-original-title="下划线 (Ctrl/Cmd+U)"><i
									class="icon-underline"></i></a>
							</div>
							<div class="btn-group">
								<a class="btn" data-edit="insertunorderedlist" title=""
									data-original-title="项目符号"><i class="icon-list-ul"></i></a>
								<a class="btn" data-edit="insertorderedlist" title=""
									data-original-title="计数符号"><i class="icon-list-ol"></i></a>
								<a class="btn" data-edit="outdent" title=""
									data-original-title="减少缩进 (Shift+Tab)"><i
									class="icon-indent-left"></i></a> <a class="btn" data-edit="indent"
									title="" data-original-title="缩进 (Tab)"><i
									class="icon-indent-right"></i></a>
							</div>
							<div class="btn-group">
								<a class="btn btn-info" data-edit="justifyleft" title=""
									data-original-title="左对齐 (Ctrl/Cmd+L)"><i
									class="icon-align-left"></i></a> <a class="btn"
									data-edit="justifycenter" title=""
									data-original-title="居中 (Ctrl/Cmd+E)"><i
									class="icon-align-center"></i></a> <a class="btn"
									data-edit="justifyright" title=""
									data-original-title="右对齐 (Ctrl/Cmd+R)"><i
									class="icon-align-right"></i></a> <a class="btn"
									data-edit="justifyfull" title=""
									data-original-title="两端对齐 (Ctrl/Cmd+J)"><i
									class="icon-align-justify"></i></a>
							</div>
							<div class="btn-group">
								<a class="btn dropdown-toggle" data-toggle="dropdown" title=""
									data-original-title="超链接"><i class="icon-link"></i></a>
								
								<a class="btn" data-edit="unlink" title=""
									data-original-title="删除超链接"><i class="icon-cut"></i></a>

							</div>

							<div class="btn-group">
								<a class="btn" title="" id="pictureBtn"
									data-original-title="图片 (or just drag &amp; drop)"><i
									class="icon-picture"></i></a> <input type="file"
									data-role="magic-overlay" data-target="#pictureBtn"
									data-edit="insertImage"
									style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 37px; height: 30px;">
							</div>
							<div class="btn-group">
								<a class="btn" data-edit="undo" title=""
									data-original-title="撤销 (Ctrl/Cmd+Z)"><i
									class="icon-undo"></i></a> <a class="btn" data-edit="redo" title=""
									data-original-title="重复 (Ctrl/Cmd+Y)"><i
									class="icon-repeat"></i></a>
							</div>
							<input type="text" data-edit="inserttext" id="voiceBtn"
								x-webkit-speech="" style="display: none;">
						</div>
						<div id="contentEditor">${news.content }</div>
					</div>
				</div>
				
				<!-- 数据域 -->
					<form:hidden path="content" id="cms-news-content"/>
				<!-- 数据域 -->
				
				<div class="form-actions">
					<a id="cms-news-from-submit" href="#none" class="btn btn-large btn-primary">发布新闻</a>
					<a class="btn" href="#none">取消</a>
				</div>
			</fieldset>
		</form:form>
		

	</div>
