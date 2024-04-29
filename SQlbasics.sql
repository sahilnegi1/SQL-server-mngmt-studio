create database employee;

use employee;

create table employee_details(
emp_id int,
emp_name varchar(50),
emp_salary int ,
emp_city varchar(50)
);

INSERT INTO employee_details VALUES
(1, 'Rahul Sharma', 600000, 'Mumbai'),
(2, 'Priya Patel', 550000, 'Delhi'),
(3, 'Amit Singh', 620000, 'Bangalore'),
(4, 'Neha Gupta', 580000, 'Hyderabad'),
(5, 'Ravi Kumar', 630000, 'Chennai'),
(6, 'Divya Shah', 590000, 'Kolkata'),
(7, 'Rajesh Verma', 610000, 'Pune'),
(8, 'Anjali Reddy', 570000, 'Ahmedabad'),
(9, 'Sandeep Yadav', 640000, 'Surat'),
(10, 'Pooja Mishra', 600000, 'Jaipur'),
(11, 'Vivek Choudhary', 650000, 'Lucknow'),
(12, 'Swati Das', 580000, 'Kanpur'),
(13, 'Alok Singh', 620000, 'Nagpur'),
(14, 'Shreya Sharma', 590000, 'Indore'),
(15, 'Rakesh Patel', 630000, 'Thane'),
(16, 'Meera Singh', 560000, 'Bhopal'),
(17, 'Sachin Gupta', 640000, 'Visakhapatnam'),
(18, 'Kavita Singhania', 610000, 'Pimpri-Chinchwad'),
(19, 'Aman Kumar', 600000, 'Patna'),
(20, 'Ritu Sharma', 570000, 'Vadodara');

select * from employee_details;

alter table employee_details
alter column emp_name varchar(100);

alter table employee_details
add emp_dept varchar(50);

alter table employee_details
drop column emp_dept;

sp_help employee_details; // work like describe

update employee_details set emp_salary=10000;

update employee_details set emp_name='sahil negi' where emp_city='Delhi';

delete from employee_details where emp_city='Pune';

insert into employee_details values (20,'sharman',10000,'New Theri','dot net');

EXEC sp_rename 'employee_details.emp_task', 'emp_dept', 'COLUMN';


update employee_details set emp_dept ='dot net';

select emp_city as city 
from employee_details
where emp_city like 'L%';

select * from employee_details;

truncate table employee_details;

select max(emp_salary) higest_salary 
from employee_details;


select max(emp_salary) second_higest_salary 
from employee_details
where emp_salary<(select max(emp_salary) from employee_details );

select ABS(-9786);
select CEILING(12.342);
select FLOOR(235.2546) as floor;
select SQUARE(10) as square;
select sqrt(625) as sqrt;
select power(9,2) as power;

select SIGN(42);
select SIGN(0);
select SIGN(-42);

select PI();

select LOG(2);
select LOG10(100) ;

select SIN (90) as sin0;
select COS (0) as cos0;
select TAN (90) as tan0;

Select ASCII ('a');

Select CHAR (48);

Select CHARINDEX ('s','sahil');
Select LEFT ('sahilnegi', 5) ;
Select RIGHT ('sahil', 3) ;
Select LEN('sahilnegi');
Select LOWER ('SAHILAUV');
Select UPPER ('sahilnegi') ;
Select LTRIM ('    Sahil');
Select RTRIM ('SAHIL    ');
Select REPLACE ('JACK AND JUE', 'J', 'BL') ;
Select REPLICATE ('SAI', 3) ;
Select REVERSE ('HELLO');
Select('SAI'+SPACE(5)+'SUDHAKAR');
Select SUBSTRING ('HELLO', 1, 3) ;
Select SUBSTRING ('HELLO', 3, 3) ;

Select GETDATE () ;
Select DAY (GetDATE());
Select MONTH (getdate());
Select YEAR (getdate ());
Select GETUTCDATE ();


Select CAST (10.2587 as Int);

select sum(emp_salary) from employee_details;
select min(emp_salary) from employee_details;
select max(emp_salary) from employee_details;
select avg(emp_salary) from employee_details;

select emp_name, count(emp_name) as count
from employee_details
where emp_name like 's%'
Group by emp_name;

select distinct (emp_salary)
from employee_details;

AND , OR , NOT, BETWEEN,
NOT BETWEEN, LIKE, NOT LIKE, IN, NOT IN, EXISTS,NOT EXISTS, ANY,
ALL, SOME, Having

select * from employee_details order by emp_name;

select top 3 emp_salary from employee_details;

select emp_name,emp_salary into data from employee_details;

drop table data;

select * from data;

 create table EMP(EID int primary key,ENAME
varchar(50) unique,SALARY money not null,age int check (age between 20 and
30));

select * from Emp;
drop table emp;

EQUI JOIN
INNER JOIN
OUTER JOIN
LEFT OUTER JOIN
RIGHT OUTER JOIN
FULL OUTER JOIN
NON EQUI JOIN
SELF JOIN
CROSS JOIN
NATURAL JOIN

DECLARE @WEEK INT
SET @WEEK=DATEPART(DW, GETDATE())
IF @WEEK=1
PRINT 'SUNDAY'
ELSE IF @WEEK=2
PRINT 'MONDAY'
ELSE IF @WEEK=3
PRINT 'TUESDAY'
ELSE IF @WEEK=4
PRINT 'WEDNESDAY'
ELSE IF @WEEK=5
PRINT 'THURSDAY'
ELSE IF @WEEK=6
PRINT 'FRIDAY'
ELSE IF @WEEK=7
PRINT 'SATURDAY'

//procedures below

Create Procedure Display
As
Begin
select emp_id from employee_details;
EndDisplay  //calling--// parameterized procedures--SP_help employee_details;DROP PROCEDURE IF EXISTS showinfo;create procedure showinfo
@sal int,
@name char
as
begin
select emp_salary,emp_name from employee_details
where emp_salary>@sal and emp_name like @name + '%'
end

showinfo @sal = 50000 , @name ='A'


