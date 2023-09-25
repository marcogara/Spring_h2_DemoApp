package com.garagna.h2demo;

import java.text.SimpleDateFormat;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import com.garagna.h2demo.model.Book;
import com.garagna.h2demo.model.Student;

import java.util.Date;

import com.garagna.h2demo.repository.BookRepository;
import com.garagna.h2demo.repository.StudentRepository;

// to access the database on the browser: http://localhost:8080/h2-console/
// with jdbc URL: jdbc:h2:mem:bookstore
@SpringBootApplication
public class H2DemoApplication
{

	public static void main(String[] args)
	{

		SpringApplication.run(H2DemoApplication.class, args);
	}

	// Populate initial data into the database (alternative to using schema.sql)
	@Bean
	CommandLineRunner bookCommandLineRunner(BookRepository repository)
	{
		return args ->
		{

			repository.save(new Book(null, "test", 432, "mark"));
			repository.save(new Book(null, "Life 3.0", 390, "Max tegmark"));

			for (Book book : repository.findAll())
			{
				System.out.println(book);

			}

		};
	}

	@Bean
	CommandLineRunner studentCommandLineRunner(StudentRepository repository)
	{
		return args ->
		{

			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date dateOfBirth = dateFormat.parse("1997-01-15");
			repository.save(new Student(null, "Kevin", "kevin@example.com", "Computer Science", "Computer Science Department", 2020, 2024, dateOfBirth, "+1234567890", "123 Main St"));

			for (Student student : repository.findAll())
			{
				System.out.println(student);

			}
		};

	}

	/*
	In the Spring Framework, @Bean is an annotation used to declare a method as a producer of a bean managed by the Spring container. Beans are objects that Spring manages and provides to other parts of your application. This @Bean method, named commandLineRunner, serves a specific purpose:

    Bean Declaration: By annotating a method with @Bean, you are telling Spring that this method should be used to create and configure a bean. In this case, it creates a CommandLineRunner bean.

    Bean Configuration: The method's return value (CommandLineRunner) is the type of the bean being configured. This bean typically encapsulates a specific task or behavior that your application needs.

    Dependency Injection: Inside the method, you can see that it takes an argument, BookRepository repository. Spring will automatically provide an instance of the BookRepository bean as an argument to this method. This is known as dependency injection, where Spring manages the dependencies your beans need.

    Initialization Logic: The body of the method contains logic to be executed when the application starts. In this case, it inserts initial data into a database using the repository (a data access component) provided by Spring. This is a common use case for @Bean methods: performing initialization tasks for a specific bean.

    CommandLineRunner: The CommandLineRunner interface is part of Spring Boot and provides a way to run code at application startup. It's often used for tasks like data seeding, cache warming, or other setup procedures. When your Spring Boot application starts, Spring will automatically find and execute all CommandLineRunner beans.

In summary, the @Bean annotation marks a method as a bean factory method, and the method is responsible for configuring and returning a bean instance. The bean can encapsulate a specific functionality or behavior, and Spring manages its lifecycle and dependencies. In this case, the commandLineRunner bean runs code at application startup to populate initial data into a database, serving as an alternative to using SQL scripts.

	 */
}
