package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.Application;
import com.projektpk.szukajpracy.repository.ApplicationRepository;
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
public class ApplicationController {

    @Autowired
    ApplicationRepository repository;

    @GetMapping("/applications")
    public ResponseEntity<List<Application>> getAllApplications() {
        List<Application> applications = new ArrayList<>();
        try {
            repository.findAll().forEach(applications::add);

            if (applications.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(applications, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/applications/{idApplication}")
    public ResponseEntity<Application> getApplicationById(@PathVariable("idApplication") long idApplication) {
        Optional<Application> applicationData = repository.findById(idApplication);

        if (applicationData.isPresent()) {
            return new ResponseEntity<>(applicationData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/applications")
    public ResponseEntity<Application> postApplication(@RequestBody Application application) {
        try {
            Application _user = repository.save(new Application(application.getFirstName(), application.getLastName(),
                    application.getMail(), application.getPhoneNumber(), application.getAddress()));
            return new ResponseEntity<>(_user, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/applications/{idApplication}")
    public ResponseEntity<HttpStatus> deleteApplication(@PathVariable("idApplication") long idApplication) {
        try {
            repository.deleteById(idApplication);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/applications")
    public ResponseEntity<HttpStatus> deleteAllApplications() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }


    @PutMapping("/applications/{idApplication}")
    public ResponseEntity<Application> updateUser(@PathVariable("idApplication") long idApplication, @RequestBody Application application) {
        Optional<Application> applicationData = repository.findById(idApplication);

        if (applicationData.isPresent()) {
            Application _application = applicationData.get();
            _application.setAddress(application.getAddress());
            _application.setFirstName(application.getFirstName());
            _application.setLastName(application.getLastName());
            _application.setMail(application.getMail());
            _application.setPhoneNumber(application.getPhoneNumber());
            return new ResponseEntity<>(repository.save(_application), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}

