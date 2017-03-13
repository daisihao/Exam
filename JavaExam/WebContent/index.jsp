<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title>A+考试系统管理员后台主页</title>
<% 
	if(session.getAttribute("teacherVO")==null){
		response.sendRedirect("/JavaExam/login.jsp");
		return;
	}
%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style2.css">
<link
	href="${pageContext.request.contextPath}/css/plugins/fullcalendar/fullcalendar.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/plugins/fullcalendar/fullcalendar.print.css"
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
							href="${pageContext.request.contextPath}/index.jsp#"><i
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
			<div class="row  border-bottom white-bg dashboard-header">
				<div class="col-sm-4">
					<h1><span id='nowtime'></span>,${sessionScope.teacherVO.teacherName}</h1>
				</div>
			</div>

			<div class="wrapper wrapper-content">
				<div class="row animated fadeInRight">
					<div class="row">
						<div class="col-lg-7">
							<div class="wrapper wrapper-content animated bounceInRight"
								style="padding-bottom: 10px; padding-top: 10px;">
								<div class="ibox-content m-b-sm border-bottom">
									<div class="p-xs">
										<div class="pull-left m-r-md">
											<i class="fa fa-globe text-navy mid-icon"></i>
										</div>
										<h2>欢迎来到A+考试管理系统</h2>
										<span>您可以进行管理操作</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="wrapper wrapper-content animated bounceIn"
								style="padding-bottom: 10px; padding-top: 10px;">
								<div id="clock" class="light"
									style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border-left-width: 0px; border-left-style: solid;">
									<div class="display">
										<div class="date"></div>
										<div class="digits"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-5" style="margin-left: 10px;">
							<div class="wrapper wrapper-content animated rotateInUpLeft"
								style="padding-bottom: 10px; padding-top: 10px;">
								<div class="widget lazur-bg p-xl">
									<h2>关于我们</h2>
									<ul class="list-unstyled m-t-md">
										<li><span class="fa fa-envelope m-r-xs"></span> <label>Email:</label>
											daisihao@126.com</li>
										<li><span class="fa fa-home m-r-xs"></span> <label>Address:</label>
											湖北省黄冈师范学院</li>
										<li><span class="fa fa-phone m-r-xs"></span> <label>Contact:</label>
											18510097098</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="wrapper wrapper-content animated bounceIn"
								style="padding-bottom: 10px; padding-top: 10px;">
								<div class="ibox float-e-margins">
									<div class="ibox-title">
										<h5>日历</h5>
									</div>
									<div class="ibox-content">
										<div id="calendar"></div>
									</div>
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
	<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
	<script>
		$(function() {
			var clock = $('#clock');
			//定义数字数组0-9
			var digit_to_name = [ 'zero', 'one', 'two', 'three', 'four',
					'five', 'six', 'seven', 'eight', 'nine' ];
			//定义星期
			var weekday = [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ];

			var digits = {};

			//定义时分秒位置
			var positions = [ 'h1', 'h2', ':', 'm1', 'm2', ':', 's1', 's2' ];

			//构建数字时钟的时分秒

			var digit_holder = clock.find('.digits');
			$.each(positions, function() {
				if (this == ':') {
					digit_holder.append('<div class="dots">');
				} else {
					var pos = $('<div>');
					for (var i = 1; i < 8; i++) {
						pos.append('<span class="d' + i + '">');
					}
					digits[this] = pos;
					digit_holder.append(pos);
				}
			});

			// 让时钟跑起来
			(function update_time() {

				//调用moment.js来格式化时间
				var now = moment().format("HHmmss");

				digits.h1.attr('class', digit_to_name[now[0]]);
				digits.h2.attr('class', digit_to_name[now[1]]);
				digits.m1.attr('class', digit_to_name[now[2]]);
				digits.m2.attr('class', digit_to_name[now[3]]);
				digits.s1.attr('class', digit_to_name[now[4]]);
				digits.s2.attr('class', digit_to_name[now[5]]);

				var date = moment().format("YYYY年MM月DD日");
				var week = weekday[moment().format('d')];
				$(".date").html(date + ' ' + week);

				// 每秒钟运行一次
				setTimeout(update_time, 1000);

			})();
		});
	</script>
	<!-- Full Calendar -->
	<script
		src="${pageContext.request.contextPath}/js/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script>
		$(document).ready(
				function() {
					var date = new Date();
					var d = date.getDate();
					var m = date.getMonth();
					var y = date.getFullYear();

					$('#calendar').fullCalendar(
							{
								header : {
									left : 'prev,next',
									center : 'title',
									right : 'month,agendaWeek,agendaDay'
								},
								editable : true,
								droppable : true, // this allows things to be dropped onto the calendar !!!
								drop : function(date, allDay) { // this function is called when something is dropped

									// retrieve the dropped element's stored Event Object
									var originalEventObject = $(this).data(
											'eventObject');

									// we need to copy it, so that multiple events don't have a reference to the same object
									var copiedEventObject = $.extend({},
											originalEventObject);

									// assign it the date that was reported
									copiedEventObject.start = date;
									copiedEventObject.allDay = allDay;

									// render the event on the calendar
									// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
									$('#calendar').fullCalendar('renderEvent',
											copiedEventObject, true);

									// is the "remove after drop" checkbox checked?
									if ($('#drop-remove').is(':checked')) {
										// if so, remove the element from the "Draggable Events" list
										$(this).remove();
									}

								}
							});
				});
	</script>
	<script>
		$(function(){
			var _date = new Date();
			var _time = _date.getHours();
			var _text = '';
			if (_time >= 6 && _time < 9)
				_text = '早上好';
			else if (_time >= 9 && _time < 11)
				_text = '上午好';
			else if (_time >= 11 && _time < 13)
				_text = '中午好'
			else if (_time >= 13 && _time < 17)
				_text = '下午好';
			else
				_text = '晚上好';
			$('#nowtime').html(_text);
		})
	</script>
</body>

</html>