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
		$("#cms-publish").click(function() {
			$('#cms-publish-modal').modal('show');
		});
		
		$("#cms-channel-top").click(function() {
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
					
			var id = $(this).val();
			if(id === "") {
				return false;
			}
			
			$("#cms-publish-channel-id").attr("value", id);
			
			$.ajax({
				url : "${ctx}/admin/commodity-publish-channel.do?id=" + id,
				dataType : "json",
				type : "get",
				success : function(data) {
					loadingBox.close();
					if(data.length > 0) {
						var html = "";
						$.each(data, function(index, item) {
							html = html + "<option value='" + item.id + "'>" + item.name + "</option>"
						});
						$("#cms-channel-bottom").append(html);
						$("#cms-channel-bottom").attr("style", "");
						
					} else { 
						$("#cms-channel-bottom").attr("style", "display:none");
						$("#cms-channel-bottom").html("<option value=''>请选择</option>");
					}
					
				}
			});
		});
		
		$("#cms-channel-bottom").click(function() {
			var id = $(this).val();
			$("#cms-publish-channel-id").attr("value", id);
		});
		
		$("#cms-commodity-publish").click(function() {
			
			var id = $("#cms-publish-channel-id").val();
			
			if(id !== "") {
				$('#cms-publish-modal').modal('hide');
				
				var loadingBox = newAlertBox("loadingBox");
				loadingBox.show();
				$("#loadingBox").css("z-index", 20000);
				
				$("#right").load("${ctx}/admin/commodity-publish.do?id=" + id, function() {
					loadingBox.close();
				});
			}
		});
		
		$(".cms-commodity-update").click(function() {
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
		
			var id = $(this).attr("lang");
			$("#right").load("${ctx}/admin/commodity-update.do?id=" + id, function() {
				loadingBox.close();
			});
		});
		
		$(".cms-commodity-remove").click(function() {
			var id = $(this).attr("lang");
			$("#cms-commodity-delete-id").attr("value", id);
			$('#cms-commodity-remove-modal').modal('show');
		});
		
		$("#cms-commodity-ensure-delete").click(function() {
			$('#cms-commodity-remove-modal').modal('hide');
			var id = $("#cms-commodity-delete-id").val();
			
			var loadingBox = newAlertBox("loadingBox");
			loadingBox.show();
			$("#loadingBox").css("z-index", 20000);
			
			$.ajax({
				url : "${ctx}/admin/commodity-remove.do",
				type : "post",
				dataType : "html",
				data : {"id" : id},
				success : function(data) {
					loadingBox.close();
					if("success" === data) {
						$("#cms-channel-row-" + id).hide("slow");
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
	<a class="btn btn-success" id="cms-publish" href="javascript:void(0);">
		<i class="icon-plus icon-white"></i> 发布产品
	</a>
	</form>
	<table class="table table-bordered" >
			<thead draggable="false" >
				<tr >
					<th width="6%"></th>
					<th width="8%">缩略图</th>
					<th width="35%">产品名称</th>
					<th width="20%">产品所属分类</th>
					<th width="10%">价格</th>
					<th width="20%">操作</th>
				</tr>
				
			</thead> 
			<tbody>
				<c:forEach items="${page.result }" var="commodity">
				
					<tr id="cms-channel-row-${commodity.id }" >
						<td><span class="badge badge-success">${commodity.id }</span></td>
						<td>
							<img style="width: 40px; height: 40px;" src="${ctx }${commodity.images[0].path }" class="img-polaroid"/>
						</td>
						<td>
						${commodity.commodityName }
						</td>
						<td>${commodity.channel.name }</td>
						<td style="color: red;">￥${commodity.price }</td>
						<td>
							<a class="btn btn-info cms-commodity-update" lang="${commodity.id }" href="javascript:void(0);"><i class="icon-pencil icon-white"></i> 编辑</a>&nbsp;&nbsp;
							<a class="btn btn-danger cms-commodity-remove" href="javascript:void(0);" lang="${commodity.id }" ><i class="icon-trash icon-white"></i> 删除</a>
						</td>
					</tr>
					
					
					
				</c:forEach>
			</tbody>
		</table>
        
          <jsp:include page="/commons/page.jsp" flush="true" >
  			 <jsp:param name="pageLink" value="${ctx }/admin/commodity.do" ></jsp:param>
  		  </jsp:include>
        
        
	</div>

<div id="cms-publish-modal" lang="" class="modal hide fade in">
	<div class="modal-header">
		<a class="close" data-dismiss="modal">×</a>
		<h4>选择发布产品到哪个分类</h4>
	</div>
	<div class="modal-body">
		<p>
			<select id="cms-channel-top"> 
				<option value="" >请选择</option>
				<c:forEach items="${channels }" var="channel">
					<option value="${channel.id }">${channel.name }</option>
				</c:forEach>
			</select>&nbsp;&nbsp;&nbsp;
			<select id="cms-channel-bottom" style="display: none;"><option>请选择</option></select>
		</p>
	</div>
	<div class="modal-footer">
		<a href="#none" class="btn btn-small " data-dismiss="modal">关闭</a>
		<a href="#none" id="cms-commodity-publish" class="btn btn-primary"><i class="icon-ok icon-white"></i> 去发布</a>
	</div>
</div>

<div id="cms-commodity-remove-modal" lang="" class="modal hide fade in">
	<div class="modal-header">
		<a class="close" data-dismiss="modal">×</a>
		<h4>删除产品</h4>
	</div>
	<div class="modal-body">
		<p>
			确定删除此产品吗？注意此操作是不可逆的
		</p>
	</div>
	<div class="modal-footer">
		<a href="#none" class="btn btn-small " data-dismiss="modal">取消</a>
		<a href="#none" id="cms-commodity-ensure-delete" class="btn btn-danger"><i class="icon-trash icon-white"></i> 删除</a>
	</div>
</div>
<input type="hidden" id="cms-publish-channel-id" value=""/>
<input type="hidden" id="cms-commodity-delete-id" value="" />
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-transition.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/bootstrap/bootstrap-modal.js"></script>
</body>
</html>