package com.garagna.h2demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.garagna.h2demo.model.Book;

public interface BookRepository extends CrudRepository<Book, Integer>
{


}
