package com.projektpk.szukajpracy.mail;

import org.springframework.stereotype.Repository;

@Repository
public interface  MailRepository {
    void sendmail(String from, String name, String feedback);
}

