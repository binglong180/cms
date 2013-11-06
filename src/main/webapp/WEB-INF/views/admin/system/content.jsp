<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<script type="text/javascript">
	$(function() {
		$(".cms-left").click(function() {
			var targetUrl = $(this).attr("lang");
			var id = $(this).attr("id");
			
			$(document).off('click', ".cms-add-attribute", addAttribute);
			
			$("#right").load(targetUrl, function() {
				$(".nav-pills > .active").attr("class", "");
				$("li[lang='"+ id +"']").attr("class", "active");
			});
		});
		
		$(".cms-left")[0].click();
		
		function addAttribute() {
			var lang = $(this).attr("lang");
			var stamp = new Date().getTime();
			var html = "<input class='input-medium input-block-level cms-attribute-value' lang='" + lang + "' id='" + stamp + "' type='text' placeholder='属性值'> <a href='#none' lang='" + stamp + "' class='btn btn-danger cms-delete-attribute-value' title='删除属性值'><i class='icon-trash icon-white'></i></a>";
			$(".cms-attribute-div[lang='"+ lang +"']").append(html);
			
		};
		
		$(document).on("click", ".cms-add-attribute", addAttribute);
		
		
		
	});
</script>
<div class="row-fluid"> 
			<div class="span2 bs-docs-sidebar well">
				<ul class="nav nav-pills nav-stacked">
					<li lang="about" ><a class="cms-left" id="about" lang="${ctx }/admin/security.do" href="#dropdowns"><i class="icon-list-alt"></i> 帐号安全</a></li>
				</ul>
			</div>

			<div id="right" class="span9">
			</div>
		</div>