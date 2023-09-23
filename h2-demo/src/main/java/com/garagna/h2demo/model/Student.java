package com.garagna.h2demo.model;

import org.springframework.data.annotation.Id;

public record Student(@Id Integer id, String student_name, String course){
}


