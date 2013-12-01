<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>白狐贸易有限公司后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>

<script type="text/javascript">
	$(function() {
		$("#cms-news-create").click(function() {
		
			$("#right").load("${ctx}/admin/news-create.do");
		});
		
		$(".cms-news-edit").click(function() {
			var id = $(this).attr("lang");
			
			$("#right").load("${ctx}/admin/news-edit.do?id=" + id);
		});
		
		$(".cms-news-remove").click(function() {
			var id = $(this).attr("lang");
			$("#cms-temp-value").attr("value", id);
			$('#cms-news-remove-modal').modal('show');
		});
		
		$("#cms-news-ensure-delete").click(function() {
			$('#cms-news-remove-modal').modal('hide');
			var id = $("#cms-temp-value").val();
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$.ajax({
				url : "${ctx}/admin/news-remove.do",
				data : {
					"id" : id
				},
				type : "post",
				success : function(data) {
					loadingBox.close();
					if("success" === data) {
						var id = $("#cms-temp-value").val();
						$("#cms-news-row-" + id).hide("slow");
					}
				}
			});
		});
		
		$(".cms-page-forward").click(function() {
			var href = $(this).attr("lang");
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$("#right").load(href, function() {
				loadingBox.close();
			});
		});
		
	});
</script>
</head>
<body>
<div class="span8 well" style="width:960px">
	<form class="form-search">
	<a class="btn btn-success" id="cms-news-create" href="javascript:void(0);">
		<i class="icon-plus icon-white"></i> 发布行业新闻
	</a>
	</form>
	<table class="table table-bordered" >
			<thead draggable="false" >
				<tr >
					<th width="6%"></th>
					<th width="15%">新闻标题</th>
					<th width="20%">时间</th>
					<th width="20%">操作</th>
				</tr>
				
			</thead> 
			<tbody>
				<c:forEach items="${page.result }" var="news">
				
					<tr id="cms-news-row-${news.id }" >
						<td><span class="badge badge-success">${news.id }</span></td>
						<td>
						${news.title }
						</td>
						
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${news.time}" /></td>
						<td>
							<a class="btn btn-info cms-news-edit" lang="${news.id }" href="javascript:void(0);"><i class="icon-pencil icon-white"></i> 编辑</a>&nbsp;&nbsp;
							<a class="btn btn-danger cms-news-remove" href="javascript:void(0);" lang="${news.id }" ><i class="icon-trash icon-white"></i> 删除</a>
						</td>
					</tr>
					
				</c:forEach>
			</tbody>
		</table>
        
          <jsp:include page="/commons/adminPage.jsp" flush="true" >
  			 <jsp:param name="pageLink" value="${ctx }/admin/news.do?1=1" ></jsp:param>
  		  </jsp:include>
        
	</div>
	
	<!-- 弹出框 -->
	
	<div id="cms-news-remove-modal" lang="" class="modal hide fade in">
		<div class="modal-header">
			<a class="close" data-dismiss="modal">×</a>
			<h4>删除新闻</h4>
		</div>
		<div class="modal-body">
			<p>
				确定删除此条新闻吗？注意此操作是不可逆的
			</p>
		</div>
		<div class="modal-footer">
			<a href="#none" class="btn btn-small " data-dismiss="modal">取消</a>
			<a href="#none" id="cms-news-ensure-delete" class="btn btn-danger"><i class="icon-trash icon-white"></i> 删除</a>
		</div>
	</div>
	
	<input type="hidden" id="cms-temp-value" />
	<!-- 弹出框 -->
	
	
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-transition.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-modal.js"></script>
</body>
</html>