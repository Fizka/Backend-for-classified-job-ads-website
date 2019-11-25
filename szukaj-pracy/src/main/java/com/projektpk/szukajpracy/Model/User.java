package com.projektpk.szukajpracy.Model;


import org.springframework.data.annotation.Id;

import javax.persistence.*;

@Entity
@Table(name = "User")
public class User {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id_User;

    @Column(name = "password")
    private String password;

    @Column(name = "login")
    private String login;

    @Column(name = "user_type")
    private String user_type;

    @Column(name = "active")
    private boolean active;

    public User(){

    }

    public User(String login, String password, String user_type) {
        this.password = password;
        this.login = login;
        this.user_type = user_type;
        this.active = false;
    }

    public Integer getId_User() {
        return id_User;
    }

    public void setId_User(Integer id_User) {
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

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
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
                ", user_type='" + user_type + '\'' +
                ", active='" + active + '\'' +
                '}';
    }

}
