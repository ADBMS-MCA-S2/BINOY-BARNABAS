create database college; 
use college; 
delete from student;
delete from course;
delete from admission;

create table student(
rollno int primary key,
name varchar(25) not null,
address varchar(50) not null,
totalmarks float not null
);


create table course
(
cid int primary key,
coursename varchar(25) not null unique,
fees float not null
);

create table admission
(
rollno int not null,
cid int not null,
sem int not null,
foreign key(rollno) references student(rollno),
foreign key(cid) references course(cid)
);
desc admission;


insert into student(rollno,name,address,totalmarks) values(101,"arun","arun home idukki",80);
insert into student(rollno,name,address,totalmarks) values(102,"adharsh","adharsh home tvm",70);
insert into student(rollno,name,address,totalmarks) values(103,"fathima","fathima home kollam",75);
insert into student(rollno,name,address,totalmarks) values(104,"kannan","kannan home tvm",82);
insert into student(rollno,name,address,totalmarks) values(105,"rinsha","rinsha home kozhikode",79);
insert into student(rollno,name,address,totalmarks) values(106,"sreelal","sreelal home kollam",70);
select * from student;

insert into course(cid,coursename,fees) values(401,"mca",12000);
insert into course(cid,coursename,fees) values(201,"bca",9000);
insert into course(cid,coursename,fees) values(301,"bsc",10000);

select * from course;

insert into admission(rollno,cid,sem) values(101,201,2);
insert into admission(rollno,cid,sem) values(102,201,2);
insert into admission(rollno,cid,sem) values(103,401,3);
insert into admission(rollno,cid,sem) values(104,301,1);
insert into admission(rollno,cid,sem) values(105,301,2);
insert into admission(rollno,cid,sem) values(106,401,2);


select * from admission;


select * from mcastudent;

drop view mcastudent;

select distinct student.rollno,student.name from student,admission where admission.cid=401;


5.
select count(cid) from admission group by admission.cid;
