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
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="${pageContext.request.contextPath}/admin/setquestion.jsp#"><i class="fa fa-bars"></i> </a>
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
                    <h2>出题管理</h2>
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
         <div class="wrapper wrapper-content animated flipInY">
                <div class="row">
                    
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>所有题目信息</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>                                  
                                </div>
                            </div>
                            <div class="ibox-content">
                                <form method="get" class="form-horizontal">                           

                                        <div class="col-sm-10">
                                           <div class="radio i-checks">
                                               <div class="hr-line-dashed"></div>
                                              <label class="col-sm-3 control-label"><strong>题目类型:</strong></label>                                                             
                                                    <label><input type="radio" value="option1" name="b" style="width:70%"> <i></i>单选题</label>
                                                    <label><input type="radio" value="option1" name="b" style="width:70%"> <i></i>多选题</label>
                                                    <label><input type="radio" value="option3" name="b" style="width:70%"> <i></i>判断题</label>
                                            </div>                                
                                        </div>
                                        <div class="col-sm-10">
                                            <div class="radio i-checks">
                                               <div class="hr-line-dashed"></div>
                                              <label class="col-sm-3 control-label"><strong>题目难易度:</strong></label>                                                             
                                                    <label><input type="radio" value="option1" name="a" style="width:70%"> <i></i>低</label>
                                                    <label><input type="radio" value="option1" name="a" style="width:70%"> <i></i>中</label>
                                                    <label><input type="radio" value="option3" name="a" style="width:70%"> <i></i>高</label>
                                            </div>
                                        </div>
                                       <div class="col-sm-10">
                                                 <div class="hr-line-dashed"></div>
                                                 <label class="col-sm-3 control-label">试题题目:</label>
                                                 <input type="text" class="form-control" style="width:70%"> 
                                       </div>
                                       <div class="col-sm-10">
                                                 <div class="hr-line-dashed"></div>
                                                 <label class="col-sm-3 control-label">选项A:</label><input type="text" class="form-control" style="width:70% ;margin:10px 0px">
                                                 <label class="col-sm-3 control-label">选项B:</label><input type="text" class="form-control" style="width:70% ;margin:10px 0px">
                                                 <label class="col-sm-3 control-label">选项C:</label><input type="text" class="form-control" style="width:70% ;margin:10px 0px">
                                                 <label class="col-sm-3 control-label">选项D:</label><input type="text" class="form-control" style="width:70% ;margin:10px 0px">
                                                 <label class="col-sm-3 control-label">选项E:</label><input type="text" class="form-control" style="width:70% ;margin:10px 0px"> 
                                       </div>
                                       <div class="col-sm-10">
                                            <div class="radio i-checks">
                                               <div class="hr-line-dashed"></div>
                                              <label class="col-sm-3 control-label"><strong>正确答案:</strong></label>                                                             
                                                    <label><input type="checkbox" value="option1" name="c" style="width:70%"> <i></i>A</label>
                                                    <label><input type="checkbox" value="option1" name="c" style="width:70%"> <i></i>B</label>
                                                    <label><input type="checkbox" value="option3" name="c" style="width:70%"> <i></i>C</label>
                                                    <label><input type="checkbox" value="option1" name="c" style="width:70%"> <i></i>D</label>
                                                    <label><input type="checkbox" value="option3" name="c" style="width:70%"> <i></i>E</label>
                                            </div>
                                        </div>                                                                                                
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-2" style="margin:20px 220px">
                                            
                                            <button class="btn btn-success  dim btn-middle-dim" type="submit"><strong>确认提交</strong></button>
                                            <button class="btn btn-primary dim btn-midum-dim" type="reset"><strong>重置</strong></button>
                                            <button class="btn btn-primary dim btn-middle-dim"  type="submit"><strong>取消</strong></button>
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