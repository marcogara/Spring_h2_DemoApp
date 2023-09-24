
create table book(
	id int auto_increment,
	title varchar(255) NOT NULL,
	pages int NOT NULL,
	author varchar(255) NOT NULL
);

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    course VARCHAR(50), -- Full course name
    department VARCHAR(50), -- Department within the university
    enrollment_year INT, -- Year when the student enrolled
    graduation_year INT, -- Expected year of graduation
    date_of_birth DATE,
    contact_number VARCHAR(20),
    address VARCHAR(255)
);

INSERT INTO student (student_name, student_id, email, course, department, enrollment_year, graduation_year, date_of_birth, gender, contact_number, address)
VALUES
    ('Marc', 'S123456', 'marc@example.com', 'Computer Science', 'Computer Science Department', 2020, 2024, '2000-01-15', 'Male', '+1234567890', '123 Main St'),
    ('Mohamed', 'S789012', 'mohamed@example.com', 'Electrical Engineering', 'Electrical Engineering Department', 2019, 2023, '1999-03-22', 'Male', '+9876543210', '456 Elm St'),
    ('Alice', 'S345678', 'alice@example.com', 'Biology', 'Biology Department', 2021, 2025, '2001-05-10', 'Female', '+5555555555', '789 Oak St'),
    ('Bob', 'S567890', 'bob@example.com', 'History', 'History Department', 2018, 2022, '1998-11-30', 'Male', '+1111111111', '101 Maple St'),
    ('Emily', 'S234567', 'emily@example.com', 'Mathematics', 'Mathematics Department', 2017, 2021, '1997-07-07', 'Female', '+9999999999', '222 Pine St'),
    ('Daniel', 'S678901', 'daniel@example.com', 'Physics', 'Physics Department', 2019, 2023, '1999-09-18', 'Male', '+7777777777', '333 Cedar St'),
    ('Sophia', 'S456789', 'sophia@example.com', 'Chemistry', 'Chemistry Department', 2020, 2024, '2000-02-25', 'Female', '+6666666666', '444 Birch St'),
    ('Oliver', 'S890123', 'oliver@example.com', 'English', 'English Department', 2018, 2022, '1998-04-11', 'Male', '+2222222222', '555 Spruce St'),
    ('Ava', 'S678901', 'ava@example.com', 'Psychology', 'Psychology Department', 2021, 2025, '2001-08-05', 'Female', '+8888888888', '666 Redwood St'),
    ('Liam', 'S234567', 'liam@example.com', 'Sociology', 'Sociology Department', 2019, 2023, '1999-12-29', 'Male', '+4444444444', '777 Walnut St');



insert into book(title,pages,author) values ('Book 1', 200, 'Author 1');
insert into book(title,pages,author) values ('Book 2', 300, 'Author 2');
