create database students;
use students;

create table result(
stud_id int primary key,
stud_name varchar(30) not null,
marks int not null,
category varchar(15)
);

CREATE DEFINER=`root`@`localhost` PROCEDURE `procgrade`(stud_id int,stud_name varchar(25),marks int)
BEGIN
if(marks>=990 and marks<=1500) then
insert into result values(stud_id,stud_name,marks,'distinction');
elseif (marks<=989 and marks>=900) then
insert into result values(stud_id,stud_name,marks,'first class');
elseif (marks<=899 and marks>=825) then
insert into result values(stud_id,stud_name,marks,'second class');
end if;
END

call procgrade(101,'arun',950);
call procgrade(103,'binoy',830);
call procgrade(104,'adarsh',1200);
select * from result;