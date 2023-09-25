
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

INSERT INTO student (student_name, email, course, department, enrollment_year, graduation_year, date_of_birth, contact_number, address)
VALUES
    ('Marc', 'marc@example.com', 'Computer Science', 'Computer Science Department', 2020, 2024, '2000-01-15', '+1234567890', '123 Main St'),
    ('Mohamed', 'mohamed@example.com', 'Electrical Engineering', 'Electrical Engineering Department', 2019, 2023, '1999-03-22', '+9876543210', '456 Elm St'),
    ('Alice', 'alice@example.com', 'Biology', 'Biology Department', 2021, 2025, '2001-05-10', '+5555555555', '789 Oak St'),
    ('Bob', 'bob@example.com', 'History', 'History Department', 2018, 2022, '1998-11-30', '+1111111111', '101 Maple St'),
    ('Emily',  'emily@example.com', 'Mathematics', 'Mathematics Department', 2017, 2021, '1997-07-07', '+9999999999', '222 Pine St'),
    ('Daniel', 'daniel@example.com', 'Physics', 'Physics Department', 2019, 2023, '1999-09-18', '+7777777777', '333 Cedar St'),
    ('Sophia', 'sophia@example.com', 'Chemistry', 'Chemistry Department', 2020, 2024, '2000-02-25', '+6666666666', '444 Birch St'),
    ('Oliver', 'oliver@example.com', 'English', 'English Department', 2018, 2022, '1998-04-11', '+2222222222', '555 Spruce St'),
    ('Ava', 'ava@example.com', 'Psychology', 'Psychology Department', 2021, 2025, '2001-08-05', '+8888888888', '666 Redwood St'),
    ('Liam', 'liam@example.com', 'Sociology', 'Sociology Department', 2019, 2023, '1999-12-29', '+4444444444', '777 Walnut St');


insert into book(title,pages,author) values
	('Atomic Habits', 200, 'James Clear'),
	('Mindset', 330, 'Dr. Carol S. Dweck'),
	('Holly', 300, 'Stephen King'),
	('Control your Mind', 234,'Eric Robertson'),
	('Das Mindset',543,'Flamur Berischa'),
	('Surrounded by idiots', 300, 'Thomas Erikson'),
    ('The Power of Now', 236, 'Eckhart Tolle'),
    ('The Catcher in the Rye', 224, 'J.D. Salinger'),
    ('To Kill a Mockingbird', 281, 'Harper Lee'),
    ('The Great Gatsby', 180, 'F. Scott Fitzgerald');



