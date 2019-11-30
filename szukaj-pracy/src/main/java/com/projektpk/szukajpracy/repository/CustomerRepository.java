package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.Model.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer,Long> {
}
