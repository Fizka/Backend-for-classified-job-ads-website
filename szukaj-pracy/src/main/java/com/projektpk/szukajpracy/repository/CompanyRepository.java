package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.model.Company;
import com.projektpk.szukajpracy.model.User;
import org.springframework.data.repository.CrudRepository;

public interface CompanyRepository extends CrudRepository<Company, Long> {

    Company findByUsercompany(User usercompany);
}
