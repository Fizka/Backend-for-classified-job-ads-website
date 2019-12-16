package com.projektpk.szukajpracy.Model;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "customer")
public class Customer {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idCustomer;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "address")
    private String address;

    @Column(name = "pesel")
    private int pesel;

    @Column(name = "phonenumber")
    private int phonenumber;

    @Column(name = "certificate")
    private boolean certificate;

    @Column(name = "course")
    private boolean course;

    @Column(name = "cv")
    private boolean cv;

    @OneToMany
    private List<Application> applications_Customer;

    @OneToOne
    private User user_Customer;

    @OneToMany
    private List<MessageEnty> messageEnties_Customer;

    @OneToOne
    private CV cv_Customer;

    @OneToMany
    private List<Course> courses_Customer;

    @OneToMany
    private List<Certificate> certificates_Customer;

    public Customer(String firstName, String lastName, String address, int pesel, int phonenumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.pesel = pesel;
        this.phonenumber = phonenumber;
    }

    public Customer(String firstName, String lastName, int phonenumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phonenumber = phonenumber;
    }

    public long getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(long idCustomer) {
        this.idCustomer = idCustomer;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPesel() {
        return pesel;
    }

    public void setPesel(int pesel) {
        this.pesel = pesel;
    }

    public int getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(int phonenumber) {
        this.phonenumber = phonenumber;
    }

    public boolean isCertificate() {
        return certificate;
    }

    public void setCertificate(boolean certificate) {
        this.certificate = certificate;
    }

    public boolean isCourse() {
        return course;
    }

    public void setCourse(boolean course) {
        this.course = course;
    }

    public boolean isCv() {
        return cv;
    }

    public void setCv(boolean cv) {
        this.cv = cv;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "idCustomer=" + idCustomer +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", address='" + address + '\'' +
                ", pesel=" + pesel +
                ", phonenumber=" + phonenumber +
                ", certificate=" + certificate +
                ", course=" + course +
                ", cv=" + cv +
                '}';
    }
}
