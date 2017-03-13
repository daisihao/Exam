package com.exam.util;

import java.io.File;
import java.util.Properties;  
  




import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;  

import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSenderImpl;  
import org.springframework.mail.javamail.MimeMessageHelper;  
  
/** 
 * 本类测试html邮件 
 *  
 * @author 
 *  
 */  
public class MailUtil  
{  
    /** 
     * @param args 
     * @throws MessagingException 
     */  
    public static void sendEmail(String userMail,String examName,String score){ 
        try {
			JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();  
			senderImpl.setDefaultEncoding("UTF-8");
			// 设定mail server  
			senderImpl.setHost("smtp.126.com");  
  
			// 建立邮件消息,发送简单邮件和html邮件的区别  
			MimeMessage mailMessage = senderImpl.createMimeMessage();  
      // MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage);  
			MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage,  
			        true, "UTF-8");  
			// 设置收件人，寄件人  
			messageHelper.setTo(userMail);  
			messageHelper.setFrom("kill126@126.com");  
			messageHelper.setSubject("A+考试系统");  
			// true 表示启动HTML格式的邮件  
			messageHelper  
			        .setText(  
			                "<html><head></head><meta charset='utf-8'><body><h3>您参加A+考试系统中&lt;"+examName+"&gt;考试中的得分为"+score+"。<p><a href=http://localhost:8080/JavaExam/>点击登录系统</a></p></h3></body></html>",  
			                true);  
			FileSystemResource file = new FileSystemResource(  
			        new File("D:/成绩排名.doc"));  
			// 这里的方法调用和插入图片是不同的。  
			messageHelper.addAttachment("score.doc", file);  
			senderImpl.setUsername("kill126@126.com"); // 根据自己的情况,设置username  
			senderImpl.setPassword("123456789"); // 根据自己的情况, 设置password  
			Properties prop = new Properties();  
			prop.put("mail.smtp.auth", "true"); // 将这个参数设为true，让服务器进行认证,认证用户名和密码是否正确  
			prop.put("mail.smtp.timeout", "25000");  
			senderImpl.setJavaMailProperties(prop);  
			// 发送邮件  
			senderImpl.send(mailMessage);
		} catch (MailException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}  
    }  
    
    public static void main(String[] args){
		MailUtil.sendEmail("630954994@qq.com", "aa", "20");
	}
}  