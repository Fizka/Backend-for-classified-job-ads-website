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

//mapping for restful request
@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    UserRepository repository;

    @GetMapping("/users")
    public ResponseEntity<List<User>> getAllUsers() {
        List<User> users = new ArrayList<>();
        try {
            repository.findAll().forEach(users::add);

            if (users.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(users, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/users/{id_User}")
    public ResponseEntity<User> getUserById(@PathVariable("id_User") long id_User) {
        Optional<User> userData = repository.findById(id_User);

        if (userData.isPresent()) {
            return new ResponseEntity<>(userData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/users")
    public ResponseEntity<User> postUser(@RequestBody User user) {
        try {
            User _user = repository.save(new User(user.getLogin(), user.getPassword(), user.getUsertype()));
            return new ResponseEntity<>(_user, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/users/{id_User}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("id_User") long id_User) {
        try {
            repository.deleteById(id_User);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/users")
    public ResponseEntity<HttpStatus> deleteAllUsers() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @GetMapping(value = "customers/usertype/{usertype}")
    public ResponseEntity<List<User>> findByAge(@PathVariable int usertype) {
        try {
            List<User> customers = repository.findByusertype(usertype);

            if (customers.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(customers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }


    @PutMapping("/users/{id_User}")
    public ResponseEntity<User> updateUser(@PathVariable("id_User") long id_User, @RequestBody User user) {
        Optional<User> userData = repository.findById(id_User);

        if (userData.isPresent()) {
            User _user = userData.get();
            _user.setUsertype(user.getUsertype());
            _user.setLogin(user.getLogin());
            _user.setPassword(user.getPassword());
            _user.setActive(user.isActive());
            return new ResponseEntity<>(repository.save(_user), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
