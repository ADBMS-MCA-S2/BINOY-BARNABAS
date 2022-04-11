create database co2; 
use co2;

show tables;

call insertinto(1,'binoy');

select * from t2;

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertinto`(a int,b varchar(10))
BEGIN
insert into t2(a,b) values(a,b);
END

