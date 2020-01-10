package com.projektpk.szukajpracy.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "survey")
public class Survey implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idSurvey;

    @Column(name = "title")
    private String title;

    @Column(name = "idauthor")
    private int idauthor;

    @Column(name = "numberofquestions")
    private int numberofquestions;

    @OneToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "company_id", nullable = false)
    @JsonIgnore
    private Company survey;

    public Survey(String title, int numberofquestions, int idauthor) {
        this.idauthor = idauthor;
        this.title = title;
        this.numberofquestions = numberofquestions;
    }

    public Survey(String title, int idauthor, int numberofquestions, Company survey) {
        this.title = title;
        this.idauthor = idauthor;
        this.numberofquestions = numberofquestions;
        this.survey = survey;
    }

    public Survey() {
    }

    public long getIdSurvey() {
        return idSurvey;
    }

    public void setIdSurvey(long idSurvey) {
        this.idSurvey = idSurvey;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getIdauthor() {
        return idauthor;
    }

    public void setIdauthor(int idauthor) {
        this.idauthor = idauthor;
    }

    public int getNumberofquestions() {
        return numberofquestions;
    }

    public void setNumberofquestions(int numberofquestions) {
        this.numberofquestions = numberofquestions;
    }

    public Company getSurvey() {
        return survey;
    }

    public void setSurvey(Company survey) {
        this.survey = survey;
    }

    @Override
    public String toString() {
        return "Survey{" +
                "idSurvey=" + idSurvey +
                ", title='" + title + '\'' +
                ", idauthor='" + idauthor + '\'' +
                ", numberofquestions=" + numberofquestions +
                '}';
    }
}

