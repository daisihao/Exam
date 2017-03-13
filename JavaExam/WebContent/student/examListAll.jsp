<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<h2>所有考试</h2>
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
								<h5>考试列表</h5>
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
			
			
			<a data-toggle="modal" data-target="#myModal23" id="go"></a>
			<div class="modal inmodal" id="myModal23" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog" style="width: 40%">
					<div class="modal-content animated flipInY">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">试卷详情</h4>
						</div>
						<div class="modal-body">
							<div class="ibox-content">
								<table id="tab" style="margin: 0px auto; width: 100%" border="1">
									<thead>
										<tr>
											<th style="text-align: center;">试卷名称</th>
											<th	style="text-align: center;">考试开始日期</th>
											<th	style="text-align: center;">考试开始时间</th>
											<th	style="text-align: center;">考试总时长</th>
											<th	style="text-align: center;" id="examStu">试卷状态</th>
										</tr>
									</thead>
									<tbody id="context">

									</tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer" id="footer1">						
							
						</div>
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
							var studentID="${sessionScope.studentVo.studentID}";
							var url = "${pageContext.request.contextPath}/student/searchStudentPaper";
								$.post(url,{studentID:studentID},function(json){
									
							
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
														'试卷名称',
														'考试开始日期',											
														'考试开始时间',
														'禁止进场时间',
														'考试结束时间',
														'考试总时长',
														'当前日期',
														'当前时间',
														'试卷状态',
														],
										colModel : [{
														name : 'paperID',
														index : 'paperID',
														editable : true,
														width : 60,
														sorttype : "int",
														align : "center",
														search : true
													},	
										            {
														name : 'paperDeclareRule',
														index : 'paperDeclareRule',
														editable : true,
														width : 60,
														sorttype : "varchar",
														align : "center",
														search : true
													},									
													{
														name : 'paperBeginDate',
														index : 'paperBeginDate',
														align : "center",
														editable : true,
														sorttype : "time",
														formatter : "time",
														width : 100
													},
													{
														name : 'paperBak2',
														index : 'paperBak2',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "time",
														
													},
													{
														name : 'endTime',
														index : 'endTime',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "time",
														
													},
													{
														name : 'deadLine',
														index : 'deadLine',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "time",
														
													},
													{
														name : 'paperTotalTime',
														index : 'paperTotalTime',
														editable : true,
														width : 80,
														align : "center"
													},
													{
														name : 'currentDate',
														index : 'currentDate',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "time",
													},
													{
														name : 'currentTime',
														index : 'currentTime',
														editable : true,
														width : 80,
														align : "center",
														sorttype : "time"
													},
													{
														name : 'exist',
														index : 'exist',
														editable : true,
														align : "center",
														width : 100,
														sorttype : "",
														formatter : "varchar"
													} ],
												pager : "#pager_list_2",
												viewrecords : true,
												caption : " ",
												add : true,
												edit : true,
												addtext : 'Add',
												edittext : 'Edit',
												hidegrid : false,
													
												ondblClickRow : function(id) {
													$('#go').click();
													var row = $("#table_list_2").jqGrid('getRowData', id);
													var paperID= row["paperID"];
													var paperDeclareRule= row["paperDeclareRule"];
													var paperBeginDate=row["paperBeginDate"];
													var paperBak2=row["paperBak2"];
													var endTime=row["endTime"];
													var deadLine=row["deadLine"];
													var currentDate=row["currentDate"];
													var currentTime=row["currentTime"];
													var paperTotalTime=row["paperTotalTime"];
													var exist=row["exist"];				
													var _rows='';
													_rows+='<td style="text-align: center;">'+paperDeclareRule+'</td>';	
													_rows+='<td style="text-align: center;">'+paperBeginDate+'</td>';
													_rows+='<td style="text-align: center;">'+paperBak2+'</td>';
													_rows+='<td style="text-align: center;">'+paperTotalTime+'</td>';
													_rows+='<td style="text-align: center;">'+exist+'</td>';
													$('#context').html(_rows); 

													if(currentDate==paperBeginDate&&currentTime>=endTime&&currentTime<=deadLine){
														$('#footer1').html('<a href="#">您已迟到,不能参加考试</a>');
													}
													if(currentDate==paperBeginDate&&currentTime>=endTime&&currentTime>deadLine){
														$('#footer1').html('<a href="#">考试已结束</a>');
													}
													if(exist=="已完成该考试"){
														$('#footer1').html('<a href="#">您已完成该考试</a>');
													}
													if(currentDate==paperBeginDate&&currentTime<=endTime&&exist=="未参加该考试"){
														$('#footer1').html("<a id=\"sel\" onclick=\"window.open('${pageContext.request.contextPath}/student/selectPaperID?paperID='+'"+paperID+"','go','scrollbars=yes,resizable=yes,width=window.screen.width,height=window.screen.height')\">点击参加考试</a>");
													}
													if(currentDate>paperBeginDate){
														$('#footer1').html('<a href="#">考试已结束</a>');
													}			
													if(currentDate<paperBeginDate){
														$('#footer1').html('<a href="#">考试还未开始</a>');
													}

													/* if(exist=="未参加该考试"){
														$('#footer1').html('<button type="button" class="btn btn-primary" style="margin-right:20px;" id="sort"></button><a href="www.baidu.com">参加考试</a>');
													}else{
														$('#footer1').html('<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>');
													} */
												}
								
								});

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