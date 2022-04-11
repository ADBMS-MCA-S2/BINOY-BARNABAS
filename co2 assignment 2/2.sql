
create database co2; 
use co2;
select * from employee;
 
insert into employee(eaampid,designation,salary) values(101,'manager',10000);
insert into employee(empid,designation,salary) values(110,'keeper',7000);
insert into employee(empid,designation,salary) values(102,'cleaner',6000);

select empid,incentive(empid) from employee;

CREATE DEFINER=`root`@`localhost` FUNCTION `incentive`(id int) RETURNS int(11)
BEGIN
declare
incen float;
if(id = 110)
then
set incen = 1000;
else
set incen = 0;
end if;
RETURN incen;
END