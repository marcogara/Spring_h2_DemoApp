package com.garagna.h2demo.model;

import java.util.Date;

import org.springframework.data.annotation.Id;

public record Student(@Id Integer id, String student_name,String email, String course, String department, Integer enrollment_year, Integer graduation_year, Date date_of_birth, String contact_number, String address){
}








