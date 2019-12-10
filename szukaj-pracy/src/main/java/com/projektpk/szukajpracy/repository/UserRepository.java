package com.projektpk.szukajpracy.repository;
import com.projektpk.szukajpracy.Model.UserEnt;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface UserRepository extends CrudRepository<UserEnt,Long>{
    List<UserEnt> findByusertype(int usertype);
    List<UserEnt> findBymail(String mail);
    List<UserEnt> findBypassword(String password);
    List<UserEnt> findBylogin(String login);
}
