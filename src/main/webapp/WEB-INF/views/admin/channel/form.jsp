<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script type="text/javascript" src="${ctx }/resources/js/jquery.form.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#cms-channel-create-submit").click(function() {
		
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$("#cms-channel-form").ajaxSubmit({
				async: false,
				success : function() {
					loadingBox.close();
					$("#cms-channel-form").remove();
					$(".cms-left")[0].click();
				}
			});
		});
		
		$("#name").keydown(function(event) {
			if(event.keyCode === 13){
				$("#cms-channel-create-submit").click();
			}
		});
		
		$("#cms-channel-create-cancel").click(function() {
			$(".cms-left")[0].click();
		});
		
		$(document).on('click', ".cms-delete-channel-keyword", function() {
			var id = $(this).attr("lang");
			$("#" + id).remove();
		});
		
	});
</script>
	<div class="span8 ">
		 <form:form id="cms-channel-form" class="form-horizontal" commandName="channel">
			<fieldset>
				<legend>新增分类</legend>
				<div class="control-group">
					<label class="control-label" for="input01">分类名称</label>
					<div class="controls">
						<input type="hidden" name="fatherId" value="${fatherId }"/>
						<form:input path="name" class="input-block-level" placeholder="请输入名称..."/>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="input01">分类关键词</label>
					<div class="controls" id="cms-channel-keyword-area">
						<input type="text" class="input-medium input-block-level" placeholder="请输入分类关键词..." />
						<a href="#none" lang="${index.index }" id="cms-add-channel-keyword" class="btn btn-primary" >
							<i class="icon-plus icon-white"></i>
						</a></br></br>
						
					</div>
				</div>
				
				<div class="form-actions">
					<a type="button" href="#none" id="cms-channel-create-submit" class="btn btn-primary">保存更改</a>
					<a class="btn" href="#none" id="cms-channel-create-cancel">取消</a>
				</div>
			</fieldset>
		</form:form>
		

	</div>
