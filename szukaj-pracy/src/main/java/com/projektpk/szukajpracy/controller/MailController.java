package com.projektpk.szukajpracy.controller;


import com.projektpk.szukajpracy.Model.MessageEnty;
import com.projektpk.szukajpracy.Service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;

@RestController
@RequestMapping("/api/mail")
public class MailController {

    private  final MailService ms; 

    @Autowired
    public MailController(MailService ms) {
        this.ms = ms;
    }

    @PostMapping()
    public void sendMessage(@RequestBody MessageEnty me) throws MessagingException
    {
        ms.sendMessage(me);
    }


}
