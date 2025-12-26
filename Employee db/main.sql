create database emp;
use emp;

CREATE TABLE dept (
deptno decimal(2,0) primary key,
dname varchar(14) default NULL,
loc varchar(13) default NULL
);

CREATE TABLE emp (
empno decimal(4,0) primary key,
ename varchar(10) default NULL,
mgr_no decimal(4,0) default NULL,
hiredate date default NULL,
sal decimal(7,2) default NULL,
deptno decimal(2,0),
foreign key (deptno) references dept(deptno) 
on delete cascade on update cascade
);

create table incentives (
empno decimal(4,0) references emp(empno) 
on delete cascade on update cascade,
incentive_date date,
incentive_amount decimal(10,2),
primary key(empno,incentive_date)
);

Create table project (
pno int primary key,
pname varchar(30) not null,
ploc varchar(30)
);

Create table assigned_to (
empno decimal(4,0) references emp(empno) 
on delete cascade on update cascade,
pno int references project(pno) 
on delete cascade on update cascade,
job_role varchar(30),
primary key(empno,pno)
);

desc dept;
desc incentives;
desc project;
desc assigned_to;

insert into dept values (10,'accounting','mumbai');
insert into dept values (20,'research','bengaluru');
insert into dept values (30,'sales','delhi');
insert into dept values (40,'operations','chennai');
select * from dept;

insert into emp values (7369,'adarsh',7902,'2012-12-17','80000.00','20');
insert into emp values (7499,'shruthi',7698,'2013-02-20','16000.00','30');
insert into emp values (7521,'anvitha',7698,'2015-02-22','12500.00','30');
insert into emp values (7566,'tanvir',7839,'2008-04-02','29750.00','20');
insert into emp values (7654,'ramesh',7698,'2014-09-28','12500.00','30');
insert into emp values (7698,'kumar',7839,'2015-05-01','28500.00','30');
insert into emp values (7782,'clark',7839,'2017-06-09','24500.00','10');
insert into emp values (7788,'scott',7566,'2010-12-09','30000.00','20');
insert into emp values ('7839','king',NULL,'2009-11-17','99999.99','10');
insert into emp values ('7844','turner',7698,'2010-09-08','15000.00','30');
insert into emp values ('7876','adams',7788,'2013-01-12','11000.00','20');
insert into emp values ('7900','james',7698,'2017-12-03','9500.00','30');
insert into emp values ('7902','ford','7566','2010-12-03','30000.00','20');
select * from emp;


insert into incentives values (7499,'2019-02-01',5000.00);
insert into incentives values (7521,'2019-03-01',2500.00);
insert into incentives values (7566,'2022-02-01',5070.00);
insert into incentives values (7654,'2020-02-01',2000.00);
insert into incentives values (7654,'2022-04-01',879.00);
insert into incentives values (7521,'2019-02-01',8000.00);
insert into incentives values (7698,'2019-03-01',500.00);
insert into incentives values (7698,'2020-03-01',9000.00);
insert into incentives values (7698,'2022-04-01',4500.00);
select * from incentives;



insert into project values (101,'ai project','bengaluru');
insert into project values (102,'iot','hyderabad');
insert into project values (103,'blockchain','bengaluru');
insert into project values (104,'data science','mysuru');
insert into project values (105,'autonomus systems','pune');
select * from project;



insert into assigned_to values (7499,101,'software engineer');
insert into assigned_to values (7521,101,'software architect');
insert into assigned_to values (7566,101,'project manager');
insert into assigned_to values (7654,102,'sales');
insert into assigned_to values (7521,102,'software engineer');
insert into assigned_to values (7499,102,'software engineer');
insert into assigned_to values (7654,103,'cyber security');
insert into assigned_to values (7698,104,'software engineer');
insert into assigned_to values (7900,105,'software engineer');
insert into assigned_to values (7839,104,'general manager');
select * from assigned_to;
