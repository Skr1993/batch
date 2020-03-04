package com.batch.serviceimpl;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

import com.batch.service.ServiceEmail;

public class ServiceEmailImpl implements ServiceEmail{

@Override
public void sendEmail(String To){
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		
		Session session2 = Session.getDefaultInstance(props, new javax.mail.Authenticator(){
		protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("batchcatch2@gmail.com","admin@1234");
		}
		});
			try {
			MimeMessage message = new MimeMessage(session2);
			message.setFrom(new InternetAddress("batchcatch2@gmail.com"));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(To));
			message.setSubject("Approval");
			message.setText("Please click on the link mention below and create Id and Password"+"\n"
			+"http://localhost:8081/batch/admin/approvalForm.jsp");
			Transport.send(message);
			}catch(Exception e){
				System.out.println("EmailServiceImpl:sendEmail:"+e);
			}
		
	}
}
