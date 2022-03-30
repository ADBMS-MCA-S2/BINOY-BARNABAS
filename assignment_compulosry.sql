use emp;

create table employees
(
e_id int(5) primary key,
e_name varchar(50),
age int(3),
salary float(10,2)
);

insert into employees(e_id,e_name,age,salary) values(101,'anu',22,9000);
insert into employees(e_id,e_name,age,salary) values(102,'shane',29,8000);
insert into employees(e_id,e_name,age,salary) values(103,'rohan',34,6000);
insert into employees(e_id,e_name,age,salary) values(104,'scott',44,10000);
insert into employees(e_id,e_name,age,salary) values(105,'tiger',35,8000);
insert into employees(e_id,e_name,age,salary) values(106,'alex',27,7000);
insert into employees(e_id,e_name,age,salary) values(107,'abhi',29,8000);

select count(e_name) as employee_name_count from employees;

select max(age) as maximum_age from employees;

select min(age) as minimum_age from employees;

select sum(age) as sum_of_age from employees;

select avg(age) as average_of_age from employees;

create view emps as
select e_name,age from employees;

select * from emps;

select salary from employees group by salary;

select salary,e_name from employees order by salary asc;

select salary,e_name from employees order by salary desc;

