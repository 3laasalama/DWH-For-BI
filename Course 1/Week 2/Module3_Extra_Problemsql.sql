--Q1
create table customer_ex(
CustNo varchar(10) constraint custno_pk primary key,
CustFirstName varchar(10) constraint FN_not not null, 
CustLastName varchar(10) constraint LN_not not null, 
CustCity varchar(15) ,
CustState char(3), 
CustZip Integer,
CustBal decimal(5,3));

insert into customer_ex(CustNo ,CustFirstName, CustLastName)
values('1', 'Alaa', 'Salama');
select * from customer_ex;


--Q2
create table emplyee_ex(
EmpNo varchar(10) constraint EmpNo_pk primary key,
EmpFirstName varchar(10) constraint EmpFN_not not null,
EmpLastName varchar(10) constraint EmpLN_not not null,
EmpPhone integer ,
EmpEmail varchar(35) constraint email_not not null);


--Q3
create table orderTBL(
OrdNo varchar(9) constraint OrdNo_pk primary key,
OrdDate Date constraint Date_no not null, 
CustNo varchar(10));


--Q4
--YEs, there is two relationships one between ordertbl and customer 
--where one customer can order many orders, and another relationship
--between Employee and ordertbl where one employee can work on more than one order.


--Q5
alter table orderTBL 
add constraint CustNo_fk foreign key(CustNo) references customer_ex(CustNo);


--Q6
insert into orderTBL(OrdNo, OrdDate)
values('123', date '2015-01-01');

select * from orderTBL;
--After inserted one row without vlue for CustNo table accepted the row 
--I can say that CustNO is allowed to have null values

delete from orderTBL 
where OrdNo='123';

alter table orderTBL 
modify CustNo varchar(10) constraint CustNo_not not null;


--Q7
alter table emplyee_ex
add constraint email_unique unique(EmpEmail);





