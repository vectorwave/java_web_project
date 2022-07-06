//package com.group1project.mail;
//
//import java.io.File;
//
//import javax.mail.MessagingException;
//import javax.mail.internet.MimeMessage;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.PropertySource;
//import org.springframework.context.annotation.Scope;
//import org.springframework.core.io.FileSystemResource;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.stereotype.Component;
//
//@Component("mailUtils")
//@Scope("singleton")
//@PropertySource("classpath:mail.properties")
//public class MailUtils {
//	
//	@Autowired
//	private JavaMailSender mailSender;
//
//	
//	public Boolean sendMail(String to ,String subject,String htmlcontent,String imagePath) {
//		
//		 MimeMessage mimeMessage = mailSender.createMimeMessage();
//		 try {
//			 MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
////		     helper.setFrom("karen40729@yahoo.com.tw");
////		     helper.setTo(to);
////		     helper.setSubject(subject);
////		     helper.setText(htmlcontent,true);
//			 helper.setTo("mymail@mail.co.uk");
//	            helper.setReplyTo("someone@localhost");
//	            helper.setFrom("someone@localhost");
//	            helper.setSubject("Lorem ipsum");
//	            helper.setText("Lorem ipsum dolor sit amet [...]");
//		     
//		     
//
//			     mailSender.send(mimeMessage);
//		     
//		     return true;
//		 } catch (MessagingException e) {
//			 return false;
//		 } catch(Exception e) {
//			 return false;
//		 }
//	    
//	}
//
//	/*------------------------javamailAPI-------------------------------------*/
////	@Value("${host}")
////	private String host;
////	@Value("${port}")
////	private Integer port;
////	@Value("${from}")
////	private String fromMail;
////	@Value("${user}")
////	private String username;
////	@Value("${pwd}")
////	private String password;
//		
////	public Boolean sendMail(String to ,String subject,String htmlcontent,String imagePath) {
////		Properties props = new Properties();
////		props.put("mail.smtp.host", host);
////		props.put("mail.smtp.auth", "true");
////		props.put("mail.smtp.starttls.enable", "true");
////		props.put("mail.smtp.port", port);
////		Session session = Session.getInstance(props, new Authenticator() {
////			protected PasswordAuthentication getPasswordAuthentication() {
////				return new PasswordAuthentication(username, password);
////			}
////		});
////
////		try {
////			MimeMultipart multipart = new MimeMultipart("related");
////			
////			MimeBodyPart htmlBodyPart = new MimeBodyPart();
////			htmlBodyPart.setContent(htmlcontent, "text/html;charset=UTF-8");
////			multipart.addBodyPart(htmlBodyPart);
////			
////			//內嵌圖片
////	        MimeBodyPart image = new MimeBodyPart();
////	        FileDataSource fds = new FileDataSource(PathHandler.globalProjectImgPath+imagePath);
////	        image.setDataHandler(new DataHandler(fds));
////	        image.setDisposition(MimeBodyPart.INLINE);
////	        image.setFileName(fds.getName());
////	        image.setHeader("Content-ID", "<image>");
////	        multipart.addBodyPart(image);
////
////			
////			// 附件檔案
////	        MimeBodyPart filepart = new MimeBodyPart();
////	        filepart.attachFile(PathHandler.globalProjectImgPath+"/AnimalAdoption.docx");
////	        filepart.setFileName(MimeUtility.encodeText("動物認養申請書.docx", "UTF-8", "B"));
////	        multipart.addBodyPart(filepart);
////	       
////	        MimeMessage message = new MimeMessage(session);
////	        message.setFrom(new InternetAddress(fromMail));
////	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
////	        message.setSubject(subject);
////	        message.setContent(multipart);
////	        
////	        Transport transport = session.getTransport("smtp");
////	        transport.connect(host, port, username, password);
////	        
////	        transport.sendMessage(message, message.getAllRecipients());
////	        
////			return true;
////		} catch (MessagingException e) {
////			return false;
////		} catch(Exception e) {
////			return false;
////		}
////	}
//	
////	public Boolean sendOrderEmail(String to ,String subject,String htmlcontent,String imagePath) {
////		Properties props = new Properties();
////		props.put("mail.smtp.host", host);
////		props.put("mail.smtp.auth", "true");
////		props.put("mail.smtp.starttls.enable", "true");
////		props.put("mail.smtp.port", port);
////		Session session = Session.getInstance(props, new Authenticator() {
////			protected PasswordAuthentication getPasswordAuthentication() {
////				return new PasswordAuthentication(username, password);
////			}
////		});
////
////		try {
////			
////			MimeMultipart multipart = new MimeMultipart("related");
////			
////			MimeBodyPart htmlBodyPart = new MimeBodyPart();
////			htmlBodyPart.setContent(htmlcontent, "text/html;charset=UTF-8");
////			multipart.addBodyPart(htmlBodyPart);
////			
////			//內嵌圖片
////	        MimeBodyPart image = new MimeBodyPart();
////	        FileDataSource fds = new FileDataSource(PathHandler.globalProjectImgPath+imagePath);
////	        image.setDataHandler(new DataHandler(fds));
////	        image.setDisposition(MimeBodyPart.INLINE);
////	        image.setFileName(fds.getName());
////	        image.setHeader("Content-ID", "<image>");
////	        multipart.addBodyPart(image);	        
////			
////	        MimeMessage message = new MimeMessage(session);
////	        message.setFrom(new InternetAddress(fromMail));
////	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
////	        message.setSubject(subject);
////	        message.setContent(multipart);
////	        
////	        Transport transport = session.getTransport("smtp");
////	        transport.connect(host, port, username, password);
////	        
////	        transport.sendMessage(message, message.getAllRecipients());
////	        
////			return true;
////		} catch (MessagingException e) {
////			return false;
////		} catch(Exception e) {
////			return false;
////		}
////	}
//}