package com.projektpk.szukajpracy.controller;


import com.projektpk.szukajpracy.Model.Mail;
import com.projektpk.szukajpracy.mail.MailRepository;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.ValidationException;

@RestController
@RequestMapping("/api/mail")
@CrossOrigin(origins = "http://localhost:4200")
public class MailController {

    private MailRepository mailrepo;

    public MailController(MailRepository mailSender) {
        this.mailrepo = mailSender;
    }

    @PostMapping
    public void sendFeedback(@RequestBody Mail feedbackViewModel,
                             BindingResult bindingResult)  {
        if(bindingResult.hasErrors()){
            throw new ValidationException("Mail has errors; Can not send mail;");
        }

        this.mailrepo.sendmail(
                feedbackViewModel.getEmail(),
                feedbackViewModel.getName(),
                feedbackViewModel.getMail());
    }
}
