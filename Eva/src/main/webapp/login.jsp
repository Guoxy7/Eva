<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登陆界面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap.css"/>
		<script src="<%=basePath%>/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=basePath%>/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		
		<style type="text/css">
			.borderStyle{background:#fff;width:450px;border-radius:6px;}
			@media screen and (min-width: 900px) {
			.borderStyle{background:#fff;width:720px;border-radius:6px;}
			}
			.alertDialog{overflow: hidden;}
			.alert{padding:1px;}
			.login-content{width:310px;margin:0 auto}
			.login-margin{margin-bottom:25px;}
			.href_link{color:#C0C0C0;text-decoration: none;cursor: pointer;}
			a.href_link:hover{color:#000;text-decoration: none;}
		</style>
		  <script type="text/javascript"> 
			if (window != top) 
				top.location.href = location.href; 
		 </script>
	</head>
	<body style="background:#F4F4F4">
		<!--start container-->
		<div class="container bgChange" style="margin-top: 15vh;">
			<div class="row center-block borderStyle" style="padding-top:65px;padding-bottom:80px;">
				<!--<div class="col-md-8 col-md-offset-2" >-->
				<div class="login-content">
					<div class="row login-margin">
						<img src="<%=basePath%>/img/log.jpg" class="img-responsive"/>
						<!-- <img src="../img/log.jpg" class="img-responsive"/> -->
					</div>
					<form action="employeeAction!login.action" method="post" role="form" class="row">
						<div class="input-group form-group login-margin">
							<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
							<input type="text" name="userName" id="userName" class="form-control" placeholder="输入用户名" />
						</div>
						<div class="input-group form-group login-margin">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-lock"></span>
							</span>
							<input type="password" name="password" id="password" class="form-control" placeholder="输入密码" />
						</div>
						<div class="alertDialog">
							<div id="myAlert" class="alert alert-success">
							   <a href="#" class="close" data-dismiss="alert">&times;</a>
							    <i class="glyphicon glyphicon-exclamation-sign" style="padding:0 10px 0;"></i>${message }
							</div>
						</div>
						<div class="form-group btn-group btn-group-justified">
							<div class="btn-group">
								<!--style="background-color: #CC3300;color:#fff"-->
								<button type="submit" class="btn btn-danger" >登陆</button>
							</div>	
						</div>
					</form>
					<div class="row help-block">———————————其它———————————</div>
					<div class="row"><a href="#" data-toggle="tooltip" data-placement="left" title="找回密码" class="pull-right href_link">忘记密码</a></div>
				</div>
			</div>
		<!--end container-->
		</div>
	</body>
	<script type="text/javascript">
		
		$(function () {
		  $('[data-toggle="tooltip"]').tooltip();
		  var $dialog =  $('.alertDialog');
		  var message = "${message}";
		  if(!message){
			  $dialog.hide();
		  }
		  
		});
	</script>
</html>
