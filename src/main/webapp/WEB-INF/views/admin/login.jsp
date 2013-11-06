<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录</title>
<%@include file="/commons/taglibs.jsp"%>
<%@include file="/commons/no-cache.jsp"%>
<%@include file="/commons/common-header.jsp"%>
<link href="${ctx}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen"></link>
<style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  max-width: 300px;
  padding: 19px 29px 29px;
  margin: 0 auto 20px;
  background-color: #fff;
  border: 1px solid #e5e5e5;
  -webkit-border-radius: 5px;
     -moz-border-radius: 5px;
          border-radius: 5px;
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
     -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
          box-shadow: 0 1px 2px rgba(0,0,0,.05);
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin input[type="text"],
.form-signin input[type="password"] {
  font-size: 16px;
  height: auto;
  margin-bottom: 15px;
  padding: 7px 9px;
}

</style>
<script type="text/javascript">
$(function() {

	$("#username").focus();
	
	$("#login").click(function() {
		$("form").ajaxSubmit({
			success : function(data) {
				if(data === "success") {
					location.href = "${ctx}/admin/index.do";
				} else {
					alert("帐号或密码错误");
				}
			}
		});

	});
	
	$("#password").bind('keydown', function(event) {
		if (event.keyCode === 13) {
			$("#login").click();
		}
	});
});
</script>
</head>
<body>
	
	<div class="container">

    <form:form class="form-signin" commandName="user">
      <h2 class="form-signin-heading">CMS内容管理系统</h2>
      <form:input path="username" class="input-block-level" placeholder="输入用户名..." />
      <form:password path="password" class="input-block-level" placeholder="输入登录密码..." />
      <label class="checkbox">
        <input type="checkbox" value="remember-me"> 记住我
      </label>
      <button class="btn btn-large btn-primary" id="login" type="button">登  录</button>
    </form:form>
  </div>
  <hr/>
</body>
</html>
