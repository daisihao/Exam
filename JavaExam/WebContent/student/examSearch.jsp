<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>成绩查询</title>
<% 
	if(session.getAttribute("studentVo")==null){
		response.sendRedirect("login.jsp");
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
	<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
<style type="text/css">
#tab {
	text-align: center;
}

#tab thead tr th {
	text-align: center;
}
</style>
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
							href="${pageContext.request.contextPath}/student/examSearch.jsp#"><i
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

						<li><a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10"></div>
				<h2>成绩查询</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>在线考试</strong></li>
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
							</div>
						</div>
					</div>
				</div>
			</div>
			<a data-toggle="modal" data-target="#myModal23" id="go"></a>
			<div class="modal inmodal" id="myModal23" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog" style="width: 40%">
					<div class="modal-content animated flipInY">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">答题卡详情</h4>
						</div>
						<div class="modal-body">
							<div class="ibox-content">
								<table id="tab" style="margin: 0px auto; width: 70%" border="1">
									<thead>
										<tr>
											<th>题号</th>
											<th>你的答案</th>
											<th>参考答案</th>
											<th>正/误</th>
										</tr>
									</thead>
									<tbody id="context">

									</tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" style="margin-right:20px;" id="sort">查看排名</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">关闭</button>
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
	<script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
	<script type="text/javascript">
		var cardID;
		$(function() {
			 toastr.options = {
		                "closeButton": false, //是否显示关闭按钮
		                "debug": false, //是否使用debug模式
		                "positionClass": "toast-top-full-width",//弹出窗的位置
		                "showDuration": "300",//显示的动画时间
		                "hideDuration": "2000",//消失的动画时间
		                "timeOut": "5000", //展现时间
		                "extendedTimeOut": "2000",//加长展示时间
		                "showEasing": "swing",//显示时的动画缓冲方式
		                "hideEasing": "linear",//消失时的动画缓冲方式
		                "showMethod": "fadeIn",//显示时的动画方式
		                "hideMethod": "fadeOut" //消失时的动画方式
		            };
		           
			var studentID=${sessionScope.studentVo.studentID};
			var url = "${pageContext.request.contextPath}/student/searchScore?studentID="+studentID;
			$.post(url, function(json) {
				$("#table_list_1").jqGrid({
					data : json,
					datatype : "local",
					height : 450,
					autowidth : true,
					shrinkToFit : true,
					rowNum : 10,
					rowList : [ 10, 20, 30 ],
					colNames : [ '序号', '考试日期', '阅卷老师', '试卷类型', '分数'],
					colModel : [ {
						name : 'scoreID',
						index : 'scoreID',
						editable : true,
						width : 60,
						sorttype : "int",
						search : true,
						align : "center"
					}, {
						name : 'paperDate',
						index : 'paperDate',
						editable : true,
						width : 100,
						sorttype : "Date",
						formatter : "Date",
						align : "center"
					},{
						name : 'teacherName',
						index : 'teacherName',
						editable : true,
						width : 80,
						align : "center",
					}, {
						name : 'paperType',
						index : 'paperType',
						editable : true,
						width : 100,
						align : "center",
						sorttype : "varchar",
						formatter : "varchar"
					} ,{
						name : 'score',
						index : 'score',
						editable : true,
						align : "center",
						sorttype : "int",
						formatter : "int",
						width : 90
					}],
					pager : "#pager_list_1",
					viewrecords : true,
					//caption : "成绩查询",
					add : true,
					edit : true,
					addtext : '新增',
					edittext : '编辑',
					hidegrid : false,
					ondblClickRow : function(id) {
						var row = $("#table_list_1").jqGrid('getRowData', id);
						cardID= row["scoreID"];
						var url="${pageContext.request.contextPath}/student/searchCard?cardID="+cardID;
						$.post(url,function(data){
							var _row="";
							$.each(data,function(i,v){
								_row+="<tr><td>"+v.cardno+"</td>";
								_row+="<td>"+v.studentAns+"</td>";
								_row+="<td>"+v.trueAns+"</td>";
								_row+="<td>"+v.check+"</td></tr>";
							});
						$('#context').html(_row);
						});
						$('#go').click();
					}
				});
				$('#sort').on('click',function(){
					var url="${pageContext.request.contextPath}/student/scoreRank?cardID="+cardID;
					$.post(url,function(data){
						 toastr.info("已经成功生成Word文档,并已发送至您邮箱！");
						//alert("已经成功生成Word文档,并已发送至您邮箱！");
					});
					//document.getElementById("myModal23").style.display="none";
					//$('#myModal23').hide();
				})
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
		});
	</script>
</body>
</html>