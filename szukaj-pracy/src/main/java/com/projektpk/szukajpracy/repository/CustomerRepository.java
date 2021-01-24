package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.model.Customer;
import com.projektpk.szukajpracy.model.User;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Long> {

    Customer findByUserCustomer(User UserCustomer);

    Customer findCustomerByUserCustomer(User UserCustomer);
}
