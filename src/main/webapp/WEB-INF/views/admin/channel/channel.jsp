<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>白狐贸易有限公司后台管理系统</title>
<style>
body {
	padding-top: 60px;
}
</style>
<script type="text/javascript">
	$(function() {
		
		$(document).on('click', '#create-channel', function() {
			var targetUrl = $(this).attr("lang");
			$("#right").load(targetUrl);
		});
		
		$(".cms-channel-delete").click(function() {
			var id = $(this).attr("lang");
			$('#cms-delete-modal').modal('show');
			$('#cms-delete-modal').attr("lang", id);
			
		});
		
		$(".cms-channel-edit").click(function() {
			var id = $(this).attr("lang");
			$("#right").load("${ctx}/admin/channel-edit.do?id=" + id);
		});
		
		$("#cms-ensure-delete-channel").click(function() {
			var id = $('#cms-delete-modal').attr("lang");
			$.ajax({
				url : "${ctx}/admin/channel-delete.do",
				type : "post",
				dataType : "html",
				data : {
					"id" : id
				},
				success : function(data) {
					if(data === "success") {
						$('#cms-delete-modal').modal('hide');
						$("#cms-channel-row-".concat(id)).hide("slow");
					} 
				}
			});
		});
		
		
		$(".cms-create-children").click(function() {
			var url = $(this).attr("lang");
			$("#right").load(url);
		});
		
		
	});
</script>
</head>
<body>
		<div class="span8 well" style="width:960px">
		<form class="form-search">
		<a class="btn btn-success" id="create-channel" lang="${ctx }/admin/channel-create.do" href="javascript:void(0);"><i class="icon-plus icon-white"></i> 添加栏目</a>&nbsp;&nbsp;
		</form>
		<table class="table table-bordered" >
				<thead draggable="false" >
					<tr >
						<th width="8%"></th>
						<th width="25%">分类名称</th>
						<th width="25%">二级分类名称</th>
						<th width="40%">操作</th>
					</tr>
					
				</thead> 
				<tbody>
					<c:forEach items="${result }" var="channel">
					
						<tr id="cms-channel-row-${channel.id }" >
							<td><span class="badge badge-success">${channel.id }</span></td>
							<td>${channel.name }</td>
							<td></td>
							<td>
								<a class="btn btn-primary cms-create-children" lang="${ctx }/admin/channel-child-create.do?id=${channel.id }" href="#none"><i class="icon-plus icon-white"></i> 添加子分类</a>&nbsp;&nbsp;
								<a class="btn btn-info cms-channel-edit" lang="${channel.id }" href="javascript:void(0);"><i class="icon-pencil icon-white"></i> 编辑</a>&nbsp;&nbsp;
								<a class="btn btn-danger cms-channel-delete" href="javascript:void(0);" lang="${channel.id }" ><i class="icon-trash icon-white"></i> 删除</a>
							</td>
						</tr>
						
						<c:if test="${channel.children != null }">
							<c:forEach items="${channel.children }" var="child">
								
								<tr id="cms-channel-row-${child.id }" >
									<td><span class="badge badge-info">${child.id }</span></td>
									<td></td>
									<td>${child.name }</td>
									<td>
										<a class="btn btn-info cms-channel-edit" lang="${child.id }" href="javascript:void(0);"><i class="icon-pencil icon-white"></i> 编辑</a>&nbsp;&nbsp;
										<a class="btn btn-danger cms-channel-delete" href="javascript:void(0);" lang="${child.id }" ><i class="icon-trash icon-white"></i> 删除</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						
					</c:forEach>
				</tbody>
			</table>
		</div>


	<div id="cms-delete-modal" lang="" class="modal hide fade in">
            <div class="modal-header">
              <a class="close" data-dismiss="modal">×</a>
              <h3>删除</h3>
            </div>
            <div class="modal-body">
              <h4>确定删除该分类吗？</h4>
              <p>
				删除后将不可恢复
	      	</p>
            </div>
            <div class="modal-footer">
              <a href="#" class="btn" data-dismiss="modal">关闭</a>
              <a href="#" id="cms-ensure-delete-channel" class="btn btn-danger"><i class="icon-trash icon-white"></i> 删除</a>
            </div>
          </div>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-transition.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-modal.js"></script>
          
</body>
</html>
