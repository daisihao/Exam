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
<link
	href="${pageContext.request.contextPath}/css/plugins/jqgrid/ui.jqgrid.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css?v=4.3.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css"
	rel="stylesheet">
 <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
<!-- Morris -->
<link
	href="${pageContext.request.contextPath}/css/plugins/morris/morris-0.4.3.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/css/plugins/datapicker/datepicker3.css"
	rel="stylesheet">
<!-- Gritter -->
<link
	href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css?v=2.2.0"
	rel="stylesheet">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/easyui/themes/metro/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/laydate.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/laydate.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
<script type="text/javascript">
function completeMethod(){
	 var sum_amount=$('#table_list_1').getCol('amount',false,'sum');
	 var sum_tax=$('#table_list_1').getCol('tax',false,'sum');
	 var sum_total=$('#table_list_1').getCol('total',false,'sum');
	 $('#table_list_1').footerData('set',{name:'合计:',amount:sun_amount,tax:sum_tax,total:sum_total});
}
	$(function() {
		var qID = new Array();
		var paperNO = '';
		var jsons;
		var qus;
		/* 	 var paperBeginDate='';
			 var paperBeginTime='';
			 var paperTotalScore='';
			 var teacherID='';
			 var paperTotalTime='';
			 var paperDeclareRule=''; */
		$.post('${pageContext.request.contextPath}/teacher/allMajors',
				function(data) {
					$.each(data, function(i, v) {
						$('#major').append(
								"<option value="+v.majorID+">" + v.majorName
										+ "</option>");
					});
				});
		$('#sub').on('click',function() {
							var params = $('#form1').serialize();
							var url = "${pageContext.request.contextPath}/teacher/createExamPaper";
							$.post(
											url,
											params,
											function(data) {
												jsons = data;
												json = data.result;
												paperNO = data.paperNO;
												$(data.result)
														.each(
																function(i) {
																	qID[i] = this.questionID;
																	$(
																			'#questionNO')
																			.append(
																					'<option value="'+qID[i]+'">'
																							+ qID[i]
																							+ '</option>');
																});
												$("#table_list_1").jqGrid({
																	footerrow:true,
																	gridComplete:completeMethod,
																	data : json,
																	datatype : "local",
																	height : 'auto',
																	autowidth : true,
																	shrinkToFit : true,
																	gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
																	loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
																	rowNum : 30,
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
																		var _rows='';
																		_rows+='<tr><td>题目编号</td><td>'+questionID+'</td></tr>';	
																		_rows+='<tr><td>题目类型</td><td>'+questionTypeID+'</td></tr>';
																		_rows+='<tr><td>题目难度</td><td>'+questionDifficulty+'</td></tr>';
																		_rows+='<tr><td>题目分值</td><td>'+questionScore+'</td></tr>';
																		_rows+='<tr><td>是否审核</td><td>'+questionIsAudited+'</td></tr>';
																		_rows+='<tr><td>出题人</td><td>'+questionAuthor+'</td></tr>';
																		_rows+='<tr><td>审核人</td><td>'+questionAuditor+'</td></tr>';
																		_rows+='<tr><td>题干</td><td>'+questionStem+'</td></tr>';
																		_rows+='<tr><td>选项A</td><td>'+questionAnswerA+'</td></tr>';
																		_rows+='<tr><td>选项B</td><td>'+questionAnswerB+'</td></tr>';
																		_rows+='<tr><td>选项C</td><td>'+questionAnswerC+'</td></tr>';
																		_rows+='<tr><td>选项D</td><td>'+questionAnswerD+'</td></tr>';
																		_rows+='<tr><td>选项E</td><td>'+questionAnswerE+'</td></tr>';
																		_rows+='<tr><td>正确答案</td><td>'+questionRightAnswer+'</td></tr>';	
																		$('#context').html(_rows); 
																		$('#go').click();
																	}
																});
												// Add selection
												$("#table_list_1").setSelection(4, true);
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
																	var width = $(
																			'.jqGrid_wrapper')
																			.width();
																	$(
																			'#table_list_1')
																			.setGridWidth(
																					width);
																});
												//$('#hidd').attr();
											});
						});

		$('#replace').on('click', function() {
			var x=1;
			var source = $('#questionNO').val();
			var tagrt = $('#tagrt').val();
			var sourceScore;
			var tagrtScore;
			var questionTypeID;
			var questionDifficulty;
			var questionScore;
			var questionIsAudited;
			var questionAuthor;
			var questionStem;
			var questionAuditor;
			var questionAnswerA;
			var questionAnswerB;
			var questionAnswerC;
			var questionAnswerD;
			var questionAnswerE;
			var questionRightAnswer;
			
			$(jsons.result).each(function(){
				if(this.questionID==source){
					sourceScore=this.questionScore;
					
				};
			});
			$(qus).each(function(){
				if(this.questionID==tagrt){
					tagrtScore=this.questionScore;
					questionTypeID=this.questionTypeID;
					questionScore=this.questionScore;
					questionAuthor=this.questionAuthor;
					questionIsAudited=this.questionIsAudited;
					questionAuthor=this.questionAuthor;
					questionStem=this.questionStem;
					questionAuditor=this.questionAuditor;
					questionAnswerA=this.questionAnswerA;
					questionAnswerB=this.questionAnswerB;
					questionAnswerC=this.questionAnswerC;
					questionAnswerD=this.questionAnswerD;
					questionAnswerE=this.questionAnswerE;
					questionRightAnswer=this.questionRightAnswer;
					
				}
			})
			
			for(i=0;i<26;i++){
				if(qID[i]==tagrt){
					x++;
				}
			}
			if(x==1){
			if(sourceScore==tagrtScore){
				for (i = 0; i < 26; i++) {
					if (qID[i] == source) {
						qID[i] = tagrt;
						toastr.success("替换成功");
						$(jsons.result).each(function(){
							if(this.questionID==source){
								this.questionID=tagrt;
								this.questionTypeID=questionTypeID;
								this.questionScore=questionScore;
								this.questionAuthor=questionAuthor;
								this.questionIsAudited=questionIsAudited;
								this.questionAuthor=questionAuthor;
								this.questionStem=questionStem;
								this.questionAuditor=questionAuditor;
								this.questionAnswerA=questionAnswerA;
								this.questionAnswerB=questionAnswerB;
								this.questionAnswerC=questionAnswerC;
								this.questionAnswerD=questionAnswerD;
								this.questionAnswerE=questionAnswerE;
								this.questionRightAnswer=questionRightAnswer;
					
							}
						});
						
						
						
					}
				}
			}else{
				toastr.error("题目分值不一样，不能替换！！！");
			}
		}else{
				toastr.error("试卷中已有此题目，请选择其他题目更换！！！");
		}
			
/* 			$(jsons.result).each(function(){
				if(this.questionID==tagrt){
					alert(this.questionStem);
				}
			}) */
			
			//改变下拉列表的值
			$('option').each(function(i){
				if(this.text==source){
					$('option[value="'+source+'"]').remove();
					$('#questionNO').append("<option value="+tagrt+">" + tagrt
							+ "</option>");
				}
			});
			
			//改变表中的值
			$('#table_list_1').jqGrid('GridUnload');
			$("#table_list_1").jqGrid({
				data : jsons.result,
				datatype : "local",
				height : 'auto',
				autowidth : true,
				shrinkToFit : true,
				gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
				loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
				rowNum : 30,
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
					var _rows='';
					_rows+='<tr><td>题目编号</td><td>'+questionID+'</td></tr>';	
					_rows+='<tr><td>题目类型</td><td>'+questionTypeID+'</td></tr>';
					_rows+='<tr><td>题目难度</td><td>'+questionDifficulty+'</td></tr>';
					_rows+='<tr><td>题目分值</td><td>'+questionScore+'</td></tr>';
					_rows+='<tr><td>是否审核</td><td>'+questionIsAudited+'</td></tr>';
					_rows+='<tr><td>出题人</td><td>'+questionAuthor+'</td></tr>';
					_rows+='<tr><td>审核人</td><td>'+questionAuditor+'</td></tr>';
					_rows+='<tr><td>题干</td><td>'+questionStem+'</td></tr>';
					_rows+='<tr><td>选项A</td><td>'+questionAnswerA+'</td></tr>';
					_rows+='<tr><td>选项B</td><td>'+questionAnswerB+'</td></tr>';
					_rows+='<tr><td>选项C</td><td>'+questionAnswerC+'</td></tr>';
					_rows+='<tr><td>选项D</td><td>'+questionAnswerD+'</td></tr>';
					_rows+='<tr><td>选项E</td><td>'+questionAnswerE+'</td></tr>';
					_rows+='<tr><td>正确答案</td><td>'+questionRightAnswer+'</td></tr>';	
					$('#context').html(_rows); 
					$('#go').click();
				}
			});
// Add selection
$("#table_list_1").setSelection(4, true);
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
				var width = $(
						'.jqGrid_wrapper')
						.width();
				$(
						'#table_list_1')
						.setGridWidth(
								width);
			});
			
			
		});
		$('#create').on('click', function() {
			var NO = qID.toString();
			var url = "${pageContext.request.contextPath}/teacher/create2";
			$.post(url, {
				"NO" : NO,
				"paperNO" : jsons.paperNO,
				"BeginDate" : jsons.paperBeginDate,
				"BeginTime" : jsons.paperBeginTime,
				"paperVO.paperTotalScore" : jsons.paperTotalScore,
				"paperVO.teacherID" : jsons.teacherID,
				"paperVO.paperTotalTime" : jsons.paperTotalTime,
				"paperVO.paperDeclareRule" : jsons.paperDeclareRule,
				"paperVO.paperDifficulty" : jsons.paperDifficulty,
				"paperVO.paperType" : json.paperType,
				"paperVO.paperBak1" : jsons.paperBak1,
				"paperVO.getPaperBak2" : jsons.getPaperBak2
			}, function(data2) {
				toastr.success("生成试卷成功！！！");
			});
		});


			var url = "${pageContext.request.contextPath}/teacher/searchAll";
			$.post(url,function(json) {
				qus=json;
			/* alert(json); */
				$("#table_list_2").jqGrid({
						data : json,
						datatype : "local",
						height : 'auto',
						autowidth : true,
						shrinkToFit : true,
						gridview : true,//设置为true将提高5~10倍的显示速度。但不能再使用treeGrid, subGrid, 或afterInsertRow事件
						loadonce : true,//设置为true时，表格只一次读取服务器数据（使用适当datatype），之后，datatype 自动变为local ，所有进一步操作都在客户端完成，pager功能（若存在）将失效。
						rowNum : 20,
						rowList : [
								10,20,
								30,40,
								50,60 ],
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
						pager : "#pager_list_2",
						caption : "  ",
						viewrecords : true,
						add : true,
						edit : true,
						addtext : 'Add',
						edittext : 'Edit',
						hidegrid : false,
						ondblClickRow : function(id) {
							var row = $("#table_list_2").jqGrid('getRowData', id);
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
							var _rows='';
							_rows+='<tr><td>题目编号</td><td>'+questionID+'</td></tr>';	
							_rows+='<tr><td>题目类型</td><td>'+questionTypeID+'</td></tr>';
							_rows+='<tr><td>题目难度</td><td>'+questionDifficulty+'</td></tr>';
							_rows+='<tr><td>题目分值</td><td>'+questionScore+'</td></tr>';
							_rows+='<tr><td>是否审核</td><td>'+questionIsAudited+'</td></tr>';
							_rows+='<tr><td>出题人</td><td>'+questionAuthor+'</td></tr>';
							_rows+='<tr><td>审核人</td><td>'+questionAuditor+'</td></tr>';
							_rows+='<tr><td>题干</td><td>'+questionStem+'</td></tr>';
							_rows+='<tr><td>选项A</td><td>'+questionAnswerA+'</td></tr>';
							_rows+='<tr><td>选项B</td><td>'+questionAnswerB+'</td></tr>';
							_rows+='<tr><td>选项C</td><td>'+questionAnswerC+'</td></tr>';
							_rows+='<tr><td>选项D</td><td>'+questionAnswerD+'</td></tr>';
							_rows+='<tr><td>选项E</td><td>'+questionAnswerE+'</td></tr>';
							_rows+='<tr><td>正确答案</td><td>'+questionRightAnswer+'</td></tr>';	
							$('#context').html(_rows); 
							$('#go').click();
						}
					});
				// Add selection
				$("#table_list_2").setSelection(4,true);

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
				$(window).bind('resize',function() {
						var width = $('.jqGrid_wrapper').width();
						$('#table_list_2').setGridWidth(width);
				});
		});
		
	});
</script>
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
<body>
	<div id="wrapper">
		<%@include file="/include/left.jsp"%>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<%-- <%@include file="/include/header.jsp"%> --%>
			<!-- --------------------------header---------------------------------- -->
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="${pageContext.request.contextPath}/admin/changePwd.jsp#"><i
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
									class="fa fa-home fa-lg"></i></a>欢迎使用JAVA考试后台主题</span></li>
						<li><a href="${pageContext.request.contextPath}/login.jsp">
								<i class="fa faz-sign-out fa-lg"></i> 退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>考试管理</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><strong>考试安排</strong></li>
					</ol>
				</div>
			</div>
			<div class="row  border-bottom dashboard-header">
				<div class="wrapper wrapper-content">
					<div class="row animated fadeInRight">



						<div class="col-lg-12">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5>
										考试安排 <small></small>
									</h5>
								</div>
								<div class="ibox-content">
									<div class="row">
										<form role="form" id="form1">
											<div class="col-sm-6">
												<div class="form-group">
													<label>试卷编号</label> <input type="text"
														placeholder="试卷编号将根据时间自动生成" class="form-control"
														disabled="true" 　readOnly="true">
												</div>
												<div class="form-group">
													<label>考试开始日期</label>
													<div class="form-group" id="data_3">
														<div class="input-group date">
															<span class="input-group-addon"><i
																class="fa fa-calendar"></i></span> <input type="text"
																class="form-control" value="2014-11-11">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label>试卷开始时间</label>
													<div class="input-group date">
														<span class="input-group-addon"><i
															class="fa fa-calendar"></i></span> <input placeholder="请输入日期"
															class="form-control" name="paperVO.paperBeginTime"
															onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
													</div>
												</div>
												<div class="form-group">
													<label>试卷总分</label> <input type="text" disabled="true" name="paperVO.paperTotalScore"
														readOnly="true" placeholder="默认为100分" class="form-control">
												</div>
												<div class="form-group">
													<label>教师ID</label> <input type="text"
														value="${teacherVO.teacherID}" name="paperVO.teacherID"
														placeholder="请输入" class="form-control">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>试卷总时间</label> <input type="text"  name="paperVO.paperTotalScore"
														placeholder="默认为90分钟" class="form-control" disabled="true"
														　readOnly="true">
												</div>
												<div class="form-group">
													<label>考试科目</label> <input type="text" placeholder="请输入"
														name="paperVO.paperDeclareRule" class="form-control">
												</div>
												<div class="form-group">
													<select class="form-control" id="paperDifficulty"
														name="paperVO.paperDifficulty">
														<option value="低">低</option>
														<option value="中">中</option>
														<option value="高">高</option>
													</select>
												</div>
												<!-- <div class="form-group">
												<label>试卷类型</label>												
                                                   <div class="radio i-checks">            
                                                        <label><input type="radio" value="option1" name="a" style="width:70%"> <i></i><strong>机试</strong></label>
                                                        <label><input type="radio" value="option1" name="a" style="width:70%"> <i></i><strong>笔试</strong></label>
                                                    </div>
												</div> -->
												<div class="form-group">
													<label>考生范围</label> <select class="form-control"
														name="paperVO.paperBak1" id="major">
													</select>
												</div>
												<div class="form-group">
													<label>试卷创建时间</label> <input type="text"
														class="form-control" value="试卷创建时间将根据时间自动生成"
														disabled="true" readOnly="true">
												</div>
												<div>
													<button id="sub" class="btn btn-success dim btn-midum-dim"
														type="button" data-toggle="modal" data-target="#myModal3">
														<strong>提交</strong>
													</button>
													<button class="btn btn-primary dim btn-midum-dim"
														type="reset">
														<strong>重置</strong>
													</button>
													<button class="btn btn-primary dim btn-midum-dim"
														type="button">
														<strong>返回</strong>
													</button>
												</div>
											</div>


										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>试题修改</h5>
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
				<button id="create" class="btn btn-success dim btn-midum-dim"
					type="button" data-toggle="modal" data-target="#myModal3">
					<strong>确认生成试卷</strong>
				</button>

				<div class="ibox-content">
					<div class="row">
						<div class="col-sm-6 b-r">
							<div class="form-group">
								<label>选择题目编号</label> <select class="form-control"
									id="questionNO" name="">
								</select>
							</div>

						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>替换成</label> <input type="text" name="paperVO.teacherID"
									id="tagrt" placeholder="请输入" class="form-control">
								<div>
									<button id="replace" class="btn btn-success dim btn-midum-dim"
										type="button" data-toggle="modal" data-target="#myModal3">
										<strong>替换</strong>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>



				<button id="search" class="btn btn-success dim btn-midum-dim"
					type="button" data-toggle="modal" data-target="#myModal3">
					<strong>搜索试题</strong>
				</button>
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox ">
							<div class="ibox-title">
								<h5>试题查询</h5>
							</div>
							<div class="ibox-content">
								<div class="jqGrid_wrapper">
									<table id="table_list_2"></table>
									<div id="pager_list_2"></div>
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
							<h4 class="modal-title">题目详情</h4>
						</div>
						<div class="modal-body">
							<div class="ibox-content">
								<table id="tab" style="width:90% ;height: auto"  border="1">
									<thead>
										<tr>
											<th>标题</th>
											<th>内容</th>
										</tr>
									</thead>
									<tbody id="context">
									</tbody>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">关闭</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 隐藏弹窗 -->
			<!-- 		<div class="modal inmodal" id="myModal3" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content animated flipInY">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">提示</h4>
				</div>
				<div class="modal-body" style="padding-left: 200px;">
					<p><ul class="list-unstyled m-t-md">
						<li>
											成功生成试卷</li>
						</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div> -->
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
	<!-- jQuery Validation plugin javascript-->
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/validate/messages_zh.min.js"></script>
	<!-- Data picker -->
	<script
		src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/jquery.jqGrid.min.js"></script>
	<!-- Input Mask-->
	<script
		src="${pageContext.request.contextPath}/js/plugins/jasny/jasny-bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/jqgrid/i18n/grid.locale-cn.js"></script>

	<!-- Custom and plugin javascript -->

	<!-- Chosen -->
	<script src="js/plugins/chosen/chosen.jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>


	<script>
		$(document).ready(function() {

			$('#data_1 .input-group.date').datepicker({
				todayBtn : "linked",
				keyboardNavigation : false,
				forceParse : false,
				calendarWeeks : true,
				autoclose : true
			});

			$('#data_2 .input-group.date').datepicker({
				startView : 1,
				todayBtn : "linked",
				keyboardNavigation : false,
				forceParse : false,
				autoclose : true
			});

			$('#data_3 .input-group.date').datepicker({
				startView : 2,
				todayBtn : "linked",
				keyboardNavigation : false,
				forceParse : false,
				autoclose : true
			});

			$('#data_4 .input-group.date').datepicker({
				minViewMode : 1,
				keyboardNavigation : false,
				forceParse : false,
				autoclose : true,
				todayHighlight : true
			});

			$('#data_5 .input-daterange').datepicker({
				keyboardNavigation : false,
				forceParse : false,
				autoclose : true
			});

			var elem = document.querySelector('.js-switch');
			var switchery = new Switchery(elem, {
				color : '#1AB394'
			});

			var elem_2 = document.querySelector('.js-switch_2');
			var switchery_2 = new Switchery(elem_2, {
				color : '#ED5565'
			});

			var elem_3 = document.querySelector('.js-switch_3');
			var switchery_3 = new Switchery(elem_3, {
				color : '#1AB394'
			});

			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
		var config = {
			'.chosen-select' : {},
			'.chosen-select-deselect' : {
				allow_single_deselect : true
			},
			'.chosen-select-no-single' : {
				disable_search_threshold : 10
			},
			'.chosen-select-no-results' : {
				no_results_text : 'Oops, nothing found!'
			},
			'.chosen-select-width' : {
				width : "95%"
			}
		}
		for ( var selector in config) {
			$(selector).chosen(config[selector]);
		}

		$("#ionrange_1").ionRangeSlider({
			min : 0,
			max : 5000,
			type : 'double',
			prefix : "&yen;",
			maxPostfix : "+",
			prettify : false,
			hasGrid : true
		});

		$("#ionrange_2").ionRangeSlider({
			min : 0,
			max : 10,
			type : 'single',
			step : 0.1,
			postfix : " 克",
			prettify : false,
			hasGrid : true
		});

		$("#ionrange_3").ionRangeSlider({
			min : -50,
			max : 50,
			from : 0,
			postfix : "°",
			prettify : false,
			hasGrid : true
		});

		$("#ionrange_4").ionRangeSlider(
				{
					values : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月",
							"九月", "十月", "十一月", "十二月" ],
					type : 'single',
					hasGrid : true
				});

		$("#ionrange_5").ionRangeSlider({
			min : 10000,
			max : 100000,
			step : 100,
			postfix : " km",
			from : 55000,
			hideMinMax : true,
			hideFromTo : false
		});

		$(".dial").knob();

		$("#basic_slider").noUiSlider({
			start : 40,
			behaviour : 'tap',
			connect : 'upper',
			range : {
				'min' : 20,
				'max' : 80
			}
		});

		$("#range_slider").noUiSlider({
			start : [ 40, 60 ],
			behaviour : 'drag',
			connect : true,
			range : {
				'min' : 20,
				'max' : 80
			}
		});

		$("#drag-fixed").noUiSlider({
			start : [ 40, 60 ],
			behaviour : 'drag-fixed',
			connect : true,
			range : {
				'min' : 20,
				'max' : 80
			}
		});

		$(function() {

			$('.colorpicker-demo1').colorpicker();

			$('.colorpicker-demo2').colorpicker();

			$('.colorpicker-demo3').colorpicker();

			// Code for demos
			function createColorpickers() {
				// Api demo
				var bodyStyle = $('body')[0].style;
				$('#demo_apidemo').colorpicker({
					color : bodyStyle.backgroundColor
				}).on('changeColor', function(ev) {
					bodyStyle.backgroundColor = ev.color.toHex();
				});

				// Horizontal mode
				$('#demo_forceformat').colorpicker({
					format : 'rgba', // force this format
					horizontal : true
				});

				$('.demo-auto').colorpicker();

				// Disabled / enabled triggers
				$(".disable-button").click(function(e) {
					e.preventDefault();
					$("#demo_endis").colorpicker('disable');
				});

				$(".enable-button").click(function(e) {
					e.preventDefault();
					$("#demo_endis").colorpicker('enable');
				});
			}

			createColorpickers();

			// Create / destroy instances
			$('.demo-destroy').click(function(e) {
				e.preventDefault();
				$('.demo').colorpicker('destroy');
				$(".disable-button, .enable-button").off('click');
			});

			$('.demo-create').click(function(e) {
				e.preventDefault();
				createColorpickers();
			});
		});
	</script>
</body>

</html>