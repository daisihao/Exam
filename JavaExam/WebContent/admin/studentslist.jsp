<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>学生管理</title>
<% 
	if(session.getAttribute("teacherVO")==null){
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
</head>
<body>
	<div id="wrapper">
		<%@include file="/include/left.jsp"%>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<!-- --------------------------header---------------------------------- -->
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="${pageContext.request.contextPath}/admin/studentslist.jsp#"><i
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

						<li><a href="${pageContext.request.contextPath}/login.jsp">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10"></div>
				<h2>用户管理</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>学生管理</strong></li>
				</ol>

				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content  animated lightSpeedIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>学生列表</h5>
							</div>
							<div class="ibox-content">
								<!-- <p>
									<strong>jqGrid</strong>
								</p>
									<h4 class="m-t">高级用法</h4> -->

								<div class="jqGrid_wrapper">
									<table id="table_list_2"></table>
									<div id="pager_list_2"></div>
								</div>
							</div>
						</div>
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
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
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
	<script type="text/javascript">
		$(function() {
			$.post('${pageContext.request.contextPath}/student/AllStudent',function(json){
				$("#table_list_2").jqGrid({
					data : json,
					datatype : "local",
					height : 'auto',
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ '学生ID', '编号', '真实姓名', '账户名', '性别', '年龄', '电话','毕业学校','班级','邮箱','学校' ],
					colModel : [ {
						name : 'studentID',
						index : 'studentID',
						editable : true,
						width : 50,
						sorttype : "int",
						search : true
					}, {
						name : 'studentNo',
						index : 'studentNo',
						editable : true,
						width : 110,
						sorttype : "varchar",
						formatter : "varchar"
					}, {
						name : 'sutdentName',
						index : 'sutdentName',
						editable : true,
						width : 80
					}, {
						name : 'studentAccount',
						index : 'studentAccount',
						editable : true,
						width : 80,
						align : "right",
						sorttype : "varchar",
						formatter : "varchar"
					}, {
						name : 'studentSex',
						index : 'studentSex',
						editable : true,
						width : 50,
						align : "center",
						sorttype : "varchar"
					}, {
						name : 'studentAge',
						index : 'studentAge',
						editable : true,
						width : 50,
						align : "center",
						sorttype : "varchar"
					}, {
						name : 'studentPhone',
						index : 'studentPhone',
						editable : true,
						width : 100,
						sorttype : "varchar"
					}, {
						name : 'studentCollege',
						index : 'studentCollege',
						editable : true,
						width : 80,
						align : "center",
						sorttype : "varchar"
					}, {
						name : 'studentClass',
						index : 'studentClass',
						editable : true,
						width : 80,
						align : "center",
						sorttype : "varchar"
					}, {
						name : 'studentEmail',
						index : 'studentEmail',
						editable : true,
						width : 140,
						sorttype : "varchar"
					}, {
						name : 'studentAddress',
						index : 'studentAddress',
						editable : true,
						width : 140,
						sorttype : "varchar"
					} ],
					pager : "#pager_list_2",
					viewrecords : true,
					caption : "学生管理",
					add : true,
					edit : true,
					addtext : 'Add',
					edittext : 'Edit',
					hidegrid : false
				});

				// Add selection
				$("#table_list_2").setSelection(4, true);

				// Setup buttons
				$("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
					edit : true,
					add : true,
					del : true,
					search : true
				}, {
					height : 200,
					reloadAfterSubmit : true
				});

				// Add responsive to jqGrid
				$(window).bind('resize', function() {
					var width = $('.jqGrid_wrapper').width();
					$('#table_list_1').setGridWidth(width);
					$('#table_list_2').setGridWidth(width);
				});
			});
		});
	</script>
</body>

</html>