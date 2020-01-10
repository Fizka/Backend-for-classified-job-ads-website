package com.projektpk.szukajpracy.controller;


import com.projektpk.szukajpracy.Model.Customer;
import com.projektpk.szukajpracy.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/")
public class CustomerController {

    @Autowired
    CustomerRepository repository;

    @GetMapping("/customers")
    public ResponseEntity<List<Customer>> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        try {
            repository.findAll().forEach(customers::add);

            if (customers.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(customers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/customers/{idCustomer}")
    public ResponseEntity<Customer> getCustomerById(@PathVariable("idCustomer") long idCustomer) {
        Optional<Customer> cusotmerData = repository.findById(idCustomer);

        if (cusotmerData.isPresent()) {
            return new ResponseEntity<>(cusotmerData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/customers")
    public ResponseEntity<Customer> postCustomer(@RequestBody Customer customer) {
        try {
            Customer _customer = repository.save(new Customer(customer.getFirstName(), customer.getLastName(),
                    customer.getAddress(), customer.getPesel(), customer.getPesel()));
            return new ResponseEntity<>(_customer, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/customers/{idCustomer}")
    public ResponseEntity<HttpStatus> deleteCustomer(@PathVariable("idCustomer") long idCustomer) {
        try {
            repository.deleteById(idCustomer);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/customers")
    public ResponseEntity<HttpStatus> deleteAllCustomer() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @PutMapping("/users/{idCustomer}")
    public ResponseEntity<Customer> updateCustomer(@PathVariable("idCustomer") long idCustomer, @RequestBody Customer customer) {
        Optional<Customer> customerData = repository.findById(idCustomer);

        if (customerData.isPresent()) {
            Customer _customer = customerData.get();

            _customer.setAddress(customer.getAddress());
            _customer.setCertificate(customer.isCertificate());
            _customer.setCourse(customer.isCourse());
            //TODO sprawdz cv boolean
            _customer.setCv(customer.isCv());
            _customer.setFirstName(customer.getFirstName());
            _customer.setLastName(customer.getLastName());
            _customer.setPesel(customer.getPesel());
            _customer.setPhonenumber(customer.getPhonenumber());

            return new ResponseEntity<>(repository.save(_customer), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
