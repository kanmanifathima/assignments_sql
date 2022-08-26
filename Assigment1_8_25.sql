create database inventory;
use inventory;
create table supplier (supplier_id int, supplier_name varchar(5), supplier_amountbalance numeric);
alter table supplier modify supplier_name varchar(20);
insert into supplier values (001, 'adam', 10000); 
insert into supplier values (002, 'aariz', 3500);
insert into supplier values (003, 'azfer', 5000);
insert into supplier values (004, 'afraz', 8500);
insert into supplier values (005, 'ruksana', 12000);
insert into supplier values (006, 'mathew', 8000);
insert into supplier values (007, 'ria', 15000);
insert into supplier values (008, 'max', 25000);
insert into supplier values (009, 'annavi', 30000);
insert into supplier values (010, 'badhusa', 10250);
select * from supplier;
alter table supplier modify supplier_id int primary key;
select count(*) from supplier;
select * from supplier where supplier_amountbalance >10000;
update supplier set supplier_name='max holdings' where supplier_id=8; 
select * from supplier where supplier_name like '%holdings';
select sum(supplier_amountbalance) from supplier;
select *  from supplier order by supplier_amountbalance desc;