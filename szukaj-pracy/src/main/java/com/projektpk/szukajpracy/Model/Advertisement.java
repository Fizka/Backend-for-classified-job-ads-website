package com.projektpk.szukajpracy.Model;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "advertisement")
public class Advertisement {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idAdvertisement;

    @Column(name = "title")
    private String title;

    @Column(name = "industry")
    private String industry;

    @Column(name = "city")
    private String city;

    @Column(name = "salary")
    private int salary;

    @Column(name = "company")
    private String company;

    @Column(name = "dateAdded")
    private String dateAdded;

    @Column(name = "periodOfValidity")
    private String periodOfValidity;

    @Column(name = "contractType")
    private String contractType;

    @ManyToOne
    private Survey survey_Advertisement;

    @OneToMany
    private  List <Application> applications_Advertisement;

    @ManyToOne
    private Company company_Advertisement;

    @ManyToOne
    private Archives archive_Advertisement;

    @OneToOne
    private Search search_Advertisement;




    public Advertisement(String title, String industry, String city, int salary, String company, String dateAdded, String periodOfValidity,
                         String contractType) {
        this.title = title;
        this.industry = industry;
        this.city = city;
        this.salary = salary;
        this.company = company;
        this.dateAdded = dateAdded;
        this.periodOfValidity = periodOfValidity;
        this.contractType = contractType;
    }

    public Advertisement() {
    }

    public long getIdAdvertisement() {
        return idAdvertisement;
    }

    public void setIdAdvertisement(long idAdvertisement) {
        this.idAdvertisement = idAdvertisement;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public String getPeriodOfValidity() {
        return periodOfValidity;
    }

    public void setPeriodOfValidity(String periodOfValidity) {
        this.periodOfValidity = periodOfValidity;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType;
    }

    @Override
    public String toString() {
        return "Advertisement{" +
                "idAdvertisement=" + idAdvertisement +
                ", title='" + title + '\'' +
                ", industry='" + industry + '\'' +
                ", city='" + city + '\'' +
                ", salary=" + salary + '\'' +
                ", company='" + company + '\'' +
                ", dateAdded=" + dateAdded + '\'' +
                ", periodOfValidity=" + periodOfValidity + '\'' +
                ", contractType='" + contractType + '\'' +
                '}';
    }
}
