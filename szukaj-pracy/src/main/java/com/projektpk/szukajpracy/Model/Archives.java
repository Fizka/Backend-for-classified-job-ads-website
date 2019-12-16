package com.projektpk.szukajpracy.Model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "archives")
public class Archives {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idArchives;

    @Column(name = "title")
    private int title;

    @Column(name = "author")
    private String Author;

    @Column(name = "date")
    private java.util.Date Date;

    @OneToMany
    private List<Advertisement> advertisements_Archives;

}
