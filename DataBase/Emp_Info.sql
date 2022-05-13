-- CRUD Operators

create database test; -- Create Database
use test;

-- Create Table
create table Emp_Details(Emp_ID int, Name varchar(100), Role varchar(50), Branch varchar(50));

-- Insert Data
insert into emp_details values(1, 'Paramesh', 'Devloper', 'Hyd');

-- Select Operator / Read Operator
select * from emp_details;
SELECT DISTINCT Branch FROM emp_details;
SELECT COUNT(Branch) FROM emp_details;
SELECT COUNT(distinct Branch) FROM emp_details;

SELECT * FROM emp_details WHERE Emp_ID BETWEEN 4 AND 6;
SELECT * FROM emp_details WHERE Branch LIKE 'p%';
SELECT * FROM emp_details WHERE Branch IN ('hyd','sbc');

-- Two Condition Pass (Incase 1 Condition is Fail Output is Not Visible)
SELECT * FROM emp_details WHERE Role='Testing' AND Branch='sbc'; 
-- Any1 Condition is Pass (Output is Visible)
SELECT * FROM emp_details WHERE Branch='hyd' OR branch='ATP';
-- HYD -- Remaining all Visible
SELECT * FROM emp_details WHERE NOT branch='sbc';

-- Combination
SELECT * FROM emp_details WHERE Role='testing' AND (branch='sbc' OR branch='pune');
SELECT * FROM emp_details WHERE NOT branch='pune' AND NOT Branch='sbc';

-- Insert Data
insert into emp_details values(2, 'Azeez', 'PL SQL', 'Pune');
insert into emp_details values(3, 'Prathima', 'Full Stack Developer', 'Hyd');
insert into emp_details values(4, 'Aaryan', 'Trainer', 'Pune');
insert into emp_details values(5, 'Raja Gopal Vijaya Krishna', 'Testing', 'SBC');
insert into emp_details values(6, 'Bhanu Prakash', 'Oracle', 'Hyd');
insert into emp_details values(7, 'Padma', 'Testing', 'Pune');
insert into emp_details values(8, 'Bhanu ', 'Testing', 'SBC');
insert into emp_details values(9, 'Sycoo ', 'Automition Testing', 'SBC');

-- Select Operator / Read Operator
select name from emp_details;
select * from emp_details where branch = 'Hyd';
select * from emp_details where branch = 'sbc' or role = 'testing';
select * from emp_details limit 3;
select * from emp_details order by branch asc;
select * from emp_details order by Name desc;
select name, role from emp_details;

-- Delete Table Row
delete from emp_details where Emp_ID = 9;

-- Update Data
update emp_details set branch = 'Guntur' where name = 'Bhanu Prakash';
update emp_details set branch = 'Pune', role = 'Java Developer' where name = 'Prathima';

-- Create Columns
alter table emp_details add column Phone_No int;
alter table emp_details add column Phone_No varchar(30) after Name;

-- Update Data
update emp_details set Phone_No = 916006505, role = 'Java' where Emp_ID =  1;

-- Update 2 Columns At a time
alter table emp_details add column HomeTown varchar(255), add column signature varchar(255);

-- Delete Column
alter table emp_details drop hometown;

-- Update Data
update emp_details set signature = 'SSSS' where Emp_ID = 1;