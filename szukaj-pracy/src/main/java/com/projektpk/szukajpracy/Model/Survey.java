package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "survey")
public class Survey {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idSurvey;

    @Column(name = "title")
    private String title;

    @Column(name = "idauthor")
    private int idauthor;

    @Column(name = "numberofquestions")
    private int numberofquestions;

    public Survey(String title, int numberofquestions, int idauthor) {
        this.idauthor = idauthor;
        this.title = title;
        this.numberofquestions = numberofquestions;
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

