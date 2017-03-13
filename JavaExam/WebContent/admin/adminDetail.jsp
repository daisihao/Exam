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
	if(session.getAttribute("teacherVO")==null){
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
</head>
<body>
	<div id="wrapper">
		<%@include file="/include/left.jsp"%>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			  <!-- --------------------------header---------------------------------- -->
		<div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="${pageContext.request.contextPath}/admin/adminDetail.jsp#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" target="_blank"
							action="http://www.baidu.com/s">
							<div class="form-group">
								<input type="text" placeholder="请输入您需要查找的内容 …"
									class="form-control" name="wd" id="top-search">
							</div>
						</form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><a href="${pageContext.request.contextPath}/index.jsp" title="返回首页"><i class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span>
                        </li>
                        
                        <li>
                            <a href="${pageContext.request.contextPath}/login.jsp">
                                <i class="fa fa-sign-out fa-lg"></i> 退出
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
		<!-- --------------------------header---------------------------------- -->
		
		
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>个人资料</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><strong>管理员账户</strong></li>
					</ol>
				</div>

			</div>
			<div class="row  border-bottom dashboard-header">


				<div class="wrapper wrapper-content">
					<div class="row animated fadeInRight">
						<div class="col-md-4">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5>个人资料</h5>
								</div>
								<div>
									<div class="ibox-content no-padding border-left-right">
										<img alt="image" class="img-responsive"
											src="${pageContext.request.contextPath}/img/profile_big.jpg">
									</div>
									<div class="ibox-content profile-content">
										<h4>
											<strong>陈琰</strong>
										</h4>
										<p>
											<i class="fa fa-map-marker" style="margin-right: 5px"></i><span>黄冈师范学院蓝桥5班</span>
										</p>
										<h5>关于我</h5>
										<p>
											会点前端技术，div+css啊，jQuery之类的，不是很精；热爱生活，热爱互联网，热爱新技术；有一个小的团队，在不断的寻求新的突破。
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-8">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5>最新动态</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="dropdown-toggle" data-toggle="dropdown"
											href="profile.html#"> <i class="fa fa-wrench"></i>
										</a>
										<ul class="dropdown-menu dropdown-user">
											<li><a href="profile.html#">选项1</a></li>
											<li><a href="profile.html#">选项2</a></li>
										</ul>
										<a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">

									<div>
										<div class="feed-activity-list">

											<div class="feed-element">
												<a href="profile.html#" class="pull-left"> <img
													alt="image" class="img-circle"
													src="${pageContext.request.contextPath}/img/a1.jpg">
												</a>
												<div class="media-body ">
													<small class="pull-right text-navy">5分钟前</small> <strong>谁谁谁</strong>
													完成了 <strong>什么练习</strong>. <br> <small
														class="text-muted">54分钟前 来自 系统消息</small>
													<div class="actions">
														<a class="btn btn-xs btn-white"><i
															class="fa fa-thumbs-up"></i> 赞 </a> <a
															class="btn btn-xs btn-danger"><i class="fa fa-heart"></i>
															收藏</a>
													</div>
												</div>
											</div>
											<div class="feed-element">
												<a href="profile.html#" class="pull-left"> <img
													alt="image" class="img-circle" src="img/profile.jpg">
												</a>
												<div class="media-body ">
													<small class="pull-right">1天前登陆过</small> <strong>什么时候</strong>
													完成了一次考试 <br> <small class="text-muted">今天
														10:20 来自 系统消息</small>
												</div>
											</div>
										</div>
										<button class="btn btn-primary btn-block m">
											<i class="fa fa-arrow-down"></i> 显示更多
										</button>
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