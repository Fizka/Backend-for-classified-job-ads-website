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
    private long id_User;

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

    public User(String login, String password, int usertype) {
        this.password = password;
        this.login = login;
        this.usertype = usertype;
        this.active = false;
    }

    public long getId_User() {
        return id_User;
    }

    public void setId_User(long id_User) {
        this.id_User = id_User;
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
                "id_User=" + id_User +
                ", password='" + password + '\'' +
                ", login='" + login + '\'' +
                ", user_type='" + usertype + '\'' +
                ", active='" + active + '\'' +
                '}';
    }

}
