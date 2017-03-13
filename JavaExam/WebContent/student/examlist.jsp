<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>考试信息</title>
<%
	if (session.getAttribute("studentVo") == null) {
		response.sendRedirect("/JavaExam/login.jsp");
		return;
	}
%>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
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
<script type="text/javascript">
	/* 	$(function() {
	 var Studentclass = "${sessionScope.studentVo.studentClass}";
	 var url = "${pageContext.request.contextPath}/student/searchSomePaper";
	 $.post(url, {studentClass : Studentclass}, function() {
	
	 });
	 }); 
	
	 $(function(){
	 window.onload=function(){
	 if (location.href.indexOf("?xyz=")<0){
	 location.href=location.href+"?xyz="+Math.random();
	 }
	 }
	 }); */
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
							href="${pageContext.request.contextPath}/student/examlist.jsp#"><i
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
								href="${pageContext.request.contextPath}/student/student.jsp"
								title="返回首页"><i class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span></li>

						<li><a
							href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10"></div>
				<h2>在线考试</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>考试信息</strong></li>
				</ol>

				<div class="col-lg-2"></div>
			</div>


			<div class="row">
				<div class="col-lg-12">
					<div class="wrapper wrapper-content animated swing">
						<ul class="notes">
							<c:forEach items="${listPVO}" var="p">
								<li>
									<div>
										<h5>考试科目：</h5>
										<h5 id="paperDeclareRule">"${p.paperDeclareRule}"</h5>
										<h5>考试开始日期：</h5>
										<h5 id="beginDate">"${p.paperBeginDate}"</h5>
										<h5>考试开始时间：</h5>
										<h5 id="paperBeginTime">"${p.paperBak2}"</h5>

										<!-- 第一种情况、当前日期小于考试开始日期
											  第二种情况、当前日期等于考试开始日期,当前时间小于考试开始时间
										 -->
										<c:if test="${p.currentDate eq p.paperBeginDate}">

											<c:if test="${p.currentTime lt p.paperBak2}">
												<h5>
													考试还未开始,请认真备考！ <i class="fa fa-ban fa-3x"></i>
												</h5>
											</c:if>
										</c:if>

										<c:if test="${p.currentDate lt p.paperBeginDate}">
											<h5>
												考试还未开始,请认真备考！ <i class="fa fa-ban fa-3x"></i>
											</h5>
										</c:if>


										<!-- 
                                            1、满足当前日期等于考试开始日期	
                                            2、满足当前时间大于考试开始时间
                                            3、满足当前时间小于考试开始时间15分钟
                                            4、满足考试还未结束									
										    5、满足该考生的该试卷的答题卡不为空
										    
										        满足1 2 3 4 5显示可以答题
										        满足1 2 3 4 显示迟到
										 -->
										<c:if test="${p.currentDate eq p.paperBeginDate}">

											<c:if test="${p.currentTime gt p.paperBak2}">

												<c:if test="${p.currentTime lt p.endTime}">

													<c:if test="${p.currentTime lt p.deadLine}">

														<c:if test="${p.isExist eq null}">
															<h5>
																<font color="#FF0000">考试正在进行、、、</font>
															</h5>
															<a id="sel"
																onclick="window.open('${pageContext.request.contextPath}/student/selectPaperID?paperID='+'${p.paperID}','go','scrollbars=yes,resizable=yes,width=window.screen.width,height=window.screen.height')"><i
																class="fa fa-hand-o-right fa-3x"></i></a>
														</c:if>

													</c:if>

												</c:if>
											</c:if>
										</c:if>


										<c:if test="${p.currentDate eq p.paperBeginDate}">

											<c:if test="${p.currentTime gt p.paperBak2}">

												<c:if test="${p.currentTime gt p.endTime}">

													<c:if test="${p.currentTime lt p.deadLine}">
														
														<c:if test="${p.isExist eq null}">

															<h5>
																<font color="#FF0000">您已迟到,禁止进入考场！</font>
															</h5>
															<a id="sel"><i class="fa fa-lock fa-3x"></i></a>
														</c:if>
													</c:if>
												</c:if>
											</c:if>
										</c:if>

										<c:if test="${p.currentDate eq p.paperBeginDate}">

											<c:if test="${p.currentTime gt p.paperBak2}">

												<c:if test="${p.currentTime gt p.endTime}">

													<c:if test="${p.currentTime gt p.deadLine}">

														<h5>考试已结束</h5>
														<a><i class="fa fa-check-circle fa-3x"></i></a>
													</c:if>

												</c:if>
											</c:if>
										</c:if>


									<%-- 	<c:if test="${p.currentDate eq p.paperBeginDate}">

											<c:if test="${p.currentTime gt p.paperBak2}">

												<c:if test="${p.currentTime lt p.endTime}">

													<c:if test="${p.currentTime lt p.deadLine}"> --%>

														<c:if test="${p.isExist ne null}">
															<h5>您已完成该试题</h5>
															<a><i class="fa fa-check-circle fa-3x"></i></a>
														</c:if>

								<%-- 					</c:if>

												</c:if>
											</c:if>
										</c:if>
 --%>


										<!-- 如果当前日期大于考试开始日期,提示该内容 -->
										<c:if test="${p.currentDate gt p.paperBeginDate}">
											<h5>
												考试已结束 <a href="#"><i
													class="fa fa-check-circle fa-3x"></i></a>
											</h5>
										</c:if>
									</div>
								</li>
							</c:forEach>

							<li>
								<div>
									<h5>&nbsp;</h5>
									<h5>&nbsp;</h5>
									<h5>&nbsp;&nbsp;程序猿已无力加载更多。。。</h5>
									<h5>
										&nbsp;&nbsp;<a
											href="${pageContext.request.contextPath}/student/examListAll.jsp">点击查看所有考试</a>
									</h5>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="footer">
				<div>
					<strong>Copyright</strong> &copy; 2014
				</div>
			</div>
		</div>
	</div>

	<!-- Mainly scripts -->

	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- jqGrid -->
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="${pageContext.request.contextPath}/js/hplus.js?v=2.2.0"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

</body>

</html>