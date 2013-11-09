<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广州竭诚所至贸易有限公司后台管理系统</title>
<script type="text/javascript" src="${ctx }/resources/js/jquery.form.js"></script>

<!-- upload -->
<script type="text/javascript">var ctx = "${ctx}";</script>
<script type="text/javascript" src="${ctx }/resources/js/plugins/easy-upload/editor_config.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/plugins/easy-upload/editor.js"></script>
<link rel="stylesheet" href="${ctx}/resources/js/plugins/easy-upload/themes/default/ueditor.css" />

<link rel="stylesheet" href="${ctx}/resources/js/plugins/bootstrap-wysiwyg/index.css" />
<script type="text/javascript" src="${ctx }/resources/js/plugins/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/plugins/bootstrap-wysiwyg/jquery.hotkeys.js"></script>

<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet"/>

<style>
#describeEditor {
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
		
		$("#cms-add-attribute-div").click(function() { 
			var lang = new Date().getTime();
			$("#cms-attribute-group").append("<br/><div class='controls row'><div class='span3'><input class='input-medium input-block-level cms-attribute-key' lang='" + lang + "' type='text' placeholder='属性名称'></div><div class='span4 cms-attribute-div' lang='" + lang + "'><input class='input-medium input-block-level cms-attribute-value' lang='" + lang + "' type='text' placeholder='属性值'> <a href='#none' lang='" + lang + "' class='btn btn-primary cms-add-attribute' title='添加属性值'><i class='icon-plus icon-white'></i></a><br/></div></div>");
		});
		
		$(document).on("click", ".cms-delete-attribute-value", function() {
			var lang = $(this).attr("lang");
			$("#" + lang).remove();
			$(this).remove();
		});
		
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
		
		$('#describeEditor').wysiwyg();
		
		$("#cms-commodity-from-submit").click(function() {
		
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			createCommodityImagesData();
			createCommodityDescribeData();
			createCommodityAttributeData();
			
			$("#cms-commodity-form").ajaxSubmit({
				success : function(data) {
					loadingBox.close();
					if(data === "success") {
						$(".cms-left")[1].click();
					}
				}
			});
		});

		function createCommodityAttributeData() {
			var result = "";
			$(".cms-attribute-key").each(function(index, key) {
				var lang = key["lang"];
				result = result + key["value"] + ":";
				
				$(".cms-attribute-value[lang='" + lang + "']").each(function(i, value) {
					result = result + value["value"] + ";";
				});
				result = result + "|";
			});
			$("#cms-attributes-data").attr("value", result.substring(0, result.length - 1));
		}
		
		function createCommodityDescribeData() {
			var describe = $("#describeEditor").html();
			$("#cms-describe-data").attr("value", describe);
		}
		
		function createCommodityImagesData() {
			var images = "";
			$(".cms-commodity-image").each(function(index, item) {
				var src = item["src"].substring(item["src"].indexOf("/upload-photo"), item["src"].length);
				images = images + src + ";";
			});
			$("#cms-images-data").attr("value", images);
		}
		
		$(document).on("click",".cms-delete-image", function() {
			var src = $(this).attr("lang");
			$("#cms-delete-image-id").attr("value", src);
			$("#cms-commodity-image-modal").modal('show');
		});
		
		$("#cms-commodity-image-ensure-delete").click(function() {
			$("#cms-commodity-image-modal").modal('hide');
			var src = $("#cms-delete-image-id").val();
			$("img[src='"+ src +"']").remove();
		});
		
	});
	

</script>
</head>
	<body>
	<div class="span12">
		 <form:form class="form-horizontal" id="cms-commodity-form" commandName="commodity">
			<fieldset>
				<legend>修改产品</legend>
				
				<div class="control-group">
					<label class="control-label" for="input01">产品名称</label>
					<div class="controls">
						<form:input path="commodityName" class="input-xxlarge input-block-level" placeholder="请输入产品名称..." />
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="input01">产品价格</label>
					<div class="controls">
						<div class="input-prepend input-append">
							<span class="add-on">￥</span> 
							<form:input path="price" class="span4" style="color: red;" />
							<span class="add-on">RMB</span>
						</div>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="input01">产品所属分类</label>
					<div class="controls">
						<input type="text" readonly="readonly" class="input-medium input-block-level" placeholder="${commodity.channel.name }"/>
					</div>
				</div>

				<div class="control-group" id="cms-attribute-group">
					<label class="control-label" for="input01">产品属性定义</label>
					<c:forEach items="${commodity.attributes }" var="attribute" varStatus="index">
					<div class="controls row">
							<div class="span3">
								<input class="input-medium input-block-level cms-attribute-key" value="${attribute.name }" lang="${index.index }" type="text" placeholder="属性名称"/>
							</div>
							<div class="span4 cms-attribute-div" lang="${index.index }">
								<input class="input-medium input-block-level cms-attribute-value" value="${attribute.values[0].name }" lang="${index.index }" type="text" placeholder="属性值"/>
								<a href="#none" lang="${index.index }" class="btn btn-primary cms-add-attribute" >
									<i class="icon-plus icon-white"></i>
								</a><br/>
								<c:forEach items="${attribute.values }" begin="1" var="value" varStatus="status">
									<input class="input-medium input-block-level cms-attribute-value" value="${value.name }" lang="${index.index }" id="${index.index }${status.index }" type="text" placeholder="属性值"/>
									<a href="#none" lang="${index.index }${status.index }" class="btn btn-danger cms-delete-attribute-value" >
										<i class="icon-trash icon-white"></i>
									</a>
								</c:forEach>
							</div>
						</div><br/>
					</c:forEach>
				</div>

				<div class="control-group">
						<label class="control-label" for="input01"></label>
						<div class="controls">
							<ul class="pager">
							  <li class="previous">
							    <a href="#none" id="cms-add-attribute-div"><i class="icon-plus"></i> 添加属性定义</a>
							  </li>
							</ul>
						</div>
				</div>

			<script type="text/plain" id="editor" style="display: none;"></script>
			<script type="text/javascript">
			    var editors = new UE.ui.Editor();
			    editors.render('editor');
			</script>

			<div class="control-group">
					<label class="control-label" for="input01">产品图片</label>
					<div class="controls">
						<div class="product_image">
									<div class="edui-editor-toolbarboxinner edui-default">
											<div id="edui2" class="edui-toolbar edui-default"
												onselectstart="return false;"
												onmousedown="return $EDITORUI[&quot;edui2&quot;]._onMouseDown(event, this);"
												style="-webkit-user-select: none;">
												<div id="edui9" class="edui-box edui-button edui-for-insertimage edui-default">
													<div id="edui9_state"
														onmousedown="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseDown(event, this);"
														onmouseup="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseUp(event, this);"
														onmouseover="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseOver(event, this);"
														onmouseout="$EDITORUI[&quot;edui9&quot;].Stateful_onMouseOut(event, this);"
														class="edui-default">
														<div class="edui-button-wrap edui-default">
															<div id="edui9_body" unselectable="on" title="图片"
																class="edui-button-body edui-default"
																onmousedown="return false;"
																onclick="return $EDITORUI[&quot;edui9&quot;]._onClick();">
																<a href="#none" class="btn btn-primary"><i class=" icon-arrow-up icon-white"></i> 上传产品图片</a>
																<div class="edui-box edui-label edui-default"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>
					</div>
				</div>
				
				<div class="control-group">
						<label class="control-label" for="input01"></label>
						<div class="controls well">
							<ul id="cms-commodity-images">
								<c:forEach items="${commodity.images }" var="image">
									<a href="#none" class="cms-delete-image" lang="${ctx }${image.path }"><img src="${ctx }${image.path }" style="width: 60px; height: 60px;" class="img-polaroid cms-commodity-image"/></a>
								</c:forEach>
							</ul>
						</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="input01">产品描述</label>
					<div class="controls">
						<div class="btn-toolbar" data-role="editor-toolbar" data-target="#describeEditor">
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
						<div id="describeEditor">${commodity.described }</div>
					</div>
				</div>
				
				<!-- 数据域 -->
					<input type="hidden" id='currentCtx' value="${ctx }" /> 
					<input type="hidden" name="images" id="cms-images-data" value="" />
					<input type="hidden" name="describe" id="cms-describe-data" value="${commodity.described }"/>
					<input type="hidden" name="attributes" id="cms-attributes-data" value=""/>
					<input type="hidden" name="channelId" value="${commodity.channel.id }"/>
					<input type="hidden" name="id" value="${commodity.id}"/>
				<!-- 数据域 -->
				
				<!-- 隐藏层 -->
					<input type="hidden" id="cms-delete-image-id" value=""/>
					
					
					<div id="cms-commodity-image-modal" lang="" class="modal hide fade in">
						<div class="modal-header">
							<a class="close" data-dismiss="modal">×</a>
							<h4>删除产品图片</h4>
						</div>
						<div class="modal-body">
							<p>
								确定删除此产品图片吗？
							</p>
						</div>
						<div class="modal-footer">
							<a href="#none" class="btn btn-small" data-dismiss="modal">取消</a>
							<a href="#none" id="cms-commodity-image-ensure-delete" class="btn btn-danger"><i class="icon-trash icon-white"></i> 删除</a>
						</div>
					</div>
				
				<!-- 隐藏层 -->
				
				<div class="form-actions">
					<a id="cms-commodity-from-submit" href="#none" class="btn btn-large btn-primary">修改产品</a>
					<a class="btn" href="#none">取消</a>
				</div>
			</fieldset>
		</form:form>
		

	</div>

	</body>
	</html>