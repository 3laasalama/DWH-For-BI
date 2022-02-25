--Q1
create table customer(
custno varchar2(6) constraint nonot not null, 
custname varchar2(30) constraint namenot not null, 
address varchar2(40) constraint addressnot not null, 
internal VARCHAR2(1) constraint internalnot not null,
contact varchar(25) constraint contactnot not null, 
phone varchar(7) constraint phonenot not null, 
city varchar(15) constraint citynot not null, 
state varchar(5) constraint statenot not null, 
zip varchar(5) constraint zipnot not null, 
constraint customerpk primary key (custno) );

select * from customer;

-- Q2
create table facility(
facno varchar2(5) constraint facno_not not null, 
facname varchar2(30) constraint facname_not not null,
constraint facno_pk primary key(facno));

-- Q3
create table location(
locno varchar2(5) constraint locno_not not null, 
facno varchar2(5),
locname varchar2(25) constraint locname_not not null,
constraint locno_pk primary key(locno));

--Q4
-- there is one one-to-many relationship , facility is the father and location is the child

--Q5
alter table location add constraint facno_fk foreign key(facno) references facility(facno);

--Q6
insert into location(locno, locname)
values('123', 'Alaa');

select * from location ;
--Null values are not allowed for facno in facility table, 
--but it's allowed for location table for the same column.
alter table location add constraint facno_not not null;

drop table location ;

create table location(
locno varchar2(5) constraint locno_not not null, 
facno varchar2(5) not null,
locname varchar2(25) constraint locname_not not null,
constraint locno_pk primary key(locno),
constraint facno_fk foreign key(facno) references facility (facno));

--Q7
alter table facility 
add constraint facname_unique unique(facname);




