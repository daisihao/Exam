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
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">
    <!-- Morris -->
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=2.2.0" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
		<%@include file="/include/left.jsp" %>
        <div id="page-wrapper" class="gray-bg dashbard-1">
              <!-- --------------------------header---------------------------------- -->
		<div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="${pageContext.request.contextPath}/admin/questiontype.jsp#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" target="_blank"
							action="http://www.baidu.com/s">
							<div class="form-group">
								<input type="text" placeholder="请输入您需要查找的内容 …"
									class="form-control" name="wd" id="top-search">
							</div>
						</form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message"><a href="${pageContext.request.contextPath}/index.jsp" title="返回首页"><i class="fa fa-home fa-lg"></i></a>欢迎使用A+考试系统</span>
                        </li>
                        
                        <li>
                            <a href="${pageContext.request.contextPath}/login.jsp">
                                <i class="fa fa-sign-out fa-lg"></i> 退出
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
		<!-- --------------------------header---------------------------------- -->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>题型管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${pageContext.request.contextPath}/index.jsp">主页</a>
                        </li>
                        <li>
                            <strong>考试设计</strong>
                        </li>
                    </ol>
                </div>              
            </div>
         <div class="wrapper wrapper-content animated bounceInRight">
            <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>基本信息</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>                    
                                </div>
                            </div>
                            <div class="ibox-content">

                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>题号</th>
                                            <th>题目类型</th>
                                            <th>科目</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>1120</td>
                                            <td>java</td>
                                            <td>23</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>4654</td>
                                            <td>sql</td>
                                            <td>27</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>4848</td>
                                            <td>web</td>
                                            <td>65</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
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
 
    <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>

</html>