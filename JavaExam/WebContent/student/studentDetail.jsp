<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>JAVA考试系统管理员后台主页</title>
<%-- <% 
	if(session.getAttribute("studentVo")==null){
		response.sendRedirect("/JavaExam/login.jsp");
		return;
	}
%> --%>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/swfobject.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/fullAvatarEditor.js"></script>
</head>
<body>
	<div id="wrapper">
		<%@include file="/include/leftStu.jsp"%>
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
								href="${pageContext.request.contextPath}/student/student.jsp" title="返回首页"><i
									class="fa fa-home fa-lg"></i></a>个人资料</span></li>
						<li><a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}"> <i class="fa faz-sign-out fa-lg"></i>
								退出
						</a></li>
					</ul>

				</nav>
			</div>
			<!-- --------------------------header---------------------------------- -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>个人中心</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">主页</a></li>
						<li><strong>个人资料</strong></li>
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
										个人资料<small></small>
									</h5>
								</div>
								<div class="ibox-content">
									<div class="row">
										<form role="form" id="form2">
											<div class="col-sm-6">
												<div class="form-group">
													<label>学号</label> <input type="text"  name="studentVo.studentNo"
														 value="${studentVo.studentNo}" placeholder="不能修改"
														class="form-control">
												</div>
												<div class="form-group">
													<label>性别</label> <input type="text" name="studentVo.studentSex" value="${studentVo.studentSex}"placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>年龄</label> <input type="text" name="studentVo.studentAge" value="${studentVo.studentAge}" placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>电话</label> <input type="text" name="studentVo.studentPhone" value="${studentVo.studentPhone}" placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>毕业学校</label> <input type="text" name="studentVo.studentCollege" value="${studentVo.studentCollege}" placeholder="请输入"
														class="form-control">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>账号</label> <input type="text" name="studentVo.studentAccount" value="${studentVo.studentAccount}" placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>姓名</label> <input type="text" name="studentVo.sutdentName" value="${studentVo.sutdentName}" placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>邮箱</label> <input type="email" name="studentVo.studentEmail" value="${studentVo.studentEmail}" placeholder="请输入"
														class="form-control">
												</div>
												<div class="form-group">
													<label>地址</label> <input type="text" name="studentVo.studentAddress" value="${studentVo.studentAddress}" placeholder="请输入"
														class="form-control">
												</div>
												
												<div>
													<button id="submit" class="btn btn-success dim btn-midum-dim"
														type="button">
														<strong>保存</strong>
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
			</div>
		</div>
	</div>
		<script type="text/javascript">
		$(function(){
			$('#submit').on('click',function(){
				var params=	$('#form2').serialize();
				var url="${pageContext.request.contextPath}/student/updateStudentDetail"
				$.post(url,params,function(data){
					alert("修改成功！！！");
				});
			});
		});
		
		
            swfobject.addDomLoadEvent(function () {
				//以下两行代码正式环境下请删除
				var swf = new fullAvatarEditor("fullAvatarEditor.swf", "expressInstall.swf", "swfContainer", {
					    id : 'swf',
					 	upload_url : 'Upload.jsp?userid=999&username=looselive',	//上传接口
						method : 'post',	//传递到上传接口中的查询参数的提交方式。更改该值时，请注意更改上传接口中的查询参数的接收方式
						src_upload : 2,		//是否上传原图片的选项，有以下值：0-不上传；1-上传；2-显示复选框由用户选择
						avatar_box_border_width : 0,
						avatar_sizes : '100*100|50*50|32*32',
						avatar_sizes_desc : '100*100像素|50*50像素|32*32像素' 
					}, function (msg) {
						alert("111111111");
						switch(msg.code)
						{
							case 1 : alert("页面成功加载了组件！");break;
							case 2 : 
								alert("已成功加载图片到编辑面板。");
								document.getElementById("upload").style.display = "inline";
								break;
							case 3 :
								if(msg.type == 0)
								{
									alert("摄像头已准备就绪且用户已允许使用。");
								}
								else if(msg.type == 1)
								{
									alert("摄像头已准备就绪但用户未允许使用！");
								}
								else
								{
									alert("摄像头被占用！");
								}
							break;
							case 5 : 
								if(msg.type == 0)
								{
									if(msg.content.sourceUrl)
									{
										alert("原图已成功保存至服务器，url为：\n" + msg.content.sourceUrl+"\n\n" + "头像已成功保存至服务器，url为：\n" + msg.content.avatarUrls.join("\n\n")+"\n\n传递的userid="+msg.content.userid+"&username="+msg.content.username);
									}
									else
									{
										alert("头像已成功保存至服务器，url为：\n" + msg.content.avatarUrls.join("\n\n")+"\n\n传递的userid="+msg.content.userid+"&username="+msg.content.username);
									}
								}
							break;
						}
					}
				);
				document.getElementById("upload").onclick=function(){
					swf.call("upload");
				};
            });
			var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
			document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5f036dd99455cb8adc9de73e2f052f72' type='text/javascript'%3E%3C/script%3E"));
        </script>


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
	<!-- Input Mask-->
	<script
		src="${pageContext.request.contextPath}/js/plugins/jasny/jasny-bootstrap.min.js"></script>

	<!-- fullavatareditor -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/fullavatareditor/scripts/swfobject.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/fullavatareditor/scripts/fullAvatarEditor.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/fullavatareditor/scripts/jQuery.Cookie.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/fullavatareditor/scripts/test.js"></script>



	<!-- Custom and plugin javascript -->

	<!-- Chosen -->
	<script src="js/plugins/chosen/chosen.jquery.js"></script>
</body>

</html>