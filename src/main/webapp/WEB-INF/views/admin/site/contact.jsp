<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script type="text/javascript" src="${ctx }/resources/js/jquery.form.js"></script>
<script type="text/javascript">
	$(function() {
		$("#cms-contactus-submit").click(function() {
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$("#cms-company-contact-form").ajaxSubmit({
				success : function(data) {
					loadingBox.close();
					if(data === "success") {
						alert("修改成功！");
						$(".cms-left")[1].click();
					}
				}
			});
		});
	});
</script>
	<div class="span8 ">
		 <form:form id="cms-company-contact-form" class="form-horizontal" commandName="company">
			<fieldset>
				<legend>联系我们</legend>
				<div class="control-group">
					<label class="control-label" for="input01">企业地址</label>
					<div class="controls">
						<form:input path="companyAddress" class="input-block-level" placeholder="请输入企业名称..."/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="input01">电话</label>
					<div class="controls">
						<form:input path="companyTelephone" class="input-block-level" placeholder="请输入企业联系电话..."/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="input01">传真</label>
					<div class="controls">
						<form:input path="companyFax" class="input-block-level" placeholder="请输入企业传真..."/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="input01">E-mail</label>
					<div class="controls">
						<form:input path="companyEmail" class="input-block-level" placeholder="请输入企业邮箱..."/>
					</div>
				</div>
				<div class="form-actions">
					<a type="button" href="#none" id="cms-contactus-submit" class="btn btn-primary">保存更改</a>
				</div>
			</fieldset>
		</form:form>
		

	</div>
