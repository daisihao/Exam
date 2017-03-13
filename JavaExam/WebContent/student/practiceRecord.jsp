<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JAVA考试学生后台主页</title>
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
							href="${pageContext.request.contextPath}/admin/testLibraryManage.jsp#"><i
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
								href="${pageContext.request.contextPath}student/student.jsp" title="返回首页"><i
									class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span></li>

						<li><a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->





			<!-- -------------------------表的标题----------------------------------- -->
			<div class="row  border-bottom white-bg dashboard-header">
				<div class="col-lg-10"></div>
				<h2>练习记录</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/student/student.jsp">主页</a></li>
					<li><strong>在线练习</strong></li>
				</ol>
				<div class="col-lg-2"></div>
			</div>
			<!-- -------------------------表的标题----------------------------------- -->


			<!-- -------------------------这里是表格动画载入------------------------------ -->
			<div class="wrapper wrapper-content ">
				<div class="row animated lightSpeedIn">


					<!-- ------------------这里是jqgird表格控件------------------------ -->

					<div class="jqGrid_wrapper">
						<table id="table_list_2"></table>
						<div id="pager_list_2"></div>
					</div>

					<!-- Mainly scripts -->
					<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
					<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

					<!-- jqGrid -->
					<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
					<!-- Custom and plugin javascript -->
					<script src="${pageContext.request.contextPath}/js/hplus.js?v=2.2.0"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script> 
					<script>
						$(document).ready(function() {
								$("#table_list_2").jqGrid({
										url : '',
										datatype : "local",
										height : 450,
										autowidth : true,
										shrinkToFit : true,
										gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
										loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
										rowNum : 10,
										rowList : [ 10,20, 30 ],
										colNames : [
														'题目编号',
														'题目类型',
														'难易度',
														'题目分值',
														'是否审核',
														'出题人',
														'审核人',
														'题干',
														'选项A', 
														'选项B',
														'选项C',
														'选项D',
														'选项E',
														'正确答案'],
										colModel : [{
														name : 'id',
														index : 'id',
														editable : true,
														width : 60,
														sorttype : "int",
														search : true
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'name',
														index : 'name',
														editable : true,
														width : 60
													},
													{
														name : 'amount',
														index : 'amount',
														editable : true,
														width : 60,
														align : "right",
														sorttype : "float",
														formatter : "number"
													},
													{
														name : 'tax',
														index : 'tax',
														editable : true,
														width : 60,
														align : "right",

														sorttype : "float"
													},
													{
														name : 'total',
														index : 'total',
														editable : true,
														width : 60,
														align : "right",
														sorttype : "float"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'invdate',
														index : 'invdate',
														editable : true,
														width : 60,
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'note',
														index : 'note',
														editable : true,
														width : 60,
														sortable : false
													} ],
												pager : "#pager_list_2",
												viewrecords : true,
												caption : "练习记录",
												add : true,
												edit : true,
												addtext : 'Add',
												edittext : 'Edit',
												hidegrid : false});

											// Add selection
											$("#table_list_2").setSelection(4,
													true);

											// Setup buttons
											$("#table_list_2").jqGrid('navGrid','#pager_list_2',
													{
														edit : true,
														add : true,
														del : true,
														search : true
													},
													{
														height : 200,
														reloadAfterSubmit : true
													});

											// Add responsive to jqGrid
											$(window).bind('resize',function() {
													var width = $('.jqGrid_wrapper').width();
																$('#table_list_2').setGridWidth(width);
													});
								});
					</script>
					<!-- ------------------这里是jqgrid表格控件------------------------ -->


				</div>
			</div>
			<!-- -------------------------这里是表格动画载入--------------------------------- -->

		</div>
	</div>
	
</body>
</html>