package com.projektpk.szukajpracy.repository;
import java.util.List;

import com.projektpk.szukajpracy.Model.User;
import org.springframework.data.repository.CrudRepository;


public interface UserRepository extends CrudRepository<User,Long>{
    List<User> findByusertype(int usertype);
    List<User> findBymail(String mail);
}
