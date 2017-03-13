<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<title>A+考试系统管理员后台主页</title>

<link
	href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css?v=4.3.0"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css?v=2.2.0"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/fakeLoader.css">
<link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>
<div class="fakeloader"></div>
<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">Java</h1>

			</div>
			<h3>欢迎使用A+考试系统</h3>
			
			<form id="formLogin" class="m-t" role="form" action="" method="post">
				<div class="form-group">
					<input type="text" id="username" class="form-control" name="account"
						placeholder="用户名" required>
				</div>
				<div class="form-group">
					<input type="password" id="password" class="form-control" name="password"
						placeholder="密码" required>
				</div>
				<div class="form-group">
					<select class="form-control m-b" id="account" name="type"
						style="color: #999999">
						<option>管理员</option>
						<option>学生</option>
					</select>
				</div>
				<p class="text-muted text-center">
					<a href="login.jsp#"><small>忘记密码了？</small></a>
				</p>
			</form>
			<button type="button" id="btnsub" class="btn btn-primary block full-width m-b">登
				录</button>
		</div>
	</div>

	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
	<script>
        $(document).ready(function () {
        	//参数设置，若用默认值可以省略以下面代
             toastr.options = {
                "closeButton": false, //是否显示关闭按钮
                "debug": false, //是否使用debug模式
                "progressBar": true,
                "positionClass": "toast-top-full-width",//弹出窗的位置
                "showDuration": "300",//显示的动画时间
                "hideDuration": "1000",//消失的动画时间
                "timeOut": "60000", //展现时间
                "extendedTimeOut": "1000",//加长展示时间
                "showEasing": "swing",//显示时的动画缓冲方式
                "hideEasing": "linear",//消失时的动画缓冲方式
                "showMethod": "fadeIn",//显示时的动画方式
                "hideMethod": "fadeOut" //消失时的动画方式
            };
    </script>
	<script>
		$(function(){
			var abc = window.location.search;
			 if(abc.substring(5)==1){
				 toastr.error("您已在其他地方登陆！");
			}else if(abc.substring(5)==2){
				 toastr.error("用户账户密码错误！");
			}else if(abc.substring(5)==3){
				toastr.error("当前电脑已经有用户登录");
			};
		});
	</script>
	<script src="js/bootstrap.min.js?v=3.4.0"></script>
	<script src="${pageContext.request.contextPath}/js/fakeLoader.min.js"></script>
	<script type="text/javascript">
			$(".fakeloader").fakeLoader({
				timeToHide : 1500,
				bgColor : "#7DB9DE",
				spinner : "spinner" + (Math.floor(Math.random() * 10 + 1))
			});
		$(document).ready(function() {
			
		});
	</script>
	<!-- 登录提交 -->
	<script>
		$(function(){
			$('#btnsub').click(function(){
				var account = $('#account').find("option:selected").text(); 
				if(account=='管理员'){
					$("#formLogin").attr("action","${pageContext.request.contextPath}/teacher/teacherLogin");
					$("#formLogin").submit();
				}else if(account=='学生'){
					$("#formLogin").attr("action","${pageContext.request.contextPath}/student/studentLogin");
					$("#formLogin").submit();
				}
			});
		});
	</script>
</body>

</html>
