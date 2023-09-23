package com.garagna.h2demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.garagna.h2demo.model.Student;

public interface StudentRepository extends CrudRepository<Student, Integer>

{

}
