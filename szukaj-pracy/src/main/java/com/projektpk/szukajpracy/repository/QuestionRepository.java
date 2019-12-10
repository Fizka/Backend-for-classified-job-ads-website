package com.projektpk.szukajpracy.repository;

import com.projektpk.szukajpracy.Model.Question;
import org.springframework.data.repository.CrudRepository;

public interface QuestionRepository extends CrudRepository<Question,Long> {
}
