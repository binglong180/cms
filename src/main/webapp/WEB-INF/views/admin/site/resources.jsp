<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script type="text/javascript" src="${ctx }/resources/js/jquery.form.js"></script>
<script type="text/javascript">
	$(function() {
	
		$(".uploadBanner").click(function() {
			var lang = $(this).attr("lang");
			$("#bannerForm" + lang).ajaxSubmit({
				success : function(data) {
					if(data === 'success') {
						$("img").each(function() {
							var src = $(this).attr("src");
							$(this).attr("src", src + "?" + Math.random());
						});
						
					}
				}
			});
		});
	
		$("#uploadLogo").click(function() {
			$("#logoForm").ajaxSubmit({
				success : function(data) {
					if(data === 'success') {
						$("img").each(function() {
							var src = $(this).attr("src");
							$(this).attr("src", src + "?" + Math.random());
						});
						
					}
				}
			});
		});
		
		
	});
</script>
	<div class="span8 ">
			<fieldset>
				<legend>资源管理</legend>
				<div class="control-group">
					<label class="control-label" for="input01">LOGO</label>
					<div class="controls" style="margin-left: 65px;">
						<ul class="thumbnails">						
							<li class="span8">
					          <div class="thumbnail">
					            <img class="img-polaroid" src="${ctx}${logo.path}" alt="">
					            <div class="caption">
					              <p>
					                <input class="span9" type="text" id="logoUploadPath" readonly="true" value=""/>
						      	  </p>
					              <p>
					               <form action="${ctx}/admin/upload-logo.do" method="post" id="logoForm" enctype="multipart/form-data">
						               <a href="#none" class="btn" onClick="$('#logo').click();" >上传LOGO</a>
						               <a href="#none" id="uploadLogo" class="btn btn-primary">保存</a>
						               <input type="file" id="logo" style="display:none;" onChange="$('#logoUploadPath').attr('value', $('#logo').val());" name="logo" />
						           </form>
					              </p>
					            </div>
					          </div>
					        </li>
						</ul>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="input01">首页焦点广告图</label>
						<c:forEach items="${focusPictures}" var="image" varStatus="index">
							<div class="controls" style="margin-left: 65px;">
								<ul class="thumbnails">						
									<li class="span8">
							          <div class="thumbnail">
							            <img class="img-polaroid" src="${ctx}${image.path}" alt="">
							            <div class="caption">
							              <p>
							                <input class="span9" type="text" id="bannerUploadPath${index.index}" readonly="true" value=""/>
								      	  </p>
							              <p>
							               <form action="${ctx}/admin/upload-banner.do" method="post" id="bannerForm${index.index}" enctype="multipart/form-data">
								               <a href="#none" class="btn" onClick="$('#banner${index.index}').click();" >上传首页焦点图</a>
								               <a href="#none" lang="${index.index}" class="btn btn-primary uploadBanner">保存</a>
								               <input type="file" id="banner${index.index}" style="display:none;" onChange="$('#bannerUploadPath${index.index}').attr('value', $('#banner${index.index}').val());" name="banner${index.index + 1}" />
								               <input type="hidden" name="requestName" value="banner${index.index + 1}"/>
								               <input type="hidden" name="fileName" value="banner${index.index + 1}.jpg"/>
								           </form>
							              </p>
							            </div>
							          </div>
							        </li>
								</ul>
							</div>
						</c:forEach>
				</div>
				
			</fieldset>
		

	</div>
