Create database insurance;
Use insurance;

create table person(
driver_id varchar(10) PRIMARY KEY,
name varchar(10),
address varchar(10)
);

create table car(
 reg_num varchar(10) PRIMARY KEY,
model varchar(10),
year INT);

create table accident(
report_num int PRIMARY KEY,
accident_date date ,
location varchar(10));

create table owns(
driver_id varchar(10) ,
reg_num varchar(10) ,
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num));

create table participated (
driver_id varchar(10),
reg_num varchar(10),
report_num int,
damage_amount int,
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));

desc person; 
desc accident; 
desc participated; 
desc car;
desc owns; 

insert into person values("A01","Richard", "Srinivas nagar"); 
insert into person values("A02","Pradeep", "Rajaji nagar"); 
insert into person values("A03","Smith", "Ashok nagar"); 
insert into person values("A04","Venu", "N R Colony"); 
insert into person values("A05","John", "Hanumanth nagar"); 
select * from person;

insert into car values("KA052250","Indica", "1990"); 
insert into car values("KA031181","Lancer", "1957"); 
insert into car values("KA095477","Toyota", "1998"); 
insert into car values("KA053408","Honda", "2008"); 
insert into car values("KA041702","Audi", "2005"); 
select * from car;


insert into owns values("A01","KA052250"); 
insert into owns values("A02","KA031181"); 
insert into owns values("A03","KA095477"); 
insert into owns values("A04","KA053408"); 
insert into owns values("A05","KA041702"); 
select * from owns;


insert into accident values(11,'2003-01-01',"Mysore Road"); 
insert into accident values(12,'2004-02-02',"South end Circle"); 
insert into accident values(13,'2003-01-21',"Bull temple Road"); 
insert into accident values(14,'2008-02-17',"Mysore Road"); 
insert into accident values(15,'2004-03-05',"Kanakpura Road"); 
select * from accident; 

insert into participated values("A01","KA052250",11,10000); 
insert into participated values("A02","KA053408",12,50000); 
insert into participated values("A03","KA095477",13,25000); 
insert into participated values("A04","KA031181",14,3000); 
insert into participated values("A05","KA041702",15,5000); 
select * from participated; 
