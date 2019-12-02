package com.projektpk.szukajpracy.Model;

import javax.validation.constraints.Email;
import javax.validation.constraints.Min;

public class Mail {

    private String name;

    @Email
    private String email;

    @Min(10)
    private String mail;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
}
