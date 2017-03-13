<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="side-menu">
			<li class="nav-header">

				<div class="dropdown profile-element">
					<span> <img alt="image" class="img-circle"
						src="${pageContext.request.contextPath}/img/profile_small.jpg" />
					</span> <a data-toggle="dropdown" class="dropdown-toggle"
						href="${pageContext.request.contextPath}/index.jsp#"> <span
						class="clear"> <span class="block m-t-xs"> <strong
								class="font-bold">${sessionScope.teacherVO.teacherName}</strong>
						</span> <span class="text-muted text-xs block">超级管理员 <b
								class="caret"></b></span>
					</span>
					</a>
					<ul class="dropdown-menu animated flipInX m-t-xs">
						<li><a href="${pageContext.request.contextPath}/student/TEST.jsp">修改头像</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/adminDetail.jsp">个人资料</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal2">联系我们</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/login.jsp">安全退出</a></li>
					</ul>
				</div>
				<div class="logo-element">A+</div>

			</li>
			<li><a
				href="${pageContext.request.contextPath}/index.jsp"><i
					class="fa fa-th-large"></i> <span class="nav-label">主页</span></a></li>
			<li><a href="${pageContext.request.contextPath}/index.jsp#"><i
					class="fa fa fa-globe"></i> <span class="nav-label">用户管理</span><span
					class="fa arrow fa-lg"></span></a>
				<ul class="nav nav-second-level">
					<li><a
						href="${pageContext.request.contextPath}/admin/teacherslist.jsp#">教师管理</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/studentslist.jsp#">学生管理</a></li>
				</ul></li>
			<li><a href="${pageContext.request.contextPath}/index.jsp#"><i
					class="fa fa-bar-chart-o"></i> <span class="nav-label">考试设计</span><span
					class="fa arrow fa-lg"></span></a>
				<ul class="nav nav-second-level">
					<li><a
						href="${pageContext.request.contextPath}/admin/setquestion.jsp#">出题管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/questiontype.jsp#">题型管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/testLibraryManage.jsp#">题库管理</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/papersManage.jsp#">试卷管理</a></li>
				</ul></li>
			<li><a href=""${pageContext.request.contextPath}/index.jsp#"><i class="fa fa-envelope"></i> <span
					class="nav-label">考试管理</span><span class="fa arrow fa-lg"></span></a>
				<ul class="nav nav-second-level">
					<li><a
						href="${pageContext.request.contextPath}/admin/testManager.jsp#">考试安排</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/scoreManage.jsp#">成绩管理</a>
					</li>
				</ul></li>
			<li><a href="${pageContext.request.contextPath}/index.jsp#"><i
					class="fa fa-edit"></i> <span class="nav-label">管理员账户</span><span
					class="fa arrow fa-lg"></span></a>
				<ul class="nav nav-second-level">
					<li><a
						href="${pageContext.request.contextPath}/admin/adminDetail.jsp#">个人资料</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/admin/changePwd.jsp#">修改密码</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content animated flipInY">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">CONTACT US</h4>
					<small class="font-bold">联系我们</small>
				</div>
				<div class="modal-body" style="padding-left: 200px;">
					<p><ul class="list-unstyled m-t-md">
						<li><span class="fa fa-envelope m-r-xs"></span> <label>Email:</label>
											kimchy123@126.com</li>
										<li><span class="fa fa-home m-r-xs"></span> <label>Address:</label>
											湖北省黄冈师范学院</li>
										<li><span class="fa fa-phone m-r-xs"></span> <label>Contact:</label>
											18062843141</li>
									</ul>
					</p>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
</nav>