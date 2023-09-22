package com.garagna.h2demo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import com.garagna.h2demo.model.Book;
import com.garagna.h2demo.repository.BookRepository;

@SpringBootApplication
public class H2DemoApplication {

	public static void main(String[] args) {

	SpringApplication.run(H2DemoApplication.class, args);
	}

	@Bean
	CommandLineRunner commandLineRunner(BookRepository repository) {
		return args -> {

			repository.save(new Book(null,"test",432,"mark"));
		};
	}

}
