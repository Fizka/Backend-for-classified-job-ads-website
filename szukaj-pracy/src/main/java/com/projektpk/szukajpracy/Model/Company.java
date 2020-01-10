package com.projektpk.szukajpracy.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "company")
public class Company implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long NIP;

    @Column(name = "companyName")
    private String companyName;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "mail")
    private String mail;

    @Column(name = "postalcode")
    private int postalcode;

    @Column(name = "REGON")
    private int REGON;

    @Column(name = "KRS")
    private int KRS;

    @OneToOne(
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            mappedBy = "survey"
    )
    @JsonIgnore
    private Survey survey_Company;


    //user
    @OneToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "user_idUser", nullable = false)
    @JsonIgnore
    private User user_company;

    public Company() {
    }

    public Company(String companyName, String address, String city, String mail, int postalcode, int REGON, int KRS, User user_company) {
        this.companyName = companyName;
        this.address = address;
        this.city = city;
        this.mail = mail;
        this.postalcode = postalcode;
        this.REGON = REGON;
        this.KRS = KRS;
        this.user_company = user_company;
    }

    public Company(String companyName, String address, String city, String mail, int postalcode, int REGON, int KRS) {
        this.companyName = companyName;
        this.address = address;
        this.city = city;
        this.mail = mail;
        this.postalcode = postalcode;
        this.REGON = REGON;
        this.KRS = KRS;
    }

    public Company(String companyName, String address, String city, String mail, int postalcode) {
        this.companyName = companyName;
        this.address = address;
        this.city = city;
        this.mail = mail;
        this.postalcode = postalcode;
    }

    public long getNIP() {
        return NIP;
    }

    public void setNIP(long NIP) {
        this.NIP = NIP;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getPostalcode() {
        return postalcode;
    }

    public void setPostalcode(int postalcode) {
        this.postalcode = postalcode;
    }

    public int getREGON() {
        return REGON;
    }

    public void setREGON(int REGON) {
        this.REGON = REGON;
    }

    public int getKRS() {
        return KRS;
    }

    public void setKRS(int KRS) {
        this.KRS = KRS;
    }

    public Survey getSurvey_Company() {
        return survey_Company;
    }

    public void setSurvey_Company(Survey survey_Company) {
        this.survey_Company = survey_Company;
    }

    public User getUser_company() {
        return user_company;
    }

    public void setUser_company(User user_company) {
        this.user_company = user_company;
    }

    @Override
    public String toString() {
        return "Company{" +
                "NIP=" + NIP +
                ", companyName='" + companyName + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", mail=" + mail +
                ", postalcode=" + postalcode +
                ", REGON=" + REGON +
                ", KRS=" + KRS +
                '}';
    }
}
