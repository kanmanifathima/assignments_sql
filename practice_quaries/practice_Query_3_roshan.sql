create database textiles;
use textiles;
drop table Dress;
drop table Material;
create table Material(
	Mcode varchar(15),
    Type_s varchar(20),
    constraint mcode_pk primary key (Mcode));

create table Dress(
   Dcode int,
   Descriptions varchar (25),
   Price int,
   Mcode varchar(15),
   LaunchDate date,
   constraint mcode_fk foreign key (Mcode) REFERENCES Material(Mcode)
  );
  
insert into Material (Mcode, Type_s) values ("M001","Terelene"),
											("M002","Cotton"),
                                            ("M003","Polyster"),
                                            ("M004","Silk");
                                            
insert into Dress values(10001,"FORMAL_SHIRT",1250,"M001",STR_TO_DATE("12-Jan-08","%d-%b-%y")),
						(10020,"FROCk",750,"M004",STR_TO_DATE("09-Sep-07","%d-%b-%y")),
                        (10012,"INFORMAL_SHIRT",1450,"M002",STR_TO_DATE("06-Jun-08","%d-%b-%y")),
                        (10019,"EVENING_GOWN",850,"M003",STR_TO_DATE("06-Jun-08","%d-%b-%y")),
                        (10090,"TULIP_SKIRT",850,"M002",STR_TO_DATE("31-Mar-07","%d-%b-%y")),
                        (10023,"PENCIL_SKIRT",1250,"M003",STR_TO_DATE("19-Dec-08","%d-%b-%y")),
                        (10089,"SLACKS",850,"M002",STR_TO_DATE("20-OCT-08","%d-%b-%y")),
                        (10007,"FORMAL_PANT",1450,"M001",STR_TO_DATE("09-Mar-08","%d-%b-%y")),
                        (10009,"INFORMAL_PANT",1400,"M002",STR_TO_DATE("20-Oct-08","%d-%b-%y")),
                        (10024,"BABY_TOP",650,"M003",STR_TO_DATE("07-Apr-07","%d-%b-%y"));
				
describe Material;
describe Dress;
Select * from Material;
select * from Dress;

-- 1. To display DCODE and DESCRIPTION of each dress in ascending order of DCODE.
select Dcode, Descriptions from Dress order by Dcode asc;

-- 2. To display the details of all the dresses which have LAUNCHDATE in between 05-DEC-07 and 20-JUN-08 (inclusive of both the dates).
select * from Dress where LaunchDate between '2007-12-05' and '2008-06-20';

-- 3, To display the average PRICE of all the dresses which are made of material with MCODE as M003
select avg(Price) from Dress where Mcode = "M003";

-- 4. To display material-wise highest and lowest price of dresses from DRESS table. (Display MCODE of each dress along with highest and lowest price)
select Mcode, max(Price), min(Price) from Dress group by Mcode;

-- 5. To display total price for Terelene
select sum(Price) from Dress d inner join Material m on d.Mcode = m.Mcode where m.Type_s = "Terelene";
select sum(Price) from Dress where Mcode = "M001";

-- 6. To display DESCRIPTION, TYPE with PRICE more than 1250;
select Descriptions,Type_s, Price from Dress d inner join Material m on d.Mcode = m.Mcode where d.Price >1250;
select Descriptions,Type_s, Price from Dress d inner join Material m on d.Mcode = m.Mcode where d.Price >=1250;

-- 7. To display the maximum code from the material
select max(Mcode) from Material;

-- 8. To display number of unique dress price
select count(distinct(Price)) from Dress;