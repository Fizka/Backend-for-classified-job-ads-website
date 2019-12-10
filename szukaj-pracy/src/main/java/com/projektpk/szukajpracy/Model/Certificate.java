package com.projektpk.szukajpracy.Model;

import javax.persistence.*;

@Entity
@Table(name = "certificate")
public class Certificate {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idCertificate;

    @Column(name = "idCustomer")
    private int idCustomer;

    @Column(name = "title")
    private String title;

    @Column(name = "type")
    private String type;

    public Certificate(int idCustomer, String title, String type) {
        this.idCustomer = idCustomer;
        this.title = title;
        this.type = type;
    }

    public long getIdCertificate() {
        return idCertificate;
    }

    public void setIdCertificate(long idCertificate) {
        this.idCertificate = idCertificate;
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
        return "Certificate{" +
                "idCertificate=" + idCertificate +
                ", idCustomer=" + idCustomer +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}

