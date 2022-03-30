create database college;
use college;

create  table dept
(
deptno int(5),
dname varchar(25),
loc varchar(20)
);

select * from department;

alter table dept rename to department;

alter table department
add pincode int(10) not null;

alter table department
drop column pincode;

alter table department
change dname dept_name varchar(25);

alter table department
modify column loc char(10);

