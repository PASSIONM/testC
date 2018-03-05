package com.kte.mvc.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	

	@RequestMapping(value = "/provider_join.do", method = RequestMethod.GET)
	public String provider_join( Model model) {
		
		return "p_join";
	}
	
	@RequestMapping("emailAuth.do")
	public ModelAndView emailAuth(HttpServletResponse response, HttpServletRequest request) throws Exception {
		
		String email = request.getParameter("email");
		String authNum = "";
		
		authNum = RandomNum();
		
		sendEmail(email.toString(), authNum);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("emailAuth");
		mv.addObject("email", email);
		mv.addObject("authNum", authNum);
		
		System.out.println(authNum);
		return mv;
	}

	private void sendEmail(String email, String authNum) {
		// TODO Auto-generated method stub
		String host = "smtp.naver.com";	//smtp 서버
		String subject = "인증번호 전달";
		String fromName = "관리자";
		String from = "ruaehdehddk@naver.com";	//보내는 메일
		String to1 = email;
		
		String content = "인증번호 [" + authNum + "]";
		
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("ruaehdehddk", "1qazxsw2");
				}
			});
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			
			InternetAddress[] address1 = {new InternetAddress(to1)};
			msg.setRecipients(Message.RecipientType.TO, address1); //받는 사람설정1
			msg.setSubject(subject);	//제목 설정
			msg.setSentDate(new java.util.Date());	//보내는 날짜 설정
			msg.setContent(content, "text/html;charset=euc-kr");	//내용설정(HTML 형식)
			
			Transport.send(msg); //메일보내기
		}
		catch (MessagingException e) {
			e.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private String RandomNum() {
		// TODO Auto-generated method stub
		StringBuffer buffer = new StringBuffer();
		for(int i = 0; i <=6; i++) {
			int n = (int) (Math.random() * 10 );
			buffer.append(n);
		}
		return buffer.toString();
	}
	
}
