create database employers;
use employers;
CREATE TABLE Employee (
    Employee_id int ,
    First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Salary int,
	Joining_date Date,
    Departement  VARCHAR(50) 
);
describe Employee;
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (1, ' Bob ', 'Kinto', 1000000, "2019-01-20", "Finance");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (2, '  Jerry  ', 'Kansxo', 6000000, "2019-01-15", "IT");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (3, '   Philip   ', 'Jose', 8900000, "2019-02-05", "Banking");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (4, ' John ', 'Abraham', 2000000, "2019-02-25", "Insurance");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (5, '  Michael  ', 'Mathew', 2200000, "2019-02-28", "Finance");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (6, '   Alex   ', 'chreketo', 4000000, "2019-05-10", "IT");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (7, ' Yohan ', 'Soso', 1230000, "2019-06-20", "Banking");
select * from Employee;
select First_name, Last_name from Employee;
select First_name as "Employee Name" from Employee;
select lower(Last_name) from Employee;
describe Employee;
select upper(Last_name) from Employee;
select distinct (Departement) from Employee;
SELECT substring (First_Name, 1 ,  4 ) from Employee; 