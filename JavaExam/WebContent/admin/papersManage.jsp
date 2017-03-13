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
							href="${pageContext.request.contextPath}/admin/papersManage.jsp#"><i
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

						<li><a href="${pageContext.request.contextPath}/login.jsp"> <i class="fa fa-sign-out fa-lg"></i>
								退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			
			
			
			
			<!-- -------------------------表的标题----------------------------------- -->
			<div class="row  border-bottom white-bg dashboard-header">
				<div class="col-lg-10"></div>
				<h2>试卷管理</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>考试设计</strong></li>
				</ol>
				<div class="col-lg-2"></div>
			</div>
			<!-- -------------------------表的标题----------------------------------- -->
			
			
			
			<!-- -------------------------这里是表格动画载入---------------------------- -->
			<div class="wrapper wrapper-content">
				<div class="row animated rotateInUpRight">
					<div class="ibox ">
							<div class="ibox-title">
								<h5>试卷管理</h5>
							</div>
							<div class="ibox-content">
				
				
					<!-- ------------------这里是easyui表格控件------------------------ -->
			<!-- 		<table id="dg" class="easyui-datagrid" title="试卷管理"
						style="width: 100%; height: auto"
						data-options="singleSelect:false,collapsible:true,striped:true,rownumbers:true,pagination:true,method:'get'">
						<thead>
							<tr>
								<th data-options="field:'pNum',width:130,align:'center'">试卷编号</th>
								<th data-options="field:'pStartDate',width:130,align:'center'">考试日期</th>
								<th data-options="field:'pStartTime',width:130,align:'center'">考试开始时间</th>
								<th data-options="field:'pScore',width:130,align:'center'">考试总分数</th>
								<th data-options="field:'pTime',width:130,align:'center'">考试时长</th>
								<th data-options="field:'pDiff',width:130,align:'center'">试卷难易度</th>
								<th data-options="field:'pPeople',width:130,align:'center'">出题者</th>
								<th data-options="field:'pcreateDate',width:130,align:'center'">试卷生成日期</th>
							</tr>
						</thead>
					</table> -->
					<div class="jqGrid_wrapper">
						<table id="table_list_2"></table>
						<div id="pager_list_2"></div>
					</div>
				</div>
			</div>

					<!-- Mainly scripts -->
					<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
					<script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.4.0"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
				    <!-- Custom and plugin javascript -->
				    <script src="${pageContext.request.contextPath}/js/hplus.js?v=2.2.0"></script>
				    <script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>
					<!-- jqGrid -->
					<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
					<script src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>

					<script>
						$(document).ready(function() {
							var url = "${pageContext.request.contextPath}/teacher/searchAllPaper";
								$.post(url,function(json){
									
							
								$("#table_list_2").jqGrid({
										data : json,
										datatype : "local",
										height : 450,
										autowidth : true,
										shrinkToFit : true,
										gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
										loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
										rowNum : 20,
										rowList : [ 10,20, 30 ],
										colNames : [
														'试卷编号',
														'考试日期',
														'考试开始时间',
														'考试总分数',
														'考试时长',
														'试卷难易度',
														'出题者',
														'试卷生成日期'],
										colModel : [{
														name : 'paperNO',
														index : 'paperNO',
														editable : true,
														width : 60,
														sorttype : "int",
														align : "center",
														search : true
													},
													{
														name : 'paperBeginDate',
														index : 'paperBeginDate',
														editable : true,
														width : 90,
														align : "center",
														sorttype : "date",
														formatter : "date"
													},
													{
														name : 'paperBak2',
														index : 'paperBak2',
														align : "center",
														editable : true,
														sorttype : "time",
														formatter : "time",
														width : 100
													},
													{
														name : 'paperTotalScore',
														index : 'paperTotalScore',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "int",
														
													},
													{
														name : 'paperTotalTime',
														index : 'paperTotalTime',
														editable : true,
														width : 80,
														align : "center"
													},
													{
														name : 'paperDifficulty',
														index : 'paperDifficulty',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "varchar"
													},
													{
														name : 'teacherName',
														index : 'teacherName',
														align : "center",
														editable : true,
														sorttype : "int",
														width : 90
													},
													{
														name : 'paperCreateTime',
														index : 'paperCreateTime',
														editable : true,
														align : "center",
														width : 100,
														sorttype : "date",
														formatter : "date"
													} ],
												pager : "#pager_list_2",
												viewrecords : true,
												caption : "试卷管理",
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
						});
					</script>
					<!-- ------------------这里是easyui表格控件------------------------ -->
					
					
					
				</div>
			</div>
			<!-- -------------------------这里是表格动画载入------------------------------ -->
			
			
			
		</div>
	</div>
					


</body>

</html>