<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>练习安排</title>
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
				<h2>考试管理</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>练习安排</strong></li>
				</ol>

				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content  animated bounceIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>练习查询</h5>
							</div>
							<div class="ibox-content">

								<div class="jqGrid_wrapper">
									<table id="table_list_1"></table>
									<div id="pager_list_1"></div>
								</div>
								<p>&nbsp;</p>

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
			var mydata = [ {
				id : "1",
				invdate : "2010-05-24",
				name : "test",
				note : "note",
				tax : "10.00",
				total : "2111.00"
			}, {
				id : "2",
				invdate : "2010-05-25",
				name : "test2",
				note : "note2",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "3",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "4",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "5",
				invdate : "2007-10-05",
				name : "test2",
				note : "note2",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "6",
				invdate : "2007-09-06",
				name : "test3",
				note : "note3",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "7",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "8",
				invdate : "2007-10-03",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "21.00",
				total : "320.00"
			}, {
				id : "9",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "11",
				invdate : "2007-10-01",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "12",
				invdate : "2007-10-02",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "13",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "14",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "15",
				invdate : "2007-10-05",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "16",
				invdate : "2007-09-06",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "17",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "18",
				invdate : "2007-10-03",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "19",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "21",
				invdate : "2007-10-01",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "22",
				invdate : "2007-10-02",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "23",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "24",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "25",
				invdate : "2007-10-05",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "26",
				invdate : "2007-09-06",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			}, {
				id : "27",
				invdate : "2007-10-04",
				name : "test",
				note : "note",
				amount : "200.00",
				tax : "10.00",
				total : "210.00"
			}, {
				id : "28",
				invdate : "2007-10-03",
				name : "test2",
				note : "note2",
				amount : "300.00",
				tax : "20.00",
				total : "320.00"
			}, {
				id : "29",
				invdate : "2007-09-01",
				name : "test3",
				note : "note3",
				amount : "400.00",
				tax : "30.00",
				total : "430.00"
			} ];
			$("#table_list_1").jqGrid({
				data : mydata,
				datatype : "local",
				height : 450,
				autowidth : true,
				shrinkToFit : true,
				rowNum : 10,
				rowList : [ 10, 20, 30 ],
				colNames : [ '序号', '日期', '客户', '金额', '运费', '总额', '备注' ],
				colModel : [ {
					name : 'id',
					index : 'id',
					editable : true,
					width : 60,
					sorttype : "int",
					search : true
				}, {
					name : 'invdate',
					index : 'invdate',
					editable : true,
					width : 90,
					sorttype : "date",
					formatter : "date"
				}, {
					name : 'name',
					index : 'name',
					editable : true,
					width : 100
				}, {
					name : 'amount',
					index : 'amount',
					editable : true,
					width : 80,
					align : "right",
					sorttype : "float",
					formatter : "number"
				}, {
					name : 'tax',
					index : 'tax',
					editable : true,
					width : 80,
					align : "right",
					sorttype : "float"
				}, {
					name : 'total',
					index : 'total',
					editable : true,
					width : 80,
					align : "right",
					sorttype : "float"
				}, {
					name : 'note',
					index : 'note',
					editable : true,
					width : 100,
					sortable : false
				} ],
				pager : "#pager_list_1",
				viewrecords : true,
				caption : "教师管理",
				add : true,
				edit : true,
				addtext : 'Add',
				edittext : 'Edit',
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
				//$('#table_list_2').setGridWidth(width);
			});
		});
	</script>
</body>

</html>