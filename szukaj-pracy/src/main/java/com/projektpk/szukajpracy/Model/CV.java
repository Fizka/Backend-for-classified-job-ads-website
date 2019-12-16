package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "CV")
public class CV {


    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idCV;

    @Column(name = "idCustomer")
    private int idCustomer;

    @Column(name = "personalData")
    private String personalData;

    @Column(name = "education")
    private String education;

    @Column(name = "hobbies")
    private String hobbies;

    @Column(name = "skills")
    private String skills;

    @Column(name = "workExperience")
    private String workExperience;

    @OneToOne
    private Customer customer_CV;

    public CV(int idCustomer, String personalData, String education, String hobbies, String skills, String workExperience) {
        this.idCustomer = idCustomer;
        this.personalData = personalData;
        this.education = education;
        this.hobbies = hobbies;
        this.skills = skills;
        this.workExperience = workExperience;
    }

    public long getIdCV() {
        return idCV;
    }

    public void setIdCV(long idCV) {
        this.idCV = idCV;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getPersonalData() {
        return personalData;
    }

    public void setPersonalData(String personalData) {
        this.personalData = personalData;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience;
    }

    @Override
    public String toString() {
        return "CV{" +
                "idCV=" + idCV +
                ", idCustomer=" + idCustomer +
                ", personalData='" + personalData + '\'' +
                ", education='" + education + '\'' +
                ", hobbies='" + hobbies + '\'' +
                ", skills='" + skills + '\'' +
                ", workExperience='" + workExperience + '\'' +
                '}';
    }
}

