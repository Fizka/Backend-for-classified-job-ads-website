package com.projektpk.szukajpracy.controller;

import com.projektpk.szukajpracy.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/course")
public class CourseController {

    @Autowired
    CourseRepository repository;

}
