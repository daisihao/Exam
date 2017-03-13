<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>JAVA考试系统管理员后台主页</title>
<% 
	if(session.getAttribute("studentVo")==null){
		response.sendRedirect("/JavaExam/login.jsp");
		return;
	}
%>
<link
	href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css?v=4.3.0"
	rel="stylesheet">
<!-- Morris -->
<link
	href="${pageContext.request.contextPath}/css/plugins/morris/morris-0.4.3.min.css"
	rel="stylesheet">
<!-- Gritter -->
<link
	href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css?v=2.2.0"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

</head>
<body>
	<div id="wrapper">
		<%@include file="/include/leftStu.jsp"%>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<!-- --------------------------header---------------------------------- -->
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="${pageContext.request.contextPath}/student/changePwd.jsp#"><i
							class="fa fa-bars"></i> </a>
						<form role="search" class="navbar-form-custom" target="_blank"
							action="http://www.baidu.com/s">
							<div class="form-group">
								<input type="text" placeholder="请输入您需要查找的内容 …"
									class="form-control" name="wd" id="top-search">
							</div>
						</form>
					</div>
					<ul class="nav navbar-top-links navbar-right">
						<li><span class="m-r-sm text-muted welcome-message"><a
								href="${pageContext.request.contextPath}/student/student.jsp" title="返回首页"><i
									class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span></li>

						<li><a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}"> <i class="fa fa-sign-out fa-lg"></i>
								退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>修改密码</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><strong>管理员账户</strong></li>
					</ol>
				</div>

			</div>
			<div class="row  border-bottom dashboard-header">
				<div class="wrapper wrapper-content">
					<div class="row animated fadeInRight">
					

						<div class="col-lg-12">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5>修改密码</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="dropdown-toggle" data-toggle="dropdown"
											href="form_basic.html#"> 
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<form class="form-horizontal m-t" id="signupForm">
										<div class="form-group">
											<label class="col-sm-3 control-label">旧密码：</label>
											<div class="col-sm-8">
												<input id="password" name="password" class="form-control"
													type="password">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">新密码：</label>
											<div class="col-sm-8">
												<input id="password_new" name="password_new" class="form-control"
													type="password">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">重复密码：</label>
											<div class="col-sm-8">
												<input id="confirm_password" name="confirm_password"
													class="form-control" type="password">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-8 col-sm-offset-3">
												<button class="btn btn-success dim btn-midum-dim" type="button" id="changebtn"><strong>提交</strong>
                                                </button>
                                                <button class="btn btn-primary dim btn-midum-dim" type="reset"><strong>重置</strong>
                                                </button>
                                                <button class="btn btn-primary dim btn-midum-dim" type="button" id="returnbtn"><strong>返回</strong>
                                                </button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Mainly scripts -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="${pageContext.request.contextPath}/js/hplus.js?v=2.2.0"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>
	<!-- jQuery Validation plugin javascript-->
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
		 <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
		  <script>
        $(document).ready(function () {
        	//参数设置，若用默认值可以省略以下面代
            toastr.options = {
                "closeButton": false, //是否显示关闭按钮
                "debug": false, //是否使用debug模式
                "positionClass": "toast-top-right",//弹出窗的位置
                "showDuration": "300",//显示的动画时间
                "hideDuration": "2000",//消失的动画时间
                "timeOut": "5000", //展现时间
                "extendedTimeOut": "2000",//加长展示时间
                "showEasing": "swing",//显示时的动画缓冲方式
                "hideEasing": "linear",//消失时的动画缓冲方式
                "showMethod": "fadeIn",//显示时的动画方式
                "hideMethod": "fadeOut" //消失时的动画方式
            };
        });
    </script>
	<script>
		$(function(){
			$('#changebtn').click(function(){
				if($('#password_new').val()==$('#confirm_password').val()){
					var data = $('#signupForm').serialize();
					$.post("${pageContext.request.contextPath}/student/changePwd?"+data+"&account=${sessionScope.studentVo.studentAccount}",function(date){
						if(date.type=='success'){
							toastr.success("修改密码成功");
						}else if(date.type=='error'){
							toastr.error("修改密码失败");
						}
					});
				}else{
					toastr.error("两次输入密码不一致");
				}
			});
		});
	</script>
</body>

</html>