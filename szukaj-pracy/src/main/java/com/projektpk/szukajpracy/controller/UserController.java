package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.UserEnt;
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
    public ResponseEntity<List<UserEnt>> getAllUsers() {
        List<UserEnt> userEnts = new ArrayList<>();
        try {
            repository.findAll().forEach(userEnts::add);

            if (userEnts.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(userEnts, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/users/{idUser}")
    public ResponseEntity<UserEnt> getUserById(@PathVariable("idUser") long idUser) {
        Optional<UserEnt> userData = repository.findById(idUser);

        if (userData.isPresent()) {
            return new ResponseEntity<>(userData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/users")
    public ResponseEntity<UserEnt> postUser(@RequestBody UserEnt userEnt) {
        try {
            UserEnt _userEnt = repository.save(new UserEnt(userEnt.getLogin(), userEnt.getPassword(), userEnt.getMail()));
            return new ResponseEntity<>(_userEnt, HttpStatus.CREATED);
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
    public ResponseEntity<List<UserEnt>> findByusertype(@PathVariable int usertype) {
        try {
            List<UserEnt> userEnts = repository.findByusertype(usertype);

            if (userEnts.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(userEnts, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @GetMapping(value = "users/mail/{mail}")
    public ResponseEntity<List<UserEnt>> findBymail(@PathVariable String mail) {
        try {
            List<UserEnt> userEnts = repository.findBymail(mail);

            if (userEnts.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(userEnts, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/users/{idUser}")
    public ResponseEntity<UserEnt> updateUser(@PathVariable("idUser") long idUser, @RequestBody UserEnt userEnt) {
        Optional<UserEnt> userData = repository.findById(idUser);

        if (userData.isPresent()) {
            UserEnt _userEnt = userData.get();
            _userEnt.setLogin(userEnt.getLogin());
            _userEnt.setPassword(userEnt.getPassword());
            _userEnt.setMail(userEnt.getMail());
            _userEnt.setUsertype(userEnt.getUsertype());
            _userEnt.setActive(userEnt.isActive());
            return new ResponseEntity<>(repository.save(_userEnt), HttpStatus.OK);
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
