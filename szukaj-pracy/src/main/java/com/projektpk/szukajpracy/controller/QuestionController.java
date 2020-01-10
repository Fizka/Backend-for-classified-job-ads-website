package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.Question;
import com.projektpk.szukajpracy.repository.QuestionRepository;
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
public class QuestionController {

    @Autowired
    QuestionRepository repository;

    @GetMapping("/questions")
    public ResponseEntity<List<Question>> getAllQuestions() {
        List<Question> questions = new ArrayList<>();
        try {
            repository.findAll().forEach(questions::add);

            if (questions.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(questions, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/questions/{idQuestion}")
    public ResponseEntity<Question> getQuestionsById(@PathVariable("idQuestion") long idQuestion) {
        Optional<Question> questionData = repository.findById(idQuestion);

        if (questionData.isPresent()) {
            return new ResponseEntity<>(questionData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/questions")
    public ResponseEntity<Question> postQuestions(@RequestBody Question question) {
        try {
            Question _question = repository.save(new Question(question.getAnswerOne(), question.getAnswerTwo(),
                    question.getAnswerThree(), question.getAnswerCorrect(), question.getTitle()));
            return new ResponseEntity<>(_question, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/questions/{idQuestion}")
    public ResponseEntity<HttpStatus> deleteQuestion(@PathVariable("idQuestion") long idQuestion) {
        try {
            repository.deleteById(idQuestion);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/questions")
    public ResponseEntity<HttpStatus> deleteAllQuestions() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @PutMapping("/questions/{idQuestion}")
    public ResponseEntity<Question> updateUser(@PathVariable("idQuestion") long idQuestion, @RequestBody Question question) {
        Optional<Question> questionData = repository.findById(idQuestion);

        if (questionData.isPresent()) {
            Question _question = questionData.get();
            _question.setAnswerCorrect(question.getAnswerCorrect());
            _question.setAnswerOne(question.getAnswerOne());
            _question.setAnswerTwo(question.getAnswerTwo());
            _question.setAnswerThree(question.getAnswerThree());
            _question.setTitle(question.getTitle());
            return new ResponseEntity<>(repository.save(_question), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
