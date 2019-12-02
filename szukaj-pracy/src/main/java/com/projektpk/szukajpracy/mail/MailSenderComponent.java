package com.projektpk.szukajpracy.mail;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Component;

@Component
public class MailSenderComponent implements MailRepository {

    private JavaMailSenderImpl mailSender;

    public MailSenderComponent(Environment environment){
        mailSender = new JavaMailSenderImpl();

        mailSender.setHost(environment.getProperty("spring.mail.host"));
        mailSender.setPort(Integer.parseInt(environment.getProperty("spring.mail.port")));
        mailSender.setUsername(environment.getProperty("spring.mail.username"));
        mailSender.setPassword(environment.getProperty("spring.mail.password"));
    }

    @Override
    public void sendmail(String from, String name, String feedback){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("aplikacja.szukajpracy@wp.pl");
        message.setSubject("New mail from " + name);
        message.setText(feedback);
        message.setFrom(from);

        this.mailSender.send(message);
    }
}
