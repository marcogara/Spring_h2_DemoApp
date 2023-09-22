
create table book(
	id int auto_increment,
	title varchar(255) NOT NULL,
	pages int NOT NULL,
	author varchar(255) NOT NULL
);


insert into book(title,pages,author) values ('Book 1', 200, 'Author 1');
insert into book(title,pages,author) values ('Book 2', 300, 'Author 2');
