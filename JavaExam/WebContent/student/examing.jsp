<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String sometime=(String)session.getAttribute("clockTime"); %>
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
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">
    <!-- Morris -->
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css?v=2.2.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg dashbard-1" style="margin-left: 0px">
             <!-- --------------------------header---------------------------------- -->
		<div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0 ;margin-left: 0">       
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                           <span>欢迎使用A+考试系统</span>
                        </li>
                        
                        <li>
                            <a href="${pageContext.request.contextPath}/student/studentExit?account=${sessionScope.studentVo.studentAccount}">
                                <i class="fa fa-sign-out fa-lg"></i> 退出
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
		<!-- --------------------------header---------------------------------- -->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h1 style="text-align: center;">${studentVo.sutdentName},欢迎您！</h1>
                    
                </div>              
            </div>
             
             <div class="col-lg-9">        
                 <div class="wrapper wrapper-content animated bounceIn">
                       <div class="ibox">
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="m-b-md">
                                            <h2>${paperName}</h2>
                                        </div>
                                        <dl class="dl-horizontal">
                                            <dt>考试状态：</dt> 
                                            <dd><span class="label label-primary">进行中</span>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8" style="margin-left:10%">
                                        <strong id="qid"></strong><h3 id="question"></h3> 
                                        <div class="radio i-checks" >
                                             <%-- <input  type='radio' value='A' name='i' style='width:70%'> <i></i><strong >A</strong><br>     
                                             <input  type='radio' value='B' name='i' style='width:70%'> <i></i><strong >B</strong><br>             
                                             <input  type='radio' value='C' name='i' style='width:70%'> <i></i><strong >C</strong><br>
                                             <input  type='radio' value='D' name='i' style='width:70%'> <i></i><strong >D</strong --%>> 
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <dl class="dl-horizontal">
                                            <dt>当前考试进度</dt>
                                            <dd>
                                                <div class="progress progress-striped active m-b-sm">
                                                    <div id="bar" style="width: 0%;" class="progress-bar progress-bar-danger"></div>
                                                </div>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="row m-t-sm">
                                    <div class="col-lg-12">
                                        <div class="panel blank-panel">
                                            <div class="panel-heading">                                           
                                                <div class="panel-options">
                                                    <button id="last" class="btn btn-success  dim btn-middle-dim" type="button" style="margin-left: 20%"><strong>上一题</strong></button>
                                                    <button id="next" class="btn btn-primary dim btn-midum-dim" type="button"><strong>下一题</strong></button>                                 
                                                </div>
                                            </div>

                                            

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                 </div>
             </div> 
             
             <div class="col-lg-3">
                    <div class="wrapper wrapper-content project-manager">
                        <h2><strong>考试信息</strong></h2>                    
                        <h3>剩余时间: <span id="clock"></span></h3>
                        <div id="clock1"></div>
                        <div id="clock2"></div>
                        <div class="m-t-md"> 
                        <ul class="tag-list" style="padding: 0">
                            <!-- <li><a href="###"  style="font-size: 15px;background-color:Aqua">1</a></li>-->           
                        </ul>
                         </div>
                    </div>  
                </div>
                <div class="col-lg-3">
                <div class="wrapper wrapper-content project-manager">
                  <div class="m-t-md">
                        <a href="###" id="getscore" class="btn btn-xs btn-primary">提交试卷</a>
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
    <script src="${pageContext.request.contextPath}/js/jquery.countdown.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
     
     <!-- iCheck -->
    <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
        	//参数设置，若用默认值可以省略以下面代
            toastr.options = {
                "closeButton": false, //是否显示关闭按钮
                "debug": false, //是否使用debug模式
                "positionClass": "toast-top-right",//弹出窗的位置
                "showDuration": "300",//显示的动画时间
                "hideDuration": "2000",//消失的动画时间
                "timeOut": "5000", //展现时间
                "extendedTimeOut": "2000",//加长展示时间
                "showEasing": "swing",//显示时的动画缓冲方式
                "hideEasing": "linear",//消失时的动画缓冲方式
                "showMethod": "fadeIn",//显示时的动画方式
                "hideMethod": "fadeOut" //消失时的动画方式
            };
            toastr.info("考试开始,请认真作答");
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
    
  <script type="text/javascript">
    var d;
    var i=1;
    var pre;
    var answer=new Array();
    var score=0;
    var correctanswer=new Array();
     $(function(){
    	 $.ajaxSetup({cache:false});
    	 var date=new Date();
    	 var year=date.getFullYear();
    	 var month=date.getMonth()+1;
    	 var day=date.getDate();
    	 var hours=date.getHours();
    	 var minutes=date.getMinutes();
    	 var seconds=date.getSeconds();
    	  /* if(minutes+30>=60){
    		 minutes=minutes-30;
    		 hours+=2;
    	 }else{
    		 minutes=minutes+30;
    		 hours+=1;
    	 }  */
    	 //minutes=minutes+1;
    	 var str=year+"/"+month+"/"+day+" "+hours+":"+minutes+":"+seconds;
    	 var stime="${clockTime}";
    	 
    	 toastr.error("考试结束时间："+stime);
    	 $('#clock').countdown(stime, function(event) {
    		    var totalHours = event.offset.totalDays * 24 + event.offset.hours;
    		    $(this).html(event.strftime(totalHours + ' 小时 %M 分 %S 秒'));
    	 }).on('finish.countdown', function(event) {
    		toastr.error("时间到,答案已保存,考试结束");
    		for(i=0;i<getJsonObjLength(d);i++){
    			if(answer[i]==undefined){
    				answer[i]="未答题";
    			}
    		}
    		$.post("${pageContext.request.contextPath}/student/insertScore",
    		    	 {
    		    		paperID:"${paperID}",
    		    		studentID:"${studentVo.studentID}",
    		    		score:score,
    		    		answer:answer.toString()
    		 },function(data){
			    		alert("时间到,答案已保存,考试结束");
    		    		 window.close();
    		 }
    		 ); 
    		//window.close();
  	   });
    	 
    	//post请求得到试卷信息
    	$.post("${pageContext.request.contextPath}/student/selectPaper",
    	        	{paperID:"${paperID}"},
    	        	//"${paperID}"
    	        		function(data){
    	        		d=data;
    	            $('#question').text(i+":"+d[i].questionStem+"("+d[i].questionScore+"分)");
    	            if(d[i].questionTypeID==1){
    	            $('.i-checks').html(
    	           "<input  type='radio' value='A' name='i'> <i></i><strong >"+(data[i].questionAnswerA)+"</strong><br>"     
                    +"<input  type='radio' value='B' name='i'> <i></i><strong >"+(data[i].questionAnswerB)+"</strong><br>"             
                    +"<input  type='radio' value='C' name='i' > <i></i><strong >"+(data[i].questionAnswerC)+"</strong><br>"
                    +"<input  type='radio' value='D' name='i' > <i></i><strong >"+(data[i].questionAnswerD)+"</strong>"
                    );
    	            }else if(d[i].questionAnswerE==""||d[i].questionAnswerE==null){
    	            	$('.i-checks').html(
    	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong>"
    	      	    	          );
    	            }else{
    	            	$('.i-checks').html(
    	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='E' name='i' > <i></i><strong>"+(d[i].questionAnswerE)+"</strong>"
    	      	    	          );
    	            }
    	        	pre=i/getJsonObjLength(d)*100; 	        	
    	        	$('#bar').attr("style","width: "+pre+"%;");
    	        	for(var j=1;j<=getJsonObjLength(data);j++){
    	         		$('.tag-list').append("<li id='"+j+"'><a class='questionid' id='"+j+"' href='###' style='font-size: 15px'>"+j+"</a></li>");
    	         		correctanswer[j-1]=d[j].questionRightAnswer;
    	         	}; 
    	        });
             });
     
            //事件委托，将a的点击事件委托给div
              $('.tag-list').delegate("a","click",function(e){
            	  if(d[i].questionTypeID==1){
            		  var val=$('input[name="i"]:checked').val();
          	           answer[i-1]=val;
        	           //alert(val);
        	           if(val!=undefined&&val!==""){
        		       $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
        	           };
                       if(d[i].questionRightAnswer==val){
                	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
                       };
                   }else{
                	   var val="";
                	   $('input[name="i"]:checked').each(function(){
                		   val=val+$(this).val();
                		   answer[i-1]=val;
                	   });
                	   if(val!=undefined&&val!==""){
            		   $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
            	       };
                       if(d[i].questionRightAnswer==val){
                    	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
                       };
                   }
            	        	  
                    var ququestionnum=e.target.id;
         	       i=ququestionnum;
        	       $('#question').text(ququestionnum+":"+d[ququestionnum].questionStem+"("+d[ququestionnum].questionScore+"分)");
        	       if(d[ququestionnum].questionTypeID==1){
        	       $('.i-checks').html(        	    		   
            	           "<input  type='radio' value='A' name='i'> <i></i><strong >"+(d[ququestionnum].questionAnswerA)+"</strong><br>"     
                            +"<input  type='radio' value='B' name='i'> <i></i><strong >"+(d[ququestionnum].questionAnswerB)+"</strong><br>"             
                            +"<input  type='radio' value='C' name='i' > <i></i><strong >"+(d[ququestionnum].questionAnswerC)+"</strong><br>"
                            +"<input  type='radio' value='D' name='i' > <i></i><strong >"+(d[ququestionnum].questionAnswerD)+"</strong>"
                            );
        	       $("input[name='i']").each(function(a){	
   	 		          if($(this).val()==answer[i-1]){  
   	        	      $(this).attr("checked","checked");   	    	        	 
   	              } 
   			    });
        	   }else if(d[ququestionnum].questionAnswerE==""||d[ququestionnum].questionAnswerE==null){
        		   $('.i-checks').html(
      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong>"
      	    	          );
        		   for(var m=0;m<answer[i-1].length;m++){
  					  $("input[name='i']").each(function(a){
  	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
  	    	        	     $(this).attr("checked","checked");   	    	        	 
  	    	             }
  					   }); 
  					}
        	   }else{
        		   $('.i-checks').html(
      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong><br>"
      	    	            +"<input  type='checkbox' value='E' name='i' > <i></i><strong>"+(d[i].questionAnswerE)+"</strong>"
      	    	          );
        		   for(var m=0;m<answer[i-1].length;m++){
  					  $("input[name='i']").each(function(a){
  	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
  	    	        	     $(this).attr("checked","checked");   	    	        	 
  	    	             }
  					   }); 
  					}
        	   }
	        	pre=i/getJsonObjLength(d)*100;
	        	$('#bar').attr("style","width: "+pre+"%;");
              });
              //--------------------------------------
              /* window.onbeforeunload = function checkLeave(e) {
      			var evt = e ? e : (window.event ? window.event : null); //此方法为了在firefox中的兼容
      			 evt.returnValue = "确认离开此页？"; 
      			for(i=0;i<getJsonObjLength(d);i++){
      	    			if(answer[i]==undefined){
      	    				answer[i]="未答题";
      	    			}
      	    		}
      	    		$.post("${pageContext.request.contextPath}/student/insertScore",
      	    		    	 {
      	    		    		paperID:"${paperID}",
      	    		    		studentID:"${studentVo.studentID}",
      	    		    		score:score,
      	    		    		answer:answer.toString()
      	    		 }); 
          		alert("答案已保存,考试结束");
      			evt.returnValue = true;
      			
      			}  */
       //---------------------------------czg------------------------------------       
    	 $(function(){
    	   $('#clock1').countdown(calOffset(0.1)).on('finish.countdown', function(event) {
    		   toastr.warning("离考试结束不足30分钟,请抓紧时间答题");
    	   });
    	  });
    	  
    	  //单位为分钟，返回偏移日期值
    	  function calOffset(v){
    	   return (new Date().valueOf() + (v*600*30* 1000)).toString();
    	  }
  
    	 /*  $(document).on('click', 'a[href^="#"]', function () {  
              alert(1111111111111111);  
         }); */  
       //------------------------------------------------------------------
       
    //点击下一题
      $('#next').on('click',function(){
    	  if(d[i].questionTypeID==1){
    		  var val=$('input[name="i"]:checked').val();
  	           answer[i-1]=val;	           
	           if(val!=undefined){
		       $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
	           };
               if(d[i].questionRightAnswer==val){
        	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
               };
           }else{
        	   var val="";
        	   $('input[name="i"]:checked').each(function(){
        		   val=val+$(this).val();
        		   answer[i-1]=val;
        	   });
        	   if(val!=undefined&&val!==""){
    		   $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
    	       };
               if(d[i].questionRightAnswer==val){
            	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
               };
               //alert(val);
           }
    	    
    	      if(i<getJsonObjLength(d)){
    	    	   i++;	     	    	         
    	    			 $('#question').text(i+":"+d[i].questionStem+"("+d[i].questionScore+"分)");
    	    			 if(d[i].questionTypeID==1){
    	    			 $('.i-checks').html(
    	    	    	   "<input  type='radio' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	    	            +"<input  type='radio' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	    	            +"<input  type='radio' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	    	            +"<input  type='radio' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong>"
    	    	          );
    	    			$("input[name='i']").each(function(a){
    	    	 		 if($(this).val()==answer[i-1]){  
    	    	        	 $(this).attr("checked","checked");   	    	        	 
    	    	         } 
    	    			 });
    	    			 }else if(d[i].questionAnswerE==""||d[i].questionAnswerE==null){
    	    				 $('.i-checks').html(
    	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong>"
    	      	    	          );
    	    				 for(var m=0;m<answer[i-1].length;m++){
    	    					   $("input[name='i']").each(function(a){
    	    	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
    	    	    	        	     $(this).attr("checked","checked");   	    	        	 
    	    	    	             }
    	    					   }); 
    	    					}
    	    			 }else{
    	    				 $('.i-checks').html(
    	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong><br>"
    	      	    	            +"<input  type='checkbox' value='E' name='i' > <i></i><strong>"+(d[i].questionAnswerE)+"</strong>"
    	      	    	          );
    	    				 
     	    					for(var m=0;m<answer[i-1].length;m++){
     	    					  $("input[name='i']").each(function(a){
     	    	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
     	    	    	        	     $(this).attr("checked","checked");   	    	        	 
     	    	    	             }
     	    					   }); 
     	    					}
     	    	    		  
    	    			 }
    	 	        	pre=i/getJsonObjLength(d)*100;
    	 	        	$('#bar').attr("style","width: "+pre+"%;"); 
    	      };      
    		      	 
     });
      
     //点击上一题    
     $('#last').on('click',function(){
          if(d[i].questionTypeID==1){
    		  var val=$('input[name="i"]:checked').val();
  	           answer[i-1]=val;
	           if(val!=undefined){
		       $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
	           };
               if(d[i].questionRightAnswer==val){
        	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
               };
           }else{
        	   var val="";
        	   $('input[name="i"]:checked').each(function(){
        		   val=val+$(this).val();
        		   answer[i-1]=val;
        	   });
        	   if(val!=undefined&&val!==""){
    		   $('.questionid:eq("'+(i-1)+'")').attr("style","font-size: 15px;background-color:Aqua");    		    
    	       };
               if(d[i].questionRightAnswer==val){
            	      score=eval(parseInt(score)+parseInt(d[i].questionScore));
               };
               //alert(val);
           }
    	 if(i>1){
    		     i--; 
    	         $('#question').text(i+":"+d[i].questionStem+"("+d[i].questionScore+"分)");
    	         if(d[i].questionTypeID==1){
    	    	 $('.i-checks').html(
    	  	    	   "<div><input  type='radio' value='A' name='i'> <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
    	  	            +"<input  type='radio' value='B' name='i'> <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
    	  	            +"<input  type='radio' value='C' name='i'> <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
    	  	            +"<input  type='radio' value='D' name='i'> <i></i><strong>"+(d[i].questionAnswerD)+"</strong></div>"
    	  	          );
    			 $("input[name='i']").each(function(a){
    			 if($(this).val()==answer[i-1]){   
    				 $(this).attr("checked","checked");
    	         }
    			 });
    	         }else if(d[i].questionAnswerE==""||d[i].questionAnswerE==null){
    	        	 $('.i-checks').html(
	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong>"
	      	    	          );
    	        	 for(var m=0;m<answer[i-1].length;m++){
    					  $("input[name='i']").each(function(a){
    	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
    	    	        	     $(this).attr("checked","checked");   	    	        	 
    	    	             }
    					   }); 
    					}
    	         }else{
    	        	 $('.i-checks').html(
	      	    	    	   "<input  type='checkbox' value='A' name='i' > <i></i><strong>"+(d[i].questionAnswerA)+"</strong><br>"     
	      	    	            +"<input  type='checkbox' value='B' name='i' > <i></i><strong>"+(d[i].questionAnswerB)+"</strong><br>"             
	      	    	            +"<input  type='checkbox' value='C' name='i' > <i></i><strong>"+(d[i].questionAnswerC)+"</strong><br>"
	      	    	            +"<input  type='checkbox' value='D' name='i' > <i></i><strong>"+(d[i].questionAnswerD)+"</strong><br>"
	      	    	            +"<input  type='checkbox' value='E' name='i' > <i></i><strong>"+(d[i].questionAnswerE)+"</strong>"
	      	    	          );
    	        	 for(var m=0;m<answer[i-1].length;m++){
    					  $("input[name='i']").each(function(a){
    	    	 		     if($(this).val()==answer[i-1].substring(m,m+1)){  
    	    	        	     $(this).attr("checked","checked");   	    	        	 
    	    	             }
    					   }); 
    					}
    	         }
    	      	pre=i/getJsonObjLength(d)*100;
    	      	$('#bar').attr("style","width: "+pre+"%;");    	    	
    	 };
    	 	
     });
     
   //得到json数据的长度  
     function getJsonObjLength(jsonObj) {
         var Length = 0;
         for (var item in jsonObj) {
           Length++;
         }
         return Length;
       }
     
     //提交试卷
     $('#getscore').click(function(){
    	 //alert(score);
    	  var date=new Date();
    	 var year=date.getFullYear();
    	 var month=date.getMonth()+1;
    	 var day=date.getDate();
    	 var hours=date.getHours();
    	 var minutes=date.getMinutes();
    	 var seconds=date.getSeconds();
    	 var canExitTime="${canExitTime}";
    	 var canExitHour=canExitTime.substring(11, 14);
    	 var canExitMinute=canExitTime.substring(14, 17);
    	if(parseInt(canExitHour)-hours==1||parseInt(canExitHour)-hours==0&&minutes<parseInt(canExitMinute)){
    		toastr.warning("考试时间少于30分钟,禁止提交");
    		return false;
    	}
    	  for(var k = 0 ;k<getJsonObjLength(d);k++)
         {
               if(answer[k] == "" || typeof(answer[k]) == "undefined")
               {
            	 toastr.warning("请完成所有考题");
            	 return false;
               }
          }
    	  $.post("${pageContext.request.contextPath}/student/insertScore",
      	    	 {
      	    		paperID:"${paperID}",
      	    		studentID:"${studentVo.studentID}",
      	    		score:score,
      	    		answer:answer.toString(),
      	    		correctanswer:correctanswer.toString()
      	    	 },function(data){
      	    		 alert("已提交试卷，考试结束！");
      	    		 window.close();
      	    	 }
      	    	);
 	   
    });
         
    </script>
    <script type="text/javascript">
	$(document).keydown(function(event){
		if((event.keyCode==18)&&(event.keyCode==9)){ 
	        return false; //屏蔽alt+tab  
	    };
	    
	    if(event.ctrlKey && event.keyCode==78){
	    	return false;//屏蔽ctrl+n
	    };
	    if((event.altKey)&&(event.keyCode==115)){
	    	return false;//屏蔽Alt+F4
	    };
	    if(event.keyCode==116){
	    	 toastr.warning("禁止刷新");
	    	return false;//屏蔽F5
	    };
		   return false;
		})  
	</script>
	<script>
	document.oncontextmenu = function(e){
		toastr.warning("禁止右键");
        return false;
	}
	</script> 
    
</body>

</html>