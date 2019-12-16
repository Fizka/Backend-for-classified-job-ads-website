package com.projektpk.szukajpracy.Model;

import javax.persistence.*;


@Entity
@Table(name = "search")
public class Search {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idCategoriesOfSearch;

    @Column(name = "industry")
    private String industry;

    @Column(name = "position")
    private String position;

    @Column(name = "specyfication")
    private String specyfication;

    @OneToOne
    private Advertisement advertisement_Search;

    public Search(String industry, String position, String specyfication) {
        this.industry = industry;
        this.position = position;
        this.specyfication = specyfication;
    }

    public long getIdCategoriesOfSearch() {
        return idCategoriesOfSearch;
    }

    public void setIdCategoriesOfSearch(long idCategoriesOfSearch) {
        this.idCategoriesOfSearch = idCategoriesOfSearch;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSpecyfication() {
        return specyfication;
    }

    public void setSpecyfication(String specyfication) {
        this.specyfication = specyfication;
    }

    @Override
    public String toString() {
        return "Search{" +
                "idCategoriesOfSearch=" + idCategoriesOfSearch +
                ", industry='" + industry + '\'' +
                ", position='" + position + '\'' +
                ", specyfication='" + specyfication + '\'' +
                '}';
    }
}
