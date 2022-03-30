create database movie;
use movie;
show tables;
drop table actors;
drop table movies;
drop table directors;
drop table acts;

create table directors
(
director varchar(50) , 
dyear int(5),
primary key (director)
);

create table movies
(
title varchar(50),
director varchar(50),
myear int(5),
rating float(4),
primary key(title),
foreign key(director) references directors(director)
);


create table actors
(
actor varchar(50),
ayear int(5),
primary key(actor)
);


create table acts
(
actor varchar(50),
title varchar(20) not null,
foreign key(actor) references actors(actor)
);

insert into Movies(title,director,myear,rating) values ('fargo','coen',1996,8.2);
insert into Movies(title,director,myear,rating) values ('raising arisona','coen',1987,7.6);
insert into Movies(title,director,myear,rating) values ('spiderman','raimi',2002,7.4);
insert into Movies(title,director,myear,rating) values ('wonder boys','hanson',2000,7.6);

insert into directors(director,dyear) values ('coen',1954);
insert into directors(director,dyear) values ('hanson',1945);
insert into directors(director,dyear) values ('raimi',1959);

insert into actors(actor,ayear) values ('cage',1964);
insert into actors(actor,ayear) values ('hanks',1956);
insert into actors(actor,ayear) values ('maguire',1975);
insert into actors(actor,ayear) values ('mcdormand',1957);

insert into acts (actor,title) values ('cage','raising arizona');
insert into acts (actor,title) values ('maguire','spiderman');
insert into acts (actor,title) values ('maguire','wonder boys');
insert into acts (actor,title) values ('mcdormand','fargo');
insert into acts (actor,title) values ('mcdormand','raising arizona');
insert into acts (actor,title) values ('mcdormand','wonder boys');

select * from directors;
select * from movies;
select * from actors;
select * from acts;

select * from movies where myear > 1997;

select title from movies where myear > 1997 and director='handson';

select title,rating from movies;

select actors from actors,directors;
select actors.actor,directors.director from actors,directors;
create view q as 
select actors.actor,directors.director from actors,directors;
select count(*) from q;

select distinct movies.title from movies,acts where director = "coen" and actor="mcdormand";