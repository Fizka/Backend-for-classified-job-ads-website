package com.projektpk.szukajpracy.Model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "company")
public class Company {

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
    private int mail;

    @Column(name = "postalcode")
    private int postalcode;

    @Column(name = "REGON")
    private int REGON;

    @Column(name = "KRS")
    private int KRS;

    @OneToMany
    private List<Advertisement> advertisement_Company;

    @OneToMany
    private  List<Application> applications_Company;

    @OneToOne
    private Survey survey_Company;

    @OneToMany
    private List<MessageEnty> messageEnties_Company;

    @OneToOne
    private User user_Company;


    public Company(String companyName, String address, String city, int mail, int postalcode, int REGON, int KRS) {
        this.companyName = companyName;
        this.address = address;
        this.city = city;
        this.mail = mail;
        this.postalcode = postalcode;
        this.REGON = REGON;
        this.KRS = KRS;
    }

    public Company(String companyName, String address, String city, int mail, int postalcode) {
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

    public int getMail() {
        return mail;
    }

    public void setMail(int mail) {
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
