<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>成绩管理</title>
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
							href="${pageContext.request.contextPath}/admin/scoreManage.jsp#"><i
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
				<h2>成绩管理</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>考试管理</strong></li>
				</ol>
				<div class="col-lg-2"></div>
			</div>

			<div class="wrapper wrapper-content  animated rollIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>成绩查询</h5>
							</div>
							<div class="ibox-content">

								<div class="jqGrid_wrapper">
									<table id="table_list_1"></table>
									<div id="pager_list_1"></div>
								</div>
								<p>&nbsp;</p>

							<div class="form-group">
							<table style="width: 80%;height: auto">
								<tr>
									<!-- <td align="right"><label>班级</label></td>
									<td><select  class="form-control"
									id="major" name=""></select></td> -->
									<td align="right"><label>试卷编号</label></td>
									<td><select  class="form-control"
									id="paperNO" name=""></select></td>
									<td align="center"><button id="search" class="btn btn-success dim btn-midum-dim"
										type="button" data-toggle="modal" data-target="#myModal3">
										<strong>查询</strong>
									</button></td>
								</tr>
							</table>
							</div>
							
									<div class="jqGrid_wrapper">
									<table id="table_list_2"></table>
									<div id="pager_list_2"></div>
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
	<!-- jqGrid -->
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var url = "${pageContext.request.contextPath}/teacher/searchAllScore";
			$.post(url, function(json) {
				$("#table_list_1").jqGrid({
					data : json,
					datatype : "local",
					height : 450,
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ '序号', '学生姓名','试卷类型', '分数', '授课教师', '考试日期' ],
					colModel : [ {
						name : 'scoreID',
						index : 'scoreID',
						editable : true,
						width : 60,
						sorttype : "int",
						search : true,
						align : "center"
					}, {
						name : 'studentName',
						index : 'studentName',
						editable : true,
						width : 100,
						sorttype : "varchar",
						formatter : "varchar",
						align : "center"
					}, {
						name : 'paperType',
						index : 'paperType',
						editable : true,
						width : 100,
						align : "center",
						sorttype : "varchar",
						formatter : "varchar"
					}, {
						name : 'score',
						index : 'score',
						editable : true,
						align : "center",
						width : 90
					}, {
						name : 'teacherName',
						index : 'teacherName',
						editable : true,
						width : 80,
						align : "center",
					}, {
						name : 'paperDate',
						index : 'paperDate',
						editable : true,
						width : 100,
						align : "center",
						sorttype : "date",
						formatter : "date"
					} ],
					pager : "#pager_list_1",
					viewrecords : true,
					//caption : "成绩查询",
					add : true,
					edit : true,
					addtext : '新增',
					edittext : '编辑',
					hidegrid : false
				});

				// Add selection
				$("#table_list_1").setSelection(4, true);

				// Setup buttons
				$("#table_list_1").jqGrid('navGrid', '#pager_list_1', {
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
				});
			});
			
			
			$.post('${pageContext.request.contextPath}/teacher/allMajors',
					function(data) {
						$.each(data, function(i, v) {
							$('#major').append(
									"<option value="+v.majorName+">" + v.majorName
											+ "</option>");
						});
					});
			$.post('${pageContext.request.contextPath}/teacher/searchAllPaper',
					function(data) {
						$.each(data, function(i, v) {
							$('#paperNO').append(
									"<option value="+v.paperNO+">" + v.paperNO
											+ "</option>");
						});
					});
			$('#search').on('click',function(){
				var paperNO=$('#paperNO').val();
				var studentClass=$('#major').val();
				var params={"paperNO":paperNO,"studentClass":studentClass};
				var url="${pageContext.request.contextPath}/teacher/allScoreByClass";
				$.post(url,params,function(data){
					$('#table_list_2').jqGrid('GridUnload');
					$("#table_list_2").jqGrid({
						data : data,
						datatype : "local",
						height : 450,
						autowidth : true,
						shrinkToFit : true,
						rowNum : 10,
						rowList : [ 10, 20, 30 ],
						colNames : [ '考试名称', '学号','姓名', '试卷编号', '分数','授课教师', '考试日期' ,'试卷类型','难度','班级'],
						colModel : [ {
							name : 'paperDeclareRule',
							index : 'paperDeclareRule',
							editable : true,
							width : 60,
							sorttype : "int",
							search : true,
							align : "center"
						}, {
							name : 'studentNO',
							index : 'studentNO',
							editable : true,
							width : 100,
							sorttype : "varchar",
							formatter : "varchar",
							align : "center"
						}, {
							name : 'studentName',
							index : 'studentName',
							editable : true,
							width : 100,
							align : "center",
							sorttype : "varchar",
							formatter : "varchar"
						}, {
							name : 'paperNO',
							index : 'paperNO',
							editable : true,
							align : "center",
							width : 90
						}, {
							name : 'score',
							index : 'score',
							editable : true,
							width : 80,
							align : "center",
						}, {
							name : 'teacherName',
							index : 'teacherName',
							editable : true,
							width : 80,
							align : "center",
						},{
							name : 'paperDate',
							index : 'paperDate',
							editable : true,
							width : 100,
							align : "center",
							sorttype : "date",
							formatter : "date"
						},{
							name : 'paperType',
							index : 'paperType',
							editable : true,
							width : 80,
							align : "center",
						},{
							name : 'paperDifficulty',
							index : 'paperDifficulty',
							editable : true,
							width : 80,
							align : "center",
						},{
							name : 'studentClass',
							index : 'studentClass',
							editable : true,
							width : 80,
							align : "center",
						} ],
						pager : "#pager_list_2",
						viewrecords : true,
						//caption : "成绩查询",
						add : true,
						edit : true,
						addtext : '新增',
						edittext : '编辑',
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
						$('#table_list_2').setGridWidth(width);
					});
				});
			});

	});
	</script>
</body>
</html>