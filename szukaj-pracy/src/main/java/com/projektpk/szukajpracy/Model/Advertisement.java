package com.projektpk.szukajpracy.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "advertisement")
public class Advertisement implements Serializable {

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

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "survey_id",
            nullable = false
    )
    @JsonIgnore
    private Survey survey_Advertisement;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "company_id",
            nullable = false
    )
    @JsonIgnore
    private Company company_Advertisement;

    @OneToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "search_id", nullable = false)
    @JsonIgnore
    private Search advertisement_Search;

    /*
    //application
    @OneToOne(
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            mappedBy = "advertisement"
    )
    @JsonIgnore
    private Application application;
*/


    public Advertisement(String title, String industry, String city, int salary, String company, String dateAdded,
                         String periodOfValidity, String contractType, Survey survey_Advertisement, Company company_Advertisement,Search advertisement_Search) {
        this.title = title;
        this.industry = industry;
        this.city = city;
        this.salary = salary;
        this.company = company;
        this.dateAdded = dateAdded;
        this.periodOfValidity = periodOfValidity;
        this.contractType = contractType;
        this.survey_Advertisement = survey_Advertisement;
        this.company_Advertisement = company_Advertisement;
        this.advertisement_Search = advertisement_Search;
    }

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

    public Survey getSurvey_Advertisement() {
        return survey_Advertisement;
    }

    public void setSurvey_Advertisement(Survey survey_Advertisement) {
        this.survey_Advertisement = survey_Advertisement;
    }

    public Company getCompany_Advertisement() {
        return company_Advertisement;
    }

    public void setCompany_Advertisement(Company company_Advertisement) {
        this.company_Advertisement = company_Advertisement;
    }

    public Search getAdvertisement_Search() {
        return advertisement_Search;
    }

    public void setAdvertisement_Search(Search advertisement_Search) {
        this.advertisement_Search = advertisement_Search;
    }

    /*
    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }
*/

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
