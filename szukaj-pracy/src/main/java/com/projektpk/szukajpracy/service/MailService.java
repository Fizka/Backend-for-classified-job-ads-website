package com.projektpk.szukajpracy.service;

import com.projektpk.szukajpracy.model.*;
import com.projektpk.szukajpracy.repository.MailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;

@Service
public class MailService {

    private final MailRepository mr;

    @Autowired
    public MailService(@Qualifier("sm") MailRepository mr) {
        this.mr = mr;
    }

    public int sendMessage(MessageEnty mess) throws MessagingException {
        return mr.insertMess(mess);
    }
}
