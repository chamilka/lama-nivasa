package pdn.sci.cs.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailService {

    @Autowired
    private JavaMailSender mailSender;
    
    private String senderEmail;
	private String emailSubject;

    public void sendPasswordResetMail(String to, String body) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setFrom(getSenderEmail());
        message.setTo(to);
        message.setSubject(getEmailSubject());
        message.setText(body);
        getMailSender().send(message);

    }
	
	public String getSenderEmail() {
		return senderEmail;
	}

	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}

	public String getEmailSubject() {
		return emailSubject;
	}

	public void setEmailSubject(String emailSubject) {
		this.emailSubject = emailSubject;
	}

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

}
