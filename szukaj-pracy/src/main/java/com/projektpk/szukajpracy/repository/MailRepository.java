package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.model.MessageEnty;

import javax.mail.MessagingException;

public interface MailRepository {

    int insertMess(MessageEnty mess) throws MessagingException;

    default int sendMessage(MessageEnty mess) throws MessagingException {
        return insertMess(mess);
    }
}

