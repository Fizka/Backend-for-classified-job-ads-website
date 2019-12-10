package com.projektpk.szukajpracy.controller;


import com.projektpk.szukajpracy.Model.Search;
import com.projektpk.szukajpracy.repository.SearchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/search")
public class SearchController {

    @Autowired
    SearchRepository repository;

    @GetMapping("")
    public ResponseEntity<List<Search>> getAllSearch() {
        List<Search> search = new ArrayList<>();
        try {
            repository.findAll().forEach(search::add);

            if (search.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(search, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/users/{idUser}")
    public ResponseEntity<Search> getSearchById(@PathVariable("idSearch") long idSearch) {
        Optional<Search> searchData = repository.findById(idSearch);

        if (searchData.isPresent()) {
            return new ResponseEntity<>(searchData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "")
    public ResponseEntity<Search> postSearch(@RequestBody Search search) {
        try {
            Search _search = repository.save(new Search(search.getIndustry(), search.getPosition(), search.getSpecyfication() ));
            return new ResponseEntity<>(_search, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/{idSearch}")
    public ResponseEntity<HttpStatus> deleteSearch(@PathVariable("idSearch") long idSearch) {
        try {
            repository.deleteById(idSearch);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("")
    public ResponseEntity<HttpStatus> deleteAllSearch() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }


    @PutMapping("/{idSearch}")
    public ResponseEntity<Search> updateSearch(@PathVariable("idSearch") long idSearch, @RequestBody Search serach) {
        Optional<Search> userData = repository.findById(idSearch);

        if (userData.isPresent()) {
            Search _search = userData.get();

            return new ResponseEntity<>(repository.save(_search), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
