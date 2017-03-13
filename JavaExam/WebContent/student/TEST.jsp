<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta charset="utf-8"/>
        <title>图片上传</title>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/swfobject.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/fullAvatarEditor.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    </head>
    <body>
		<div style="width:632px;margin: 0 auto;text-align:center">
			<h1 style="text-align:center">头像上传编辑器</h1>
			<div>
				<p id="swfContainer">
                    本组件需要安装Flash Player后才可使用，请从<a href="http://www.adobe.com/go/getflashplayer">这里</a>下载安装。
				</p>
			</div>
			<button type="button" id="upload" style="display:none;margin-top:8px;">swf外定义的上传按钮，点击可执行上传保存操作</button>
        </div>
		<script type="text/javascript">
            swfobject.addDomLoadEvent(function () {
            	var userid=999;
            	var username='looselive';
				var swf = new fullAvatarEditor("fullAvatarEditor.swf", "expressInstall.swf", "swfContainer", {
					    id : 'swf',
					    userid:999,
					    username:'looselive',
 						upload_url : 'upload.jsp?userid='+userid+'&username=looselive',	//上传接口
						method : 'post',	//传递到上传接口中的查询参数的提交方式。更改该值时，请注意更改上传接口中的查询参数的接收方式
						src_upload : 2,		//是否上传原图片的选项，有以下值：0-不上传；1-上传；2-显示复选框由用户选择
						avatar_box_border_width : 0,
						avatar_sizes : '100*100|50*50|32*32',
						avatar_sizes_desc : '100*100像素|50*50像素|32*32像素'
					}, function (msg) {
						var str = JSON.stringify(msg);
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
    </body>
</html>