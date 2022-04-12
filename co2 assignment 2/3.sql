create database book;
use  book;
select * from book;

insert into book(book_name,author_name,price,quantity) values('pursuit','arun',500,3);
insert into book(book_name,author_name,price,quantity) values('heaven','adharsh',450,6);
insert into book(book_name,author_name,price,quantity) values('the hell','binoy',300,4);
insert into book(book_name,author_name,price,quantity) values('database for dummies','arjun',700,2);
insert into book(book_name,author_name,price,quantity) values('peekachoo','tony',800,4);
insert into book(book_name,author_name,price,quantity) values('pokemon','tony',400,3);

update book
set quantity = quantity * 2;

select book_name from book where price > (select price from book where book_name = 'database for dummies');

select author_name,book_name,price from book where author_name like 'a%';

call total('tony');

select sum(quantity) as totalbooks from book where author_name like 'tony';

CREATE DEFINER=`root`@`localhost` PROCEDURE `total`(author varchar(45))
BEGIN
select sum(quantity) as totalbooks from book where author_name like author;
END
