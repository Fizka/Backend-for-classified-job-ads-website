package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "course")
public class Course {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idCourse;

    @Column(name = "idCustomer")
    private int idCustomer;

    @Column(name = "title")
    private String title;

    @Column(name = "type")
    private String type;

    public Course(int idCustomer, String title, String type) {
        this.idCustomer = idCustomer;
        this.title = title;
        this.type = type;
    }

    public long getIdCourse() {
        return idCourse;
    }

    public void setIdCourse(long idCourse) {
        this.idCourse = idCourse;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Course{" +
                "idCourse=" + idCourse +
                ", idCustomer=" + idCustomer +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}

