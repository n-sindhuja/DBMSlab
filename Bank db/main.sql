create database bank;
use bank;

create table branch (
branch_name varchar(30) , 
branch_city varchar(25),
assets int , primary key(branch_name));

create table bank_account(
accno int,
branch_name varchar(30),
balance int,
PRIMARY KEY(accno), foreign key (branch_name) references branch(branch_name));
create table bank_customer(
customer_name varchar(20),
customer_street varchar(30),
customer_city varchar (35),
PRIMARY KEY(customer_name));

create table depositer(
customer_name varchar(20),
accno int,
PRIMARY KEY(customer_name,accno),
foreign key (accno) references bank_account(accno),
foreign key (customer_name) references bank_customer(customer_name));

create table loan(
loan_number int,
branch_name varchar(30),
amount int,
PRIMARY KEY(loan_number),
foreign key (branch_name) references branch(branch_name));

desc branch;
desc bank_account;
desc bank_customer;
desc depositor;
desc loan;

insert into branch values('SBI_Chamrajpet','Bangalore',50000),
('SBI_ResidencyRoad','Bangalore',10000),
('SBI_ShivajiRoad','Bombay',20000),
('SBI_ParlimentRoad','Delhi',10000),
('SBI_Jantarmantar','Delhi',20000);
Select * from branch;

insert into bank_account values(1,'SBI_Chamrajpet',2000);
insert into bank_account values(2,'SBI_ResidencyRoad',5000);
insert into bank_account values(3,'SBI_ShivajiRoad',6000);
insert into bank_account values(4,'SBI_ParlimentRoad',9000);
insert into bank_account values(5,'SBI_Jantarmantar',8000);
insert into bank_account values(6,'SBI_ShivajiRoad',4000);
insert into bank_account values(8,'SBI_ResidencyRoad',4000);
insert into bank_account values(9,'SBI_ParlimentRoad',3000);
insert into bank_account values(10,'SBI_ResidencyRoad',5000);
insert into bank_account values(11,'SBI_Jantarmantar',2000);
select * from bank_account;

insert into bank_customer values('Avinash','Bull_Temple_Road','Bangalore');
insert into bank_customer values('Dinesh','Bannergatta_Road','Bangalore');
insert into bank_customer values('Mohan','NationalCollege_Road','Bangalore');
insert into bank_customer values('Nikil','Akbar_Road','Delhi');
insert into bank_customer values('Ravi','Prithviraj_Road','Delhi');	

insert into depositer values('Avinash',1);
insert into depositer values('Dinesh',2);
insert into depositer values('Mohan',3);
insert into depositer values('Nikil',4);
insert into depositer values('Ravi',5);
insert into depositer values('Avinash',8);
insert into depositer values('Nikil',9);
insert into depositer values('Dinesh',10);
insert into depositer values('Nikil',11);
select * from depositer;


insert into loan values(1,'SBI_Chamrajpet',1000);
insert into loan values(2,'SBI_ResidencyRoad',2000);
insert into loan values(3,'SBI_ShivajiRoad',3000);
insert into loan values(4,'SBI_ParlimentRoad',4000);
insert into loan values(5,'SBI_Jantarmantar',5000);
select * from loan;

