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
	if (session.getAttribute("teacherVO") == null) {
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
<link
	href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css"
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
								href="${pageContext.request.contextPath}/index.jsp" title="返回首页"><i
									class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span></li>

						<li><a href="${pageContext.request.contextPath}/login.jsp">
								<i class="fa fa-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->





			<!-- -------------------------表的标题----------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10"></div>
				<h2>题库管理</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
					<li><strong>考试设计</strong></li>
				</ol>
				<div class="col-lg-2"></div>
			</div>
			<!-- -------------------------表的标题----------------------------------- -->



			<!-- -------------------------这里是表格动画载入------------------------------ -->
			<div class="wrapper wrapper-content  animated lightSpeedIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>题库管理</h5>
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


			<!-- Mainly scripts -->
			<script
				src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
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
				src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
			<script>
        $(document).ready(function () {
        	//参数设置，若用默认值可以省略以下面代
            toastr.options = {
                "closeButton": false, //是否显示关闭按钮
                "debug": false, //是否使用debug模式
                "positionClass": "toast-top-full-width",//弹出窗的位置
                "showDuration": "300",//显示的动画时间
                "hideDuration": "1000",//消失的动画时间
                "timeOut": "5000", //展现时间
                "extendedTimeOut": "1000",//加长展示时间
                "showEasing": "swing",//显示时的动画缓冲方式
                "hideEasing": "linear",//消失时的动画缓冲方式
                "showMethod": "fadeIn",//显示时的动画方式
                "hideMethod": "fadeOut" //消失时的动画方式
            };

        });
    </script>
			<script
				src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

			<script>
						$(document).ready(function() {
							
							var datas;
								var url = "${pageContext.request.contextPath}/teacher/searchAll";
								$.post(url,function(json) {
								/* alert(json); */
								datas=json;
									$("#table_list_1").jqGrid({
											data : json,
											datatype : "local",
											height : 'auto',
											autowidth : true,
											shrinkToFit : true,
											gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
											loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
											rowNum : 20,
											rowList : [
													10,
													20,
													30 ],
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
													'正确答案' ],
											colModel : [
													{
														name : 'questionID',
														index : 'questionID',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "int",
														search : true
													},
													{
														name : 'questionTypeID',
														index : 'questionTypeID',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionDifficulty',
														index : 'questionDifficulty',
														editable : true,
														width : 60,
														align : "center"
													},
													{
														name : 'questionScore',
														index : 'questionScore',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "float",
														formatter : "number"
													},
													{
														name : 'questionIsAudited',
														index : 'questionIsAudited',
														editable : true,
														width : 60,
														align : "center",
													
													},
													{
														name : 'questionAuthor',
														index : 'questionAuthor',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "varchar"
													},
													{
														name : 'questionAuditor',
														index : 'questionAuditor',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionStem',
														index : 'questionStem',
														editable : true,
														width : 60,
														align : "left",
														sortable : false
													},
													{
														name : 'questionAnswerA',
														index : 'questionAnswerA',
														editable : true,
														width : 60,
														align : "left",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionAnswerB',
														index : 'questionAnswerB',
														editable : true,
														width : 60,
														align : "left",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionAnswerC',
														index : 'questionAnswerC',
														editable : true,
														width : 60,
														align : "left",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionAnswerD',
														index : 'questionAnswerD',
														editable : true,
														width : 60,
														align : "left",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionAnswerE',
														index : 'questionAnswerE',
														editable : true,
														width : 60,
														align : "left",
														sorttype : "varchar",
														formatter : "varchar"
													},
													{
														name : 'questionRightAnswer',
														index : 'questionRightAnswer',
														editable : true,
														width : 60,
														align : "center",
														sorttype : "varchar",
														formatter : "varchar"
													} ],
											pager : "#pager_list_1",
											caption : "  ",
											viewrecords : true,
											add : true,
											edit : true,
											addtext : 'Add',
											edittext : 'Edit',
											hidegrid : false,
											
											ondblClickRow : function(id) {
												var row = $("#table_list_1").jqGrid('getRowData', id);
												var questionID= row["questionID"];
												var questionTypeID=row["questionTypeID"];
												var questionDifficulty=row["questionDifficulty"];
												var questionScore=row["questionScore"];
												var questionIsAudited=row["questionIsAudited"];
												var questionAuthor=row["questionAuthor"];
												var questionAuditor=row["questionAuditor"];
												var questionStem=row["questionStem"];
												var questionAnswerA=row["questionAnswerA"];
												var questionAnswerB=row["questionAnswerB"];
												var questionAnswerC=row["questionAnswerC"];
												var questionAnswerD=row["questionAnswerD"];
												var questionAnswerE=row["questionAnswerE"];
												var questionRightAnswer=row["questionRightAnswer"];
												$('#qNO').attr('value',questionID);
												$('#qtype').attr('value',questionTypeID);
												$('#qdif').attr('value',questionDifficulty);
												$('#qsco').attr('value',questionScore);
												$('#q1').attr('value',questionIsAudited);
												$('#q2').attr('value',questionAuthor);
												$('#q3').attr('value',questionAuditor);
												$('#q4').attr('value',questionStem);
												$('#q5').attr('value',questionAnswerA);
												$('#q6').attr('value',questionAnswerB);
												$('#q7').attr('value',questionAnswerC);
												$('#q8').attr('value',questionAnswerD);
												$('#q9').attr('value',questionAnswerE);
												$('#q10').attr('value',questionRightAnswer);
												$('#go').click();
											}
										});
									// Add selection
									$("#table_list_1").setSelection(4,true);

									// Setup buttons
									$("#table_list_1").jqGrid('navGrid','#pager_list_1',
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
									$(window).bind('resize',function() {
											var width = $('.jqGrid_wrapper').width();
											$('#table_list_1').setGridWidth(width);
									});
							});
								
								
								$('#update').on('click',function(){
									var param=$('#form3').serialize();
									var id=$('#qNO').val();
									var type=$('#qtype').val();
									var dif=$('#qdif').val();
									var score=$('#qsco').val();
									var isA=$('#q1').val();
									var ato=$('#q2').val();
									var adito=$('#q3').val();
									var stem=$('#q4').val();
									var A=$('#q5').val();
									var B=$('#q6').val();
									var C=$('#q7').val();
									var D=$('#q8').val();
									var E=$('#q9').val();
									var rightA=$('#q10').val();
									var url="${pageContext.request.contextPath}/teacher/upadteQuestion";
									$.post(url,param,function(data){
									toastr.success("修改成功！！！");
									$(datas).each(function(i){
										if(this.questionID==id){
											this.questionTypeID=type;
											this.questionDifficulty=dif;
											this.questionScore=score;
											this.questionIsAudited=isA;
											this.questionAuthor=ato;
											this.questionAuditor=adito;
											this.questionStem=stem;
											this.questionAnswerA=A;
											this.questionAnswerB=B;
											this.questionAnswerC=C;
											this.questionAnswerD=D;
											this.questionAnswerE=E;
											this.questionRightAnswer=rightA;
											$('#table_list_1').jqGrid('GridUnload');
											$("#table_list_1").jqGrid({
												data : datas,
												datatype : "local",
												height : 'auto',
												autowidth : true,
												shrinkToFit : true,
												gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
												loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
												rowNum : 20,
												rowList : [
														10,
														20,
														30 ],
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
														'正确答案' ],
												colModel : [
														{
															name : 'questionID',
															index : 'questionID',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "int",
															search : true
														},
														{
															name : 'questionTypeID',
															index : 'questionTypeID',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionDifficulty',
															index : 'questionDifficulty',
															editable : true,
															width : 60,
															align : "center"
														},
														{
															name : 'questionScore',
															index : 'questionScore',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "float",
															formatter : "number"
														},
														{
															name : 'questionIsAudited',
															index : 'questionIsAudited',
															editable : true,
															width : 60,
															align : "center",
														
														},
														{
															name : 'questionAuthor',
															index : 'questionAuthor',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar"
														},
														{
															name : 'questionAuditor',
															index : 'questionAuditor',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionStem',
															index : 'questionStem',
															editable : true,
															width : 60,
															align : "left",
															sortable : false
														},
														{
															name : 'questionAnswerA',
															index : 'questionAnswerA',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerB',
															index : 'questionAnswerB',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerC',
															index : 'questionAnswerC',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerD',
															index : 'questionAnswerD',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerE',
															index : 'questionAnswerE',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionRightAnswer',
															index : 'questionRightAnswer',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														} ],
												pager : "#pager_list_1",
												caption : "  ",
												viewrecords : true,
												add : true,
												edit : true,
												addtext : 'Add',
												edittext : 'Edit',
												hidegrid : false,	
												ondblClickRow : function(id) {
													var row = $("#table_list_1").jqGrid('getRowData', id);
													var questionID= row["questionID"];
													var questionTypeID=row["questionTypeID"];
													var questionDifficulty=row["questionDifficulty"];
													var questionScore=row["questionScore"];
													var questionIsAudited=row["questionIsAudited"];
													var questionAuthor=row["questionAuthor"];
													var questionAuditor=row["questionAuditor"];
													var questionStem=row["questionStem"];
													var questionAnswerA=row["questionAnswerA"];
													var questionAnswerB=row["questionAnswerB"];
													var questionAnswerC=row["questionAnswerC"];
													var questionAnswerD=row["questionAnswerD"];
													var questionAnswerE=row["questionAnswerE"];
													var questionRightAnswer=row["questionRightAnswer"];
													$('#qNO').attr('value',questionID);
													$('#qtype').attr('value',questionTypeID);
													$('#qdif').attr('value',questionDifficulty);
													$('#qsco').attr('value',questionScore);
													$('#q1').attr('value',questionIsAudited);
													$('#q2').attr('value',questionAuthor);
													$('#q3').attr('value',questionAuditor);
													$('#q4').attr('value',questionStem);
													$('#q5').attr('value',questionAnswerA);
													$('#q6').attr('value',questionAnswerB);
													$('#q7').attr('value',questionAnswerC);
													$('#q8').attr('value',questionAnswerD);
													$('#q9').attr('value',questionAnswerE);
													$('#q10').attr('value',questionRightAnswer);
													$('#go').click();
												}
											});
										// Add selection
										$("#table_list_1").setSelection(4,true);

										// Setup buttons
										$("#table_list_1").jqGrid('navGrid','#pager_list_1',
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
										$(window).bind('resize',function() {
												var width = $('.jqGrid_wrapper').width();
												$('#table_list_1').setGridWidth(width);
										});
										
										
										}		
										});
									});
								});
								
								$('#delete').on('click',function(){
									var id=$('#qNO').val();
									$(datas).each(function(i){
										if(this.questionID==id){
											datas.splice(i,1);
											alert(this.questionID);
											$('#table_list_1').jqGrid('GridUnload');
											$("#table_list_1").jqGrid({
												data : datas,
												datatype : "local",
												height : 'auto',
												autowidth : true,
												shrinkToFit : true,
												gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
												loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
												rowNum : 20,
												rowList : [
														10,
														20,
														30 ],
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
														'正确答案' ],
												colModel : [
														{
															name : 'questionID',
															index : 'questionID',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "int",
															search : true
														},
														{
															name : 'questionTypeID',
															index : 'questionTypeID',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionDifficulty',
															index : 'questionDifficulty',
															editable : true,
															width : 60,
															align : "center"
														},
														{
															name : 'questionScore',
															index : 'questionScore',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "float",
															formatter : "number"
														},
														{
															name : 'questionIsAudited',
															index : 'questionIsAudited',
															editable : true,
															width : 60,
															align : "center",
														
														},
														{
															name : 'questionAuthor',
															index : 'questionAuthor',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar"
														},
														{
															name : 'questionAuditor',
															index : 'questionAuditor',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionStem',
															index : 'questionStem',
															editable : true,
															width : 60,
															align : "left",
															sortable : false
														},
														{
															name : 'questionAnswerA',
															index : 'questionAnswerA',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerB',
															index : 'questionAnswerB',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerC',
															index : 'questionAnswerC',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerD',
															index : 'questionAnswerD',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionAnswerE',
															index : 'questionAnswerE',
															editable : true,
															width : 60,
															align : "left",
															sorttype : "varchar",
															formatter : "varchar"
														},
														{
															name : 'questionRightAnswer',
															index : 'questionRightAnswer',
															editable : true,
															width : 60,
															align : "center",
															sorttype : "varchar",
															formatter : "varchar"
														} ],
												pager : "#pager_list_1",
												caption : "  ",
												viewrecords : true,
												add : true,
												edit : true,
												addtext : 'Add',
												edittext : 'Edit',
												hidegrid : false,	
												ondblClickRow : function(id) {
													var row = $("#table_list_1").jqGrid('getRowData', id);
													var questionID= row["questionID"];
													var questionTypeID=row["questionTypeID"];
													var questionDifficulty=row["questionDifficulty"];
													var questionScore=row["questionScore"];
													var questionIsAudited=row["questionIsAudited"];
													var questionAuthor=row["questionAuthor"];
													var questionAuditor=row["questionAuditor"];
													var questionStem=row["questionStem"];
													var questionAnswerA=row["questionAnswerA"];
													var questionAnswerB=row["questionAnswerB"];
													var questionAnswerC=row["questionAnswerC"];
													var questionAnswerD=row["questionAnswerD"];
													var questionAnswerE=row["questionAnswerE"];
													var questionRightAnswer=row["questionRightAnswer"];
													$('#qNO').attr('value',questionID);
													$('#qtype').attr('value',questionTypeID);
													$('#qdif').attr('value',questionDifficulty);
													$('#qsco').attr('value',questionScore);
													$('#q1').attr('value',questionIsAudited);
													$('#q2').attr('value',questionAuthor);
													$('#q3').attr('value',questionAuditor);
													$('#q4').attr('value',questionStem);
													$('#q5').attr('value',questionAnswerA);
													$('#q6').attr('value',questionAnswerB);
													$('#q7').attr('value',questionAnswerC);
													$('#q8').attr('value',questionAnswerD);
													$('#q9').attr('value',questionAnswerE);
													$('#q10').attr('value',questionRightAnswer);
													$('#go').click();
												}
											});
										// Add selection
										$("#table_list_1").setSelection(4,true);

										// Setup buttons
										$("#table_list_1").jqGrid('navGrid','#pager_list_1',
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
										$(window).bind('resize',function() {
												var width = $('.jqGrid_wrapper').width();
												$('#table_list_1').setGridWidth(width);
										});
										
										}
									});
								});
					});
					</script>
			<!-- ------------------这里是easyui表格控件------------------------ -->
			<a data-toggle="modal" data-target="#myModal23" id="go"></a>
			<div class="modal inmodal" id="myModal23" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog" style="width: 40%">
					<div class="modal-content animated flipInY">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">题目详情</h4>
						</div>
						<div class="modal-body">
							<div class="ibox-content">
								<form action="" id="form3">
									题目编号:<input id="qNO" type="text" name="questionVO.questionID"
										class="form-control"> 题目类型:<input id="qtype"
										type="text" name="questionVO.questionTypeID"
										class="form-control"> 题目难度:<input id="qdif"
										type="text" name="questionVO.questionDifficulty"
										class="form-control"> 题目分值:<input id="qsco"
										type="text" name="questionVO.questionScore"
										class="form-control"> 是否审核:<input id="q1" type="text"
										name="questionVO.questionIsAudited" class="form-control">
									出题人:<input id="q2" type="text" name="questionVO.questionAuthor"
										class="form-control"> 审核人:<input id="q3" type="text"
										name="questionVO.questionAuditor" class="form-control">
									题干:<input id="q4" type="text" name="questionVO.questionStem"
										class="form-control"> 选项A:<input id="q5" type="text"
										name="questionVO.questionAnswerA" class="form-control">
									选项B:<input id="q6" type="text"
										name="questionVO.questionAnswerB" class="form-control">
									选项C:<input id="q7" type="text"
										name="questionVO.questionAnswerC" class="form-control">
									选项D:<input id="q8" type="text"
										name="questionVO.questionAnswerD" class="form-control">
									选项E:<input id="q9" type="text"
										name="questionVO.questionAnswerE" class="form-control">
									正确答案:<input id="q10" type="text"
										name="questionVO.questionRightAnswer" class="form-control">

								</form>
								<!-- 	<table id="tab" style="width:90%;height: auto"  border="1">
									<thead>
										<tr>
											<th>标题</th>
											<th>内容</th>
										</tr>
									</thead>
									<tbody id="context">
									</tbody>
								</table>
								 -->

							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="update" class="btn btn-primary">修改</button>
							<button type="button" id="delete" class="btn btn-primary">删除</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">关闭</button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- -------------------------这里是表格动画载入--------------------------------- -->

	</div>
	</div>



</body>

</html>