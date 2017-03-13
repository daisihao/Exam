<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>普通练习</title>
<% 
	if(session.getAttribute("studentVo")==null){
		response.sendRedirect("/JavaExam/login.jsp");
		return;
	}
%>
<link
	href="${pageContext.request.contextPath}/css/plugins/jQueryUI/jquery-ui-1.10.4.custom.min.css"
	rel="stylesheet">
<!-- Data Tables -->
<link
	href="${pageContext.request.contextPath}/css/plugins/jqgrid/ui.jqgrid.css"
	rel="stylesheet">
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui/jquery.min.js"></script>
<script type="text/javascript">
	/* $(function(){
		$('#show').on('click',function(){
			$('#ans').css('display','inline');
		});
		$('#hide').on('click',function(){
			$('#ans').css('display','none');
		});
	}) */
</script>
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
							href="${pageContext.request.contextPath}/student/normalPractice.jsp#"><i
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
								href="${pageContext.request.contextPath}/index.jsp" title="返回首页"><i
									class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span></li>

						<li><a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10"></div>
				<h2>普通练习</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>在线练习</strong></li>
				</ol>
				<div class="col-lg-2"></div>
			</div>

			<div class="wrapper wrapper-content  animated rollIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>参加练习</h5>
							</div>
							<div class="ibox-content">
								<!-- <div class="col-md-3">
									<div class="form-group">
										<label class="col-sm-4 control-label" style="margin-top:8px;">课程：</label>
										<div class="col-sm-6" style="padding:0px;">
											<select class="form-control" name="">
												<option value="0">---请选择---</option>
												<option value="1">core java</option>
												<option value="2">jsp</option>
												<option value="3">oracle</option>
												<option value="4">mybatis</option>
												<option value="5">struts2</option>
												<option value="6">hibernate</option>
												<option value="7">spring</option>
												<option value="8">jdbc</option>
												<option value="9">xml</option>
												<option value="10">css</option>
												<option value="11">html</option>
												<option value="12">android</option>
												<option value="13">servlet</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="col-sm-5 control-label" style="margin-top:8px;">题目类型：</label>
										<div class="col-sm-6" style="padding:0px;">
											<select class="form-control" name="">
												<option value="0">---请选择---</option>
												<option value="1">单选题</option>
												<option value="2">多选题</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="col-sm-5 control-label" style="margin-top:8px;">难易度：</label>
										<div class="col-sm-6" style="padding:0px;">
											<select class="form-control" name="">
												<option value="0">---请选择---</option>
												<option>低</option>
												<option>中</option>
												<option>高</option>
											</select>
										</div>
									</div>
								</div>
								<div>
									<button class="btn btn-success dim btn-midum-dim">
										<strong>搜题</strong>
									</button>
								</div>
								<div style="clear:both">
									<label class="col-sm-4" style="margin-top:8px;font-size:16px;">题干：
									</label><br/><br/>
									<ol style="font-size:16px;">
										<li>选项一</li>
										<li>选项二</li>
										<li>选项三</li>
										<li>选项四</li>
									</ol>
								</div><br/> -->
								<div>
									<button class="btn btn-primary dim btn-midum-dim" id="hide">
										<strong>下一题</strong>
									</button>
									<button class="btn btn-primary dim btn-midum-dim" id="show">
										<strong>查看答案</strong>
									</button>
									<div style="font-size:14px;display:block" id="true">您的答案：
										<span>A</span>
									</div>
									<div style="font-size:14px;display:inline" id="ans">正确答案：
										<span style="color:red">AB</span>
									</div>
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

</body>

</html>