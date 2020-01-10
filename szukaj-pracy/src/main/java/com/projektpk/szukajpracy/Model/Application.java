package com.projektpk.szukajpracy.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@org.hibernate.annotations.Table(appliesTo = "application")
public class Application implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idApplication;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "mail")
    private String mail;

    @Column(name = "phoneNumber")
    private int phoneNumber;

    @Column(name = "address")
    private String address;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "company_id",
            nullable = false
    )
    @JsonIgnore
    private Company company_Application;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "customer_id",
            nullable = false
    )
    @JsonIgnore
    private Customer customers_Application;


    //advertismenemt
    @OneToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "advertisement_id", nullable = false)
    @JsonIgnore
    private Advertisement advertisement;

    public Application() {
    }

    public Application(String firstName, String lastName, String mail,
                       int phoneNumber, String address, Company company_Application, Customer customers_Application, Advertisement advertisement) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.mail = mail;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.company_Application = company_Application;
        this.customers_Application = customers_Application;
        this.advertisement = advertisement;
    }

    public Application(String firstName, String lastName, String mail, int phoneNumber, String address) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.mail = mail;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public long getIdApplication() {
        return idApplication;
    }

    public void setIdApplication(long idApplication) {
        this.idApplication = idApplication;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Company getCompany_Application() {
        return company_Application;
    }

    public void setCompany_Application(Company company_Application) {
        this.company_Application = company_Application;
    }

    public Customer getCustomers_Application() {
        return customers_Application;
    }

    public void setCustomers_Application(Customer customers_Application) {
        this.customers_Application = customers_Application;
    }

    public Advertisement getAdvertisement() {
        return advertisement;
    }

    public void setAdvertisement(Advertisement advertisement) {
        this.advertisement = advertisement;
    }

    @Override
    public String toString() {
        return "Application{" +
                "idApplication=" + idApplication +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", mail='" + mail + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", address='" + address + '\'' +
                '}';
    }
}

