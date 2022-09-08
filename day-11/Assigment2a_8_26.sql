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
select First_name, amount from Employee right outer join reward on Employee.Employee_id = reward.Employee_ref_id;

-- Get the first name, each reward amount for employees along with who not have rewards by not using “Inner Join”.--
select First_name, amount from Employee left outer join reward on Employee.Employee_id = reward.Employee_ref_id;

-- Get the first name, each reward amount for employees along with who not have rewards using “union”.--
select Employee_id, First_name from Employee union all
select Employee_ref_id, amount from reward ;

Select Employee.First_name from employee
union
select amount from reward;

select first_name,amount from employee inner join reward on employee_id =  Employee_ref_id
 union 
 select First_name,amount from employee left outer join reward on  employee.employee_id =reward.Employee_ref_id;

-- Get count of employees having last name same as first name of other employees--
select count(*) from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);
select count(a.Last_name) from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- List employees having last name same as first name of other employees--
select * from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);
select a.Last_name from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- Get count of employees not having last name same as first name of other employees--
select count(a.Last_name) from Employee a inner join Employee b on trim(a.Last_name) <> trim(b.First_name) ; -- getting 99
select count(distinct a.Last_name) from Employee a inner join Employee b on trim(a.Last_name) <> trim(b.First_name); --  getting 10
select count(a.Last_name)%count(distinct a.Last_name) from Employee a inner join Employee b on trim(a.Last_name) <> trim(b.First_name) ;

-- List FName, LName, rewardamount of employees having last name same as first name of other employees or vice-versa, with each of their reward amount
select First_name, Last_name, reward.amount from Employee inner join (select * from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name)) b on Employee.Employee_id = reward.Employee_ref_id;

select e1.First_name, e1.Last_name, r.amount from Employee e1 inner join Employee e2 on trim(e1.Last_name) = trim(e2.First_name) left outer join reward r on e1.Employee_id = r.Employee_ref_id
union
select e2.First_name, e2.Last_name, r.amount from Employee e1 inner join Employee e2 on trim(e1.Last_name) = trim(e2.First_name) left outer join reward r on e2.Employee_id = r.Employee_ref_id;

select a.First_name, a.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name) 
left outer join reward r on a.Employee_id = r.Employee_ref_id
union
select b.First_name, b.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name) 
left outer join reward r on a.Employee_id = r.Employee_ref_id;

select a.First_name, a.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name) 
left outer join reward r on a.Employee_id = r.Employee_ref_id
union
select b.First_name, b.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name) 
left outer join reward r on b.Employee_id = r.Employee_ref_id;


select First_name, Last_name from Employee;
-- Assignment 7--
-- 1. Get count of employees having last name same as first name of other employees
select count(a. Last_name) from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- 2. List employees having last name same as first name of other employees--
select * from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name);

-- 3. List FName,LName,rewardamount of employees having last name same as first name of other
-- employees or vice-versa, with each of their reward amount

select a.First_name, a.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name) 
left outer join reward r on a.Employee_id = r.Employee_ref_id
union
select b.First_name, b.Last_name, r.amount from Employee a inner join Employee b on trim(a.Last_name) = trim(b.First_name)
left outer join reward r on b.Employee_id = r.Employee_ref_id;

create table places (
id int, 
place_name varchar(10));

create table tours (
id int, 
stloc int, 
endloc int);

insert into places values 
(1,'chennai'),
(2,'bengaluru'),
(3,'cochin'),
(4,'hyderabad'),
(5,'mysuru');

insert into tours values  
(1,	4,	1), 
(2,	4,	3), 
(3,	4,	2), 
(4,	1,	4), 
(5,	2,	3), 
(6,	2,	5), 
(7,	5,	3);

select * from places;
describe places;
select * from tours;
describe tours;
alter table places modify id int primary key;
alter table places drop primary key; 
drop table tours; 

-- 4. Display the tours with source and destination as follows (use: places, tours tables)
-- Tour_id     start_city   end_city

select id as Tour_id, stloc, endloc from tours;

select tours.id as Tour_id, (stloc = places.place_name) as start_city, (endloc =places.place_name) as end_city from tours inner join places on tours.stloc = places.id 
inner join places b on tours.endloc = b.id  
union
select tours.id as Tour_id, (stloc = places.place_name) as start_city, (endloc =places.place_name) from tours inner join places on tours.endloc = places.id
inner join places b on tours.stloc = b.id ;

select t.id as Tour_id, place_name as start_city, place_name as end_city from tours t inner join places p on t.stloc = p.id 
inner join places on t.endloc = p.id order by t.id;

select st.Tour_id, st.start_city, ed.end_city from 
(select tours.id as Tour_id, places.place_name as start_city from tours inner join places on tours.stloc = places.id) st,
(select tours.id as Tour_id, places.place_name as end_city from tours inner join places on tours.endloc = places.id) ed 
where st.Tour_id = ed.Tour_id;

select t.id as Tour_id, p1.place_name as start_city, p2.place_name as end_city from tours t inner join places p1 on t.stloc = p1.id 
inner join places p2 on t.endloc = p2.id order by t.id;

select A.id,b.place_name,c.place_name from tours A 
left outer join places B on (a.stloc=b.id ) 
left outer join places C on (a.endloc=c.id );

create table outlet (outlet_id int, outlet_type varchar(5), outlet_sales numeric);
alter table outlet modify outlet_type varchar(15);
insert into outlet values (101, 'mart', 500);
insert into outlet values (102, 'supermarket', 5000);
insert into outlet(outlet_id, outlet_type) values (103, 'supermarket');
insert into outlet(outlet_id, outlet_type) values (104, 'supermarket');
insert into outlet(outlet_id, outlet_type) values (105, 'supermarket');
insert into outlet values (106, 'mart', 1500);

select * from outlet a, outlet b where a.outlet_type = b.outlet_type and a.outlet_id < b.outlet_id order by a.outlet_id;

select a.outlet_id, a.outlet_type, b.outlet_type from outlet a, outlet b where a.outlet_type = b.outlet_type 
and a.outlet_id < b.outlet_id order by a.outlet_id;

select o1.outlet_id,o1.outlet_type,o2.outlet_id from outlet o1 inner join outlet o2 on o1.outlet_type=o2.outlet_type 
where o1.outlet_id < o2.outlet_id order by o1.outlet_id;

create table performers as select * from outlet where outlet_sales > (select avg(outlet_sales) from outlet);
select * from performers;
select * from Employee;
-- Assignment - 8 --
-- 1. Get first 3 employees who were the earliest to join --
select * from Employee order by Joining_date limit 3;
-- 2. Get first 3 employees who were the latest to join --
select * from Employee order by Joining_date desc limit 3;

-- 3. Get details of the employees who were neither the first joinee nor last joinee

select * from Employee order by Joining_date limit 1,8;
select * from Employee order by Joining_date limit 8 offset 1 ;
select * from Employee where Joining_date <> (select max(Joining_date) from Employee) and Joining_date <> (select min(Joining_date) from Employee);
select * from employee where employee_id not in (
select employee_id from employee where joining_date in (select max(joining_date) from employee)
union
select employee_id from employee where joining_date in (select min(joining_date) from employee)
);
select * from Employee where Joining_date not in(
select max(Joining_date)from Employee
union
select min(Joining_date)from Employee);
-- 4. Create a table dpt_toppers containing employees from each department earning highest salary
create table dpt_toppers as select * from Employee where salary in ( select max(salary) from Employee group by Departement);

select * from dpt_toppers;
describe dpt_toppers;
-- select * from Employee where salary in ( select max(salary) from Employee group by Departement);
-- select max(salary) from Employee group by Departement;
drop table dpt_toppers;
-- insert into dpt_toppers (select *from Employee where salary = ( select max (salary) from Employee group by Departement);

select * from Employee where  ( select Departement, max(salary)  from Employee group by Departement);

create table a_test_employee as 
select e.employee_id, e.first_name, e.last_name,  e.Departement, e.joining_date,  max(salary) as highest_salary from Employee e group by Departement;

select * from a_test_employee;

select * from Employee e, (select e2.Departement, e2. max(salary) from Employee e2 group by Departement) e3 where e.Department=e3.Departement;
 
 -- 5. . Get top salary using max
  select max(salary) from Employee;
  -- 6. Get top salary using limit
  select salary from Employee order by salary desc Limit 1;
  -- 7. Get top salary using sub query
  select * from Employee where salary in (select Max(salary)from Employee);
  -- 8. Include comments column in dpt_toppers stating to 'give 10% bonus' for those employees who have not received any reward
  alter table dpt_toppers add column comments varchar(50);
  
select* from reward;
update dpt_toppers set comments = 'give 10% bonus' where Employee_id in (
select Employee_id from Employee where Employee_id not in (select Employee_ref_id from reward));
show variables like "sql_safe_updates";
set sql_safe_updates = 0;
-- 9. Create a view vw_facilitated who have recieved rewards being a top salary earner of their department
create view vw_facilitated as select Employee_id from Employee where Employee_id in (select Employee_ref_id from reward);
select * from vw_facilitated;
create view vw_facilitated_a as select * from Employee where Employee_id in (select Employee_ref_id from reward);
select * from vw_facilitated_a;
create view vw_facilitated_c as select * from dpt_toppers  where employee_id in (select employee_ref_id from reward);
select * from vw_facilitated_c;

select * from dpt_toppers  where employee_id in (select employee_ref_id from reward);
-- or 
-- employees who have recieved rewards being a top salary earner of their department(dpt_toppers not exists)
select * from employee e , reward r where e.employee_id=r.employee_ref_id
and salary in (select max(salary) from Employee group by Departement);


-- 10. Delete those employees from dpt_toppers who have received rewards already
delete from dpt_toppers where Employee_id in (
select Employee_id from Employee where Employee_id in (select Employee_ref_id from reward));

-- 
select * from outlet o1 where 2 = (select count(distinct o2.outlet_sales) from outlet o2
where o1.outlet_sales <= o2.outlet_sales);
--
select * from Employee;
-- Assignment -9 --

-- 1. Get employees who have the highest salary--

select * from Employee where Salary in (select max(salary) from Employee) limit 1; 
select * from Employee where Salary in (select max(salary) from Employee);
select max(salary) from Employee;

-- 2. Get employees who have the 2nd highest salary--
select * from Employee order by salary desc limit 1,1;
select Employee_id, max(salary) from Employee where salary <> (select max(salary)from Employee);

-- 3. Get employees who have the nth highest salary
select * from Employee order by salary desc limit 3,1;

select * from Employee e1 where 4 = (select count(distinct e2.salary) from Employee e2
where e1.salary <= e2.salary);

select count(distinct e2.salary) from Employee e2 inner join Employee e1
where e1.salary <= e2.salary;

select count(distinct e2.salary) from Employee e2 cross join Employee e1
where e1.salary <= e2.salary;
select count(distinct e2.salary) from Employee e2;

select * from Employee e1 where 4 = (select count(distinct e2.salary) from Employee e2
where e1.salary >= e2.salary);

-- 5. . Categorize employees into three groups based on their salaries (less than 30M-low,30M to 60M-medium, greater than 60M-high)

select Employee_id, First_name, Salary,
case
when Salary <3000000 then 'low'
when Salary >= 3000000 and 6000000 then 'medium'
else 'high'
end as catagorized_salary from Employee;

-- Assignment 10
-- 1. Write a procedure to fetch employee earning less than average salary

delimiter &&
create procedure avg_salary()
begin 
select * from Employee where salary < (select avg(salary) from Employee);
end &&
delimiter ;

call avg_salary();

select * from Employee where salary < (select avg(salary) from Employee);

-- 2. Write a procedure to fetch salary of the employee id passed as input
drop procedure find_salary;
delimiter && 
create procedure find_salary(in emp int, out sal int)
begin
select Salary from Employee where Employee_id = emp;
end &&
delimiter ;
call find_salary(1,@sal);
call find_salary(7,@sal);

-- 3. Write a function to fetch 50% of salary
drop function get_salary50;
create function get_salary50(pct50 int)
returns int no sql 
return pct50*.5;

select salary, get_salary50(salary) from Employee;

-- 4.Write a function to add a string to the passed name 
drop function ename;
create function ename(n varchar(100))
returns varchar(100) no sql 
return concat("Hello ",n) ;

Select Last_name, ename(Last_name) from Employee;

-- 5. Write a function to fetch the next maximum salary to the input number passed 
drop function max_sal;
create function max_sal(m int)
returns int reads sql data
return (select salary from Employee where salary > m order by salary asc limit 1 );

select max_sal(4000000);
select max_sal(1000000);

select salary from Employee where salary > 1000000 order by salary asc limit 1;

create function max_sal_a(m int)
returns int reads sql data
return (select max(salary) from Employee where salary <> (select max(salary)from Employee) > m );

drop function max_sal_b;
create function max_sal_b(m int)
returns int reads sql data
return ((select max(salary) from Employee order by salary desc limit 1,1) > m );

select max_sal_b(2000000);
select max_sal_a(2000000);
select max_sal(4000000);

SELECT MAX(salary) From employee WHERE salary < ( SELECT Max(salary) FROM employee);
select max(salary) from Employee where (SELECT MAX(salary) From employee WHERE salary < ( SELECT Max(salary) FROM employee)) > 1000000;
select * from Employee;

drop function get_max_wointo_wparam;
create function get_max_wointo_wparam(s decimal)
returns decimal reads sql data
return (select max(outlet_sales) from outlet where outlet_sales > s);

select get_max_wointo_wparam(550);
select outlet_sales from outlet;