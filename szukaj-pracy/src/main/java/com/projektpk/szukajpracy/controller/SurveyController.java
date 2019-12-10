package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.Survey;
import com.projektpk.szukajpracy.repository.SurveyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/survey")
public class SurveyController {

    @Autowired
    SurveyRepository repository;

    @GetMapping("/survey")
    public ResponseEntity<List<Survey>> getAllSurvey() {
        List<Survey> survey = new ArrayList<>();
        try {
            repository.findAll().forEach(survey::add);

            if (survey.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(survey, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @GetMapping("/survey/{idSurvey}")
    public ResponseEntity<Survey> getSurveyById(@PathVariable("idSurvey") long idSurvey) {
        Optional<Survey> surveyData = repository.findById(idSurvey);

        if (surveyData.isPresent()) {
            return new ResponseEntity<>(surveyData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/survey")
    public ResponseEntity<Survey> postSurvey(@RequestBody Survey survey) {
        try {
            Survey _survey = repository.save(new Survey(survey.getTitle(), survey.getNumberofquestions(), survey.getIdauthor()));
            return new ResponseEntity<>(_survey, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/survey/{idSurvey}")
    public ResponseEntity<HttpStatus> deleteSurvey(@PathVariable("idSurvey") long idSurvey) {
        try {
            repository.deleteById(idSurvey);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/survey")
    public ResponseEntity<HttpStatus> deleteAllSurvey() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @GetMapping(value = "survey/Idauthor/{Idauthor}")
    public ResponseEntity<List<Survey>> findByusertype(@PathVariable int Idauthor) {
        try {
            List<Survey> survey = repository.findByIdauthor(Idauthor);

            if (survey.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(survey, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @GetMapping(value = "survey/{title}")
    public ResponseEntity<List<Survey>> findBytitle(@PathVariable String title) {
        try {
            List<Survey> survey = repository.findByTitle(title);

            if (survey.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(survey, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/survey/{idSurvey}")
    public ResponseEntity<Survey> updateSurvey(@PathVariable("idSurvey") long idSurvey, @RequestBody Survey survey) {
        Optional<Survey> surveyData = repository.findById(idSurvey);

        if (surveyData.isPresent()) {
            Survey _survey = surveyData.get();

            return new ResponseEntity<>(repository.save(_survey), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
