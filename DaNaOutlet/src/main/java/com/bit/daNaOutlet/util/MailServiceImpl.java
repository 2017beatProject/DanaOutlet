package com.bit.daNaOutlet.util;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailServiceImpl implements MailService {
	
	 private JavaMailSender javaMailSender;
	 
	    public void setJavaMailSender(JavaMailSender javaMailSender) {
	        this.javaMailSender = javaMailSender;
	    }
			    
	 
	    @Override
	    public boolean send(String subject, String text, String from, String to, String filePath) {
	        // javax.mail.internet.MimeMessage
	        MimeMessage message = javaMailSender.createMimeMessage();
	 
	        try {
	            // org.springframework.mail.javamail.MimeMessageHelper
	            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
	            helper.setSubject(subject);
	            helper.setText(text, true);
	            helper.setFrom(from);
	            helper.setTo(to);
	 
	            // 첨부 파일 처리
	            if (filePath != null) {
	                File file = new File(filePath);
	                if (file.exists()) {
	                    helper.addAttachment(file.getName(), new File(filePath));
	                }
	            }
	            System.out.println(javaMailSender);
	            javaMailSender.send(message);
	            System.out.println("메시지"+message.getMessageID());
	            return true;
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }


	}


