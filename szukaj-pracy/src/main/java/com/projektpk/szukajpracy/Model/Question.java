package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "question")
public class Question {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idQuestion;

    @Column(name = "idSurvey")
    private String idSurvey;

    @Column(name = "answerOne")
    private String answerOne;

    @Column(name = "answerTwo")
    private String answerTwo;

    @Column(name = "answerThree")
    private String answerThree;

    @Column(name = "answerCorrect")
    private String answerCorrect;

    @Column(name = "title")
    private String title;

    @ManyToOne
    @JoinColumn(name = "survey_id_survey")
    private Survey Survey_question;

    public Question(String answerOne, String answerTwo, String answerThree, String answerCorrect, String title) {
        this.answerOne = answerOne;
        this.answerTwo = answerTwo;
        this.answerThree = answerThree;
        this.answerCorrect = answerCorrect;
        this.title = title;
    }

    public long getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(long idQuestion) {
        this.idQuestion = idQuestion;
    }

    public String getIdSurvey() {
        return idSurvey;
    }

    public void setIdSurvey(String idSurvey) {
        this.idSurvey = idSurvey;
    }

    public String getAnswerOne() {
        return answerOne;
    }

    public void setAnswerOne(String answerOne) {
        this.answerOne = answerOne;
    }

    public String getAnswerTwo() {
        return answerTwo;
    }

    public void setAnswerTwo(String answerTwo) {
        this.answerTwo = answerTwo;
    }

    public String getAnswerThree() {
        return answerThree;
    }

    public void setAnswerThree(String answerThree) {
        this.answerThree = answerThree;
    }

    public String getAnswerCorrect() {
        return answerCorrect;
    }

    public void setAnswerCorrect(String answerCorrect) {
        this.answerCorrect = answerCorrect;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Question{" +
                "idQuestion=" + idQuestion +
                ", idSurvey='" + idSurvey + '\'' +
                ", answerOne='" + answerOne + '\'' +
                ", answerTwo='" + answerTwo + '\'' +
                ", answerThree='" + answerThree + '\'' +
                ", answerCorrect='" + answerCorrect + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}

