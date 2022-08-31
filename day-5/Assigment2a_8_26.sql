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
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (10, ' Adam ', 'Badhu', 1500000, "2019-10-20", "hub");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (9, ' Adam ', 'Meera', 3000000, "2019-10-20", "hub");
INSERT INTO Employee (Employee_id, First_name, Last_name, Salary, Joining_date, Departement) VALUES (8, ' Adam ', 'John', 1000000, "2019-10-20", "hub");
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
SELECT substring(First_Name,1,4 ) from Employee; 
-- fetch 'n' no.of characters from left side, right side, and from any position
select last_name,  substring(last_name,1,4), left(last_name,4), right(last_name,4), substring(last_name,4,4)  from Employee;

select position("h" in "John");
select rtrim (First_Name) from Employee;
select ltrim (First_Name) from Employee;
select trim(First_name) from Employee;
select trim(Last_name) from Employee;
select First_name, Last_name , concat(First_name,' ', Last_name) as 'name' from Employee;
select * from Employee where Salary > "4000000";
select * from Employee where Departement = "IT";
select Salary from Employee where Departement = "Insurance";
select * from Employee where Departement in ('Banking' , 'Finance');
select * from Employee where First_name like '%Bob%';
select count(Employee_id) from Employee where Departement = "IT";
select sum(Salary) as "Expenditure" from Employee;
select ltrim (First_Name) from Employee;
select rtrim (First_Name) from Employee;
select * from Employee where monthname(Joining_date)='February' ;
select * from Employee where Joining_date between '2019-04-01' and '2019-06-30';
-- finding quarter from date using built in function
select * from employee where quarter(joining_date) = 2;

select now(), curdate(),day(curdate()),month(curdate()),year(curdate()),hour(now()),minute(now()),second(now());
select * from Employee where First_name like '%Bob%';
select First_name + 'joined on day:' from Employee where First_name like '%Bob%';
select concat(First_name, 'joined on day :', Joining_date ) from Employee where First_name like '%Bob%';
select concat(First_name, 'joined on day : ', day(Joining_date) , '  month: ',monthname(Joining_date), '  year: ', year(Joining_date) ) from Employee where First_name like '%Bob%';
select concat(First_name, 'joined on day : ', day(Joining_date) , '  month: ',month(Joining_date), '  year: ', year(Joining_date) ) from Employee where First_name like '%Bob%';
select * from Employee where First_name like '%jo%' or Last_name like '%jo%';
select First_name, (Salary - '100000') as detucted_salary from Employee where First_name like "%Yohan%";
select concat(trim(Last_name), ' ' , trim(First_name) ) as "last name, first name"  from Employee ;
select * from Employee where First_name like '%John%' or Last_name like '%John%' ;
select REPLACE(First_name,  'John' , 'Jane') as Fname, REPLACE(Last_name,  'John' , 'Jane') as Lname  from Employee where First_name like '%John%' or Last_name like '%John%' ;
select Salary from Employee where Salary > "1000000";
select position('i' in Departement) from Employee;
select Salary, (Salary *0.10) as HRA, (Salary *0.05) as DA, (Salary *0.01) as PF from Employee;
select Salary, (Salary *0.10) as HRA, (Salary *0.05) as DA, (Salary *0.01) as PF, (Salary + HRA + DA) as Income, (Salary *0.01) as Deductions, ( Income - Deductions) as Net_Salary from Employee; 
select Salary, (Salary *0.10) as HRA, (Salary *0.05) as DA, (Salary *0.01) as PF, (Salary + (Salary *0.10) + (Salary *0.05)) as Income, (Salary *0.01) as Deductions, (  (Salary + (Salary *0.10) + (Salary *0.05)) - (Salary *0.01)) as Net_Salary from Employee; 	
-- 08/29/2022--
select REPLACE(First_name,  'o' , '#') from Employee;
select * from Employee order by (trim(First_name)) asc, Salary desc ;
select * from Employee where  'Adam' <> First_name;   -- NOT WORKING
select * from Employee where  Employee_id <> 8;     -- WORKING
select * from Employee where trim(First_name) <> 'John' and trim(First_name) <>'Jerry';
select * from Employee where length (trim(First_name))=4 and right(trim(First_name), 4)= 'n' ;
select * from Employee where length (trim(First_name))=4 and (trim(First_name))like '%n' ;
select Departement, sum(salary) from Employee group by Departement;
select Departement, sum(salary) from Employee group by Departement order by (salary)desc;
select Departement, Avg(salary) from Employee group by Departement order by (salary)asc;
select monthname(Joining_date) , count(Employee_id) from Employee group by month(Joining_date);
select Departement, max(salary) from Employee group by Departement order by (salary)desc;
select Departement, sum(salary) from Employee where salary > "1000000" group by Departement order by (salary)desc;
select max(salary) from Employee where (trim(Last_name) <> 'o') ;

select * from Employee where (trim(Last_name) not like '%o');
select  max(salary) from Employee where Last_name like '%o%' ;
-- select max(salary) from Employee group by Last_name having Last_name like '%o%' ;--
select count(Employee_id), departement from Employee group by Departement having count(Employee_id) < 2;
select count(Employee_id), departement from Employee group by Departement;
select Departement, sum(salary) in February, Joining_date  from Employee group by Departement ;
select  month(joining_date), sum(salary) from Employee where monthname(joining_date) = "February" group by Departement;
-- by trainer-- 
select Departement, Month(Joining_date), max(Salary) from Employee where month(Joining_date) =2 group by Departement;
-- using 5 aggregate function in salary--
select Departement, sum(salary) from Employee group by Departement;
select Departement, avg(salary) from Employee group by Departement;
select Departement, max(salary) from Employee group by Departement;
select Departement, min(salary) from Employee group by Departement;
select Departement, count(salary) from Employee group by Departement;
select Departement, count(Employee_id) from Employee group by Departement;
select Departement, json_arrayagg(salary) from Employee group by Departement;
select Departement, group_concat(salary) from Employee group by Departement;
select Departement, min(salary) from Employee group by Departement;
select Departement, count(Employee_id), sum(Salary) from Employee group by Departement order by Salary desc;
select Departement, count(Employee_id), sum(Salary) from Employee group by Departement order by Salary asc;
select Departement, min(salary) from Employee group by Departement order by Salary asc;
select Departement, Joining_date, count(Employee_id), quarter(Joining_date) from Employee group by quarter(Joining_date), monthname(Joining_date);
select Departement, sum(Salary) from Employee group by Departement having sum(salary) > 1000000;
-- Get employees whose first name is neither “Jerry” nor “John” and ends with 'n'--
select * from Employee where trim(First_name) <> "Jerry" and trim(First_name) <> "John" and trim(First_name) like "%n";
describe Employee;