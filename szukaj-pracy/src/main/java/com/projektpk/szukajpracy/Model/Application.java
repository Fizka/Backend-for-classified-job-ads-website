package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "application")
public class Application {

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

