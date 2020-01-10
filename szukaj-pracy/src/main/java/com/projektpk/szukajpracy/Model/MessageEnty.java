package com.projektpk.szukajpracy.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "Message")
public class MessageEnty implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idMessage;

    @Column(name = "mailSender")
    private String mailSender;

    @Column(name = "particularsSender")
    private String particularsSender;

    @Column(name = "title")
    private String title;

    @Column(name = "mailConsignee")
    private String mailConsignee;

    @Column(name = "particularsConsignee")
    private String particularsConsignee;

    @Column(name = "textMessage")
    private String textMessage;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "company_id",
            nullable = false
    )
    @JsonIgnore
    private Company company_MessageEnty;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "customer_id",
            nullable = false
    )
    @JsonIgnore
    private Customer customer_MessageEnty;

    public MessageEnty() {
    }

    public MessageEnty(String mailSender, String particularsSender, String title, String mailConsignee, String particularsConsignee,
                       String textMessage, Company company_MessageEnty, Customer customer_MessageEnty) {
        this.mailSender = mailSender;
        this.particularsSender = particularsSender;
        this.title = title;
        this.mailConsignee = mailConsignee;
        this.particularsConsignee = particularsConsignee;
        this.textMessage = textMessage;
        this.company_MessageEnty = company_MessageEnty;
        this.customer_MessageEnty = customer_MessageEnty;
    }

    public MessageEnty(@JsonProperty("mailSender") String mailSender, @JsonProperty("title") String title, @JsonProperty("textMessage") String textMessage) {
        this.mailSender = mailSender;
        this.title = title;
        this.textMessage = textMessage;
    }

    public MessageEnty(String mailSender, String particularsSender, String title, String mailConsignee, String particularsConsignee, String textMessage) {
        this.mailSender = mailSender;
        this.particularsSender = particularsSender;
        this.title = title;
        this.mailConsignee = mailConsignee;
        this.particularsConsignee = particularsConsignee;
        this.textMessage = textMessage;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mailSender='" + mailSender + '\'' +
                ", particularsSender='" + particularsSender + '\'' +
                ", title='" + title + '\'' +
                ", mailConsignee='" + mailConsignee + '\'' +
                ", particularsConsignee='" + particularsConsignee + '\'' +
                ", textMessage='" + textMessage + '\'' +
                '}';
    }

    public String getMailSender() {
        return mailSender;
    }

    public void setMailSender(String mailSender) {
        this.mailSender = mailSender;
    }

    public String getParticularsSender() {
        return particularsSender;
    }

    public void setParticularsSender(String particularsSender) {
        this.particularsSender = particularsSender;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMailConsignee() {
        return mailConsignee;
    }

    public void setMailConsignee(String mailConsignee) {
        this.mailConsignee = mailConsignee;
    }

    public String getParticularsConsignee() {
        return particularsConsignee;
    }

    public void setParticularsConsignee(String particularsConsignee) {
        this.particularsConsignee = particularsConsignee;
    }

    public String getTextMessage() {
        return textMessage;
    }

    public void setTextMessage(String textMessage) {
        this.textMessage = textMessage;
    }

    public long getIdMessage() {
        return idMessage;
    }

    public void setIdMessage(long idMessage) {
        this.idMessage = idMessage;
    }

    public Company getCompany_MessageEnty() {
        return company_MessageEnty;
    }

    public void setCompany_MessageEnty(Company company_MessageEnty) {
        this.company_MessageEnty = company_MessageEnty;
    }

    public Customer getCustomer_MessageEnty() {
        return customer_MessageEnty;
    }

    public void setCustomer_MessageEnty(Customer customer_MessageEnty) {
        this.customer_MessageEnty = customer_MessageEnty;
    }
}
