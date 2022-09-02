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
select Departement, Month(Joining_date), sum(Salary) from Employee where month(Joining_date) =2 group by Departement;
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
select quarter(Joining_date), count(Employee_id), quarter(Joining_date) from Employee group by quarter(Joining_date), monthname(Joining_date);
select Departement, max(Salary) from Employee group by Departement having sum(salary) > 1000000;
-- Get employees whose first name is neither “Jerry” nor “John” and ends with 'n'--
select * from Employee where trim(First_name) <> "Jerry" and trim(First_name) <> "John" and trim(First_name) like "%n";
describe Employee;
-- Assignment5---
select * from Employee;
alter table Employee modify Employee_id int primary key;

CREATE TABLE reward (
    Employee_ref_id int,
    date_reward Date,
	amount int,
    FOREIGN KEY (Employee_ref_id) REFERENCES Employee(Employee_id)
);

INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (1, '2019-05-11', '1000');
INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (2, '2019-02-15', '5000');
INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (3, '2019-04-22', '2000');
INSERT INTO reward (Employee_ref_id, date_reward, amount) VALUES (1, '2019-06-20', '8000');
select * from reward;
update Employee set First_name = "Johny" where Employee_id = 1;
update Employee set First_name = "Johny" where trim(First_name) = "Bob";

select Employee.First_name, Employee.Last_name, reward.amount from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id;
select Employee.Last_name, reward.amount from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id where amount >2500;
select Employee.First_name, Employee.Last_name, Employee.Salary, reward.amount from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id where Salary >= 1000000;
select Employee.Departement, sum(reward.amount) from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id where Departement = "Finance" ;
select Employee.Departement, sum(reward.amount) from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id group by Departement;
select Employee.First_name, Employee.Last_name, Employee.Salary, reward.amount from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id where amount < 7500;
select First_name, Last_name, salary+amount as net from employee e inner join reward r on e.employee_id - r.employee_ref_id where r.amount <7500;

select Employee.First_name, Employee.Last_name, sum(reward.amount) from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id group by Employee_id;
select Employee.Employee_id, Employee.First_name, sum(reward.amount) from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id group by First_name having First_name like "%John%";
select Employee.Employee_id, Employee.First_name, sum(reward.amount) from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id group by Employee_id, First_name having First_name like "%John%";
select Employee.Employee_id, Employee.First_name, sum(reward.amount) from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id where First_name like "%J%" group by First_name;

-- select e.First_name, e.Last_name, r.total_amount from Employee e left outer join (select Employee_ref_id, sum(amount) as total_amount from reward group by Employee_ref_id) r on e.Employee_id = r.Employee_ref_id where e.First_name like "%John"; 

-- select e.First_name, e.Last_name, r.total_amount from Employee e left outer join (select Employee_ref_id, sum(amount) as total_amount from reward group by Employee_ref_id) r on e.Employee_id = r.Employee_ref_id where e.First_name = "%John";---


select Employee.First_name, Employee.Last_name, sum(reward.amount) from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id;
select Employee_ref_id, sum(amount) as total_amount from reward group by Employee_ref_id;

-- Day 7 Assignment --
-- Get the employee’s first name and last name in separate rows.--

select First_name from Employee union all
select Last_name from Employee;

-- Get the employee’s first name and last name in separate rows without duplicates.--
select First_name from Employee union
select Last_name from Employee;

-- Get the employee’s first name, each reward amount for employees who have rewards.--
select First_name, amount from Employee inner join reward on Employee.Employee_id = reward.Employee_ref_id;

-- Get the first name, each reward amount for employees who have rewards not using “Inner Join”.

select First_name, amount from Employee cross join reward on Employee.Employee_id = reward.Employee_ref_id; 

-- Get the first name, each reward amount for employees along with who not have rewards by not using “Inner Join”.--
select First_name, amount from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id;

-- Get the first name, each reward amount for employees along with who not have rewards using “union”.--
select Employee_id, First_name from Employee union all
select Employee_ref_id, amount from reward ;

-- Get count of employees having last name same as first name of other employees--
select count(*) from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- List employees having last name same as first name of other employees--
select * from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- Get count of employees not having last name same as first name of other employees--

select count(distinct a.Last_name) from Employee a inner join Employee b on trim(a.Last_name) <> trim(b.First_name) ;

-- List FName, LName, rewardamount of employees having last name same as first name of other employees or vice-versa, with each of their reward amount
select First_name, Last_name, reward.amount from Employee inner join (select * from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name)) b on Employee.Employee_id = reward.Employee_ref_id;

select First_name, Last_name from Employee;