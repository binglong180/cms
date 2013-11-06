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
#companyIntroEditor {
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
		
	});
</script>
	<div class="span12">
		 <form:form id="cms-channel-form" class="form-horizontal" commandName="user">
			<fieldset>
				<legend>帐号安全</legend>
				<div class="control-group">
					<label class="control-label" for="input01">帐号</label>
					<div class="controls">
						<form:input path="username" class="input-block-level" placeholder="请输入用户名..."/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="input01">密码</label>
					<div class="controls">
						<form:password path="password" class="input-block-level" placeholder="请输入密码..."/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="input01">确认密码</label>
					<div class="controls">
						<input type="password" class="input-block-level" placeholder="请再次输入密码..."/>
					</div>
				</div>
				
				<div class="form-actions">
					<a type="button" href="#none" id="" class="btn btn-primary">保存更改</a>
					<a class="btn" href="#none" id="">取消</a>
				</div>
			</fieldset>
		</form:form>
		

	</div>
