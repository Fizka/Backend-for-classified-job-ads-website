package com.projektpk.szukajpracy.controller;


import com.projektpk.szukajpracy.Model.Advertisement;
import com.projektpk.szukajpracy.repository.AdvertisementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/advertisement")
public class AdvertisementController {

    @Autowired
    AdvertisementRepository repository;

    @GetMapping()
    public ResponseEntity<List<Advertisement>> getAllAdvertisements() {
        List<Advertisement> advertisement = new ArrayList<>();
        try {
            repository.findAll().forEach(advertisement::add);

            if (advertisement.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(advertisement, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/{idAdvertisement}")
    public ResponseEntity<Advertisement> getAdvertisementById(@PathVariable("idAdvertisement") long idAdvertisement) {
        Optional<Advertisement> advertisementData = repository.findById(idAdvertisement);

        if (advertisementData.isPresent()) {
            return new ResponseEntity<>(advertisementData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "")
    public ResponseEntity<Advertisement> postAdvertisment(@RequestBody Advertisement advertisement) {
        try {
            Advertisement _advertisement = repository.save(new Advertisement(advertisement.getTitle(),
                    advertisement.getIndustry(), advertisement.getCity(), advertisement.getSalary(),
                    advertisement.getCompany(), advertisement.getDateAdded(), advertisement.getPeriodOfValidity(),
                    advertisement.getContractType()));
            return new ResponseEntity<>(_advertisement, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/{idAdvertisement}")
    public ResponseEntity<HttpStatus> deleteAdvertisment(@PathVariable("idAdvertisement") long idAdvertisement) {
        try {
            repository.deleteById(idAdvertisement);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("")
    public ResponseEntity<HttpStatus> deleteAllAdvertisements() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @PutMapping("/{idAdvertisement}")
    public ResponseEntity<Advertisement> updateAdvertisement(@PathVariable("idAdvertisement") long idAdvertisement,
                                                             @RequestBody Advertisement advertisement) {
        Optional<Advertisement> advertisementData = repository.findById(idAdvertisement);

        if (advertisementData.isPresent()) {

            Advertisement _advertisement = advertisementData.get();
           _advertisement.setCity(advertisement.getCity());
            _advertisement.setCompany(advertisement.getCompany());
            _advertisement.setContractType(advertisement.getContractType());
            _advertisement.setDateAdded(advertisement.getDateAdded());
            _advertisement.setIndustry(advertisement.getIndustry());
            _advertisement.setPeriodOfValidity(advertisement.getPeriodOfValidity());
            _advertisement.setSalary(advertisement.getSalary());
            _advertisement.setTitle(advertisement.getTitle());

            return new ResponseEntity<>(repository.save(_advertisement), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
