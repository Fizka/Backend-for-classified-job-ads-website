package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.model.*;
import org.springframework.data.repository.CrudRepository;

public interface CVRepository extends CrudRepository<CV,Long> {

    CV findByCv (Customer Cv);
}
