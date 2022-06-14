create database customersale;

use customersale;

create table customer(
cust_id int primary key,
cut_name varchar(25) not null
);

create table item(
item_id int primary key,
item_name varchar(25) not null,
price float
);

create table sale(
bill_no int primary key,
billdate date not null,
cust_id int,
item_id int,
qty_sold int not null
);


insert into customer values(101,'arun');
insert into customer values(102,'adarsh');
insert into customer values(103,'binoy');
insert into customer values(5,'don');

insert into item values(901,'soap',25);
insert into item values(902,'cloth',300);
insert into item values(903,'shoes',500);

insert into sale values(5001,'2022-11-22',101,901,2);
insert into sale values(5002,'2022-11-16',102,902,3);
insert into sale values(5003,'2022-11-17',103,903,1);
insert into sale values(5004,'2022-11-16',5,902,4);
insert into sale values(5005,'2022-06-14',101,903,1);

select * from customer;
select * from item;
select * from sale;


a.ok
select customer.cut_name,item.item_id from sale,customer,item where sale.billdate='2022-06-14' and customer.cust_id=sale.cust_id and item.item_id = sale.item_id;

d. ok 
select count(item_id),cust_id  from sale group by cust_id;

e. ok
select item.item_name from item,sale where sale.cust_id=5 and item.item_id=sale.item_id;

b. 
select sale.bill_no,sale.billdate,count(price) as qty,item.price,sum(price) from sale,item where item.item_id=sale.item_id group by sale.item_id;

c. ok
select customer.cut_name,customer.cust_id from customer,sale,item where item.price>200 and item.item_id=sale.item_id and customer.cust_id=sale.cust_id;
