package com.projektpk.szukajpracy.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long idUser;

    @Column(name = "password")
    private String password;

    @Column(name = "login")
    private String login;

    @Column(name = "usertype")
    private int usertype;

    @Column(name = "active")
    private boolean active;

    public User(){
    }

    public User(String login, String password) {
        this.password = password;
        this.login = login;
        this.usertype = 1;
        this.active = false;
    }

    public long getIdUser() {
        return idUser;
    }

    public void setIdUser(long idUser) {
        this.idUser = idUser;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public int getUsertype() {
        return this.usertype;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", password='" + password + '\'' +
                ", login='" + login + '\'' +
                ", usertype='" + usertype + '\'' +
                ", active='" + active + '\'' +
                '}';
    }

}
