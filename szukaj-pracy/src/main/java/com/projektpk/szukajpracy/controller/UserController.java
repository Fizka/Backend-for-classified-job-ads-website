package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.User;
import com.projektpk.szukajpracy.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

    @GetMapping("/users/{idUser}")
    public ResponseEntity<User> getUserById(@PathVariable("idUser") long idUser) {
        Optional<User> userData = repository.findById(idUser);

        if (userData.isPresent()) {
            return new ResponseEntity<>(userData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/users/login/{login}")
    public ResponseEntity<List<User>> getUserBylogin(@PathVariable("login") String login) {
        try{
        List <User> userData = repository.findByLogin(login);

        if (userData.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(userData, HttpStatus.OK);
    } catch (Exception e) {
        return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
    }
    }


    @PostMapping(value = "/users")
    public ResponseEntity<User> postUser(@RequestBody User user) {
        try {
            User _user = repository.save(new User(user.getLogin(), user.getPassword(), user.getMail()));
            return new ResponseEntity<>(_user, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/users/{idUser}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("idUser") long idUser) {
        try {
            repository.deleteById(idUser);
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

    @GetMapping(value = "users/usertype/{usertype}")
    public ResponseEntity<List<User>> findByusertype(@PathVariable int usertype) {
        try {
            List<User> users = repository.findByusertype(usertype);

            if (users.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(users, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @GetMapping(value = "users/mail/{mail}")
    public ResponseEntity<List<User>> findBymail(@PathVariable String mail) {
        try {
            List<User> users = repository.findBymail(mail);

            if (users.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(users, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/users/{idUser}")
    public ResponseEntity<User> updateUser(@PathVariable("idUser") long idUser, @RequestBody User user) {
        Optional<User> userData = repository.findById(idUser);

        if (userData.isPresent()) {
            User _user = userData.get();
            _user.setLogin(user.getLogin());
            _user.setPassword(user.getPassword());
            _user.setMail(user.getMail());
            _user.setUsertype(user.getUsertype());
            _user.setActive(user.isActive());
            return new ResponseEntity<>(repository.save(_user), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
/*
    @PostMapping("/login")
    public ResponseEntity<Integer> login(@RequestBody User user)
    {

        int status;
        HttpHeaders httpHeader = null;

        // Authenticate User.
        status = adminService.adminLogin(adminDetail.getEmailId(), adminDetail.getPassword());
        if (status > 0)
        {

            String tokenData[] = generateToken.createJWT(adminDetail.getEmailId(), "JavaTpoint", "JWT Token",
                    adminDetail.getRole(), 43200000);

            // get Token.
            String token = tokenData[0];

            System.out.println("Authorization :: " + token);

            // Create the Header Object
            httpHeader = new HttpHeaders();

            // Add token to the Header.
            httpHeader.add("Authorization", token);

            // Check if token is already exist.
            long isUserEmailExists = tokenService.getTokenDetail(adminDetail.getEmailId());


            if (isUserEmailExists > 0)
            {
                tokenService.updateToken(adminDetail.getEmailId(), token, tokenData[1]);
            }
            else
            {
                tokenService.saveUserEmail(adminDetail.getEmailId(), status);
                tokenService.updateToken(adminDetail.getEmailId(), token, tokenData[1]);
            }

            return new ResponseEntity<Integer>(status, httpHeader, HttpStatus.OK);
        }

        // if not authenticated return  status what we get.
        else
        {
            return new ResponseEntity<Integer>(status, httpHeader, HttpStatus.OK);
        }
    }

*/
}
