create database emp;
use emp;
drop table employee;
create table employee
(
empno varchar(20) primary key,
emp_name varchar(25),
dept varchar(25),
salary float(10,2),
doj varchar(10),
branch varchar(25)
);

insert into employee(empno,emp_name,dept,salary,doj,branch) values('e101','amit','production',45000,'12-mar-00','bangalore');
insert into employee(empno,emp_name,dept,salary,doj,branch) values('e102','amit','hr',70000,'03-jul-02','bangalore');
insert into employee(empno,emp_name,dept,salary,doj,branch) values('e103','sunita','manager',120000,'11-jan-01','mysore');
insert into employee(empno,emp_name,dept,salary,doj,branch) values('e105','sunita','it',67000,'01-jan-01','mysore');
insert into employee(empno,emp_name,dept,salary,doj,branch) values('e106','mahesh','civil',145000,'20-sep-03','mumbai');

select * from employee;

select empno,salary from employee;

select avg(salary) as average_salary from employee;

select count(*) as no_of_employees from employee;

select count(distinct emp_name) as distinct_no_employees from employee;

select emp_name,count(emp_name),sum(salary) from employee group by emp_name;

select sum(salary) as total_salary from employee where salary > 120000;

select emp_name from employee order by emp_name desc;

select * from employee where emp_name = "amit" and salary > 50000;




