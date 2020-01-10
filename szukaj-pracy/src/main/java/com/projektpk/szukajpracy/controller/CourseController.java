package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.Model.Course;
import com.projektpk.szukajpracy.repository.CourseRepository;
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
public class CourseController {

    @Autowired
    CourseRepository repository;

    @GetMapping("/courses")
    public ResponseEntity<List<Course>> getAllCourses() {
        List<Course> courses = new ArrayList<>();
        try {
            repository.findAll().forEach(courses::add);

            if (courses.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(courses, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/courses/{idCourse}")
    public ResponseEntity<Course> getCourseById(@PathVariable("idCourse") long idCourse) {
        Optional<Course> courseData = repository.findById(idCourse);

        if (courseData.isPresent()) {
            return new ResponseEntity<>(courseData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @PostMapping(value = "/courses")
    public ResponseEntity<Course> postCourse(@RequestBody Course course) {
        try {
            Course _course = repository.save(new Course( course.getTitle(), course.getType()));
            return new ResponseEntity<>(_course, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/courses/{idCourse}")
    public ResponseEntity<HttpStatus> deleteCourse(@PathVariable("idCourse") long idCourse) {
        try {
            repository.deleteById(idCourse);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/courses")
    public ResponseEntity<HttpStatus> deleteAllCourses() {
        try {
            repository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }

    @PutMapping("/courses/{idCourse}")
    public ResponseEntity<Course> updateCourse(@PathVariable("idCourse") long idCourse, @RequestBody Course course) {
        Optional<Course> courseData = repository.findById(idCourse);

        if (courseData.isPresent()) {
            Course _course = courseData.get();
            _course.setTitle(course.getTitle());
            _course.setType(course.getType());
            return new ResponseEntity<>(repository.save(_course), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
