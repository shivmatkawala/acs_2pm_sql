-- Structured Query Language Datatypes:

	-- Numeric Datatypes:
		-- Int => A number without decimal point
		-- Float => A number with decimal point, with uncontrolled precision
		-- Decimal => A number  with decimal point, with controlled precision
		-- Money => Speciall designed for amounts

	-- Text Datatypes:
		-- char  => text(20)  not more than 20 charecters. not memory friendly, Only for English
		-- varchar => text(20)  not more than 20 charecters, memory friendly, only for English
		-- nvarchar => text(20) in cluding english, all international languages, memory friendly, 

	-- Date & Time Datatypes:
		-- date  => 'MM/DD/YYYY'
		-- time  => 'HH:mm:ss'
		-- datetime => 'MM/DD/YYYY HH:mm:ss TimeZone'

	-- Boolean Datatype:
		-- Bit  (0, 1)

-----------------------------------------------------------------------------------

-- Create a Database:

CREATE DATABASE HrDB;

use HrDB;

CREATE TABLE departments(
	deptID int,
	deptName varchar(20),
	deptHeadID int
);

INSERT INTO departments
values
(101, 'Sales & Marketing', 78445),
(102, 'Finance', 78440),
(103, 'IT', 78456),
(104, 'HR', 78455),
(105, 'QAQC', 78442);


select * from departments;


create table employees(
	empID varchar(20),
	empFirstName varchar(20),
	empLastName varchar(20),
	empGender bit,
	empDOB date,
	empShiftTime Time,
	empSalary Money,
	empHeight float,
	empWeight Decimal(5, 2)
);

insert into employees
values
('EMP1001', 'Rakshit', 'Reddy', 1, '5/23/1992', '14:23:56', 45670, 1.234567890, 67.982368474748),
('EMP1002', 'Sadik', 'Pathan', 1, '4/12/2002', '18:30:00', 34500, 1.112746277373, 45.783737367362672);

select * from employees;

----------------------------------------------------------------------------------------------------------

insert into employees(empID, empFirstName, empLastName, empGender, empDOB, empHeight, empWeight)
values
('EMP1003', 'Sureh', 'Kalmadi', 1, '1990/12/31', 1.234323323, 120.883747475);


insert into employees(empID, empFirstName, empLastName, empGender, empSalary, empHeight, empWeight)
values
('EMP1004', 'Sara', 'Kataria', 0, 34900, 2.12212122211, 45.54545555444445);


insert into employees(empID)
values
('EMP1005');


-----------------------------------------------------------------------------------------------------------------

-- update records:

update employees
set empDOB = '5/5/2000'
where empID = 'EMP1004';


update employees
set empFirstName = 'Suraj', empLastName = 'Malhotra'
where empID = 'EMP1005';


update employees
set empShiftTime = '9:00:00'
where empID = 'EMP1003' or empID = 'EMP1004' or empID = 'EMP1005';

update employees
set empGender = 1, empSalary = 20000
where empID = 'EMP1005';
