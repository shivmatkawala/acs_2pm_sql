-- create database
create database demoDB;

-- start using demoDB
use demoDB;

-- create a table called students
create table students(
	roll_no int,
	firstname varchar(20),
	lastname varchar(20),
	dob date,
	standard varchar(20),
	class_teacher varchar(20),
	gender bit
);

-- display table
select roll_no, firstname, lastname, dob, standard, class_teacher, gender from students;
select * from students;

-- insert records (rows) into table
insert into students
values
(1, 'ajay', 'chauhan', '5/23/1990', '8th', 'Miss Honey', 1),
(2, 'Heena', 'Shaikh', '5/5/1995', '7th', 'Mr Arun', 0);

----------------------------------------------------------------------------------------------
