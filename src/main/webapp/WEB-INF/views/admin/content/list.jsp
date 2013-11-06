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
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$("#right").load(targetUrl, function() {
				loadingBox.close();
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
		
		$(document).on("click", "#cms-add-channel-keyword", function() {
			var stamp = new Date().getTime();
			var html = "<input type='text' id='" + stamp + "' class='input-medium input-block-level' placeholder='请输入分类关键词...' /><a href='#none' id='cms-delete-channel-keyword' lang='"+stamp+"' class='btn btn-danger' > <i class='icon-trash icon-white'></i></a></br></br>";
			$("#cms-channel-keyword-area").append(html);
			
		});
		
		
		
	});
</script>
<div class="row-fluid"> 
			<div class="span2 bs-docs-sidebar well">
				<ul class="nav nav-pills nav-stacked">
					<li lang="channel" ><a class="cms-left" id="channel" lang="${ctx }/admin/channel.do" href="#dropdowns"><i class="icon-list-alt"></i> 栏目管理</a></li>
					<li lang="commodity" ><a href="#dropdowns" class="cms-left" id="commodity" lang="${ctx }/admin/commodity.do"><i class="icon-list-alt"></i> 产品管理</a></li>
					<li lang="news"><a href="#dropdowns" class="cms-left" id="news" lang="${ctx }/admin/news.do" ><i class="icon-list-alt"></i> 新闻管理</a></li>
				</ul>
			</div>

			<div id="right" class="span9">
			</div>
		</div>
