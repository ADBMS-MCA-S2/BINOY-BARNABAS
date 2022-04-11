create database co2; 
use co2;

show tables;

call insertinto(1,'binoy');

select * from t2;

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertinto`(aa int,b varchar(10))
BEGIN
if((select a from t2 where a like (aa)))
then
insert into t2(a,b) values(null,null);
else
insert into t2(a,b) values(aa,b);
end if;
END
