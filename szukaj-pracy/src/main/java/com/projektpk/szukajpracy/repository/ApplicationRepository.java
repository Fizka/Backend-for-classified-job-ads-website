package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.model.Application;
import com.projektpk.szukajpracy.model.Customer;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ApplicationRepository extends CrudRepository<Application, Long> {

    List<Application> findByCustomersApplication(Customer CustomersApplication);
}
