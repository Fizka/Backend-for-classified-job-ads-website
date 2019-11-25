package com.projektpk.szukajpracy.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.projektpk.szukajpracy.Model.User;
import com.projektpk.szukajpracy.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

//mapping for restful request
@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    UserRepository repository;

    @GetMapping("/User")
    public ResponseEntity<List<User>> getAllCustomers() {
        List<User> customers = new ArrayList<>();
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

    @GetMapping("/User/{id_User}")
    public ResponseEntity<User> getCustomerById(@PathVariable("id_User") long id_User) {
        Optional<User> userData = repository.findById(id_User);

        if (userData.isPresent()) {
            return new ResponseEntity<>(userData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/User")
    public ResponseEntity<User> postUser(@RequestBody User user) {
        try {
            User _user = repository.save(new User(user.getLogin(), user.getPassword(), user.getUser_type()));
            return new ResponseEntity<>(_user, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/User/{id_User}")
    public ResponseEntity<HttpStatus> deleteCustomer(@PathVariable("id_User") long id_User) {
        try {
            repository.deleteById(id_User);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/User")
    public ResponseEntity<HttpStatus> deleteAllCustomers() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }


    @GetMapping(value = "User/user_type/{user_type}")
    public ResponseEntity<List<User>> findBytype(@PathVariable String user_type) {
        try {
            List<User> customers = repository.findBytype(user_type);

            if (customers.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(customers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/customers/{id_USer}")
    public ResponseEntity<User> updateCustomer(@PathVariable("id_User") long id_User, @RequestBody User user) {
        Optional<User> userData = repository.findById(id_User);

        if (userData.isPresent()) {
            User _user = userData.get();
            _user.setLogin(user.getLogin());
            _user.setPassword(user.getPassword());
            _user.setActive(user.isActive());
            return new ResponseEntity<>(repository.save(_user), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
