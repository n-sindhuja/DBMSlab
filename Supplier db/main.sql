create database supplier;
use supplier;

create table suppliers (
    sid int primary key,
    sname varchar(30),
    city varchar(30)
);

create table parts (
    pid int primary key,
    pname varchar(30),
    color varchar(20)
);
create table catalog (
    sid int,
    pid int,
    cost int,
    primary key (sid, pid),
    foreign key (sid) references suppliers(sid),
    foreign key (pid) references parts(pid)
);

desc suppliers;
desc parts;
desc catalog;


insert into suppliers values
(10001, 'acme widget', 'bangalore'),
(10002, 'johns', 'kolkata'),
(10003, 'vimal', 'mumbai'),
(10004, 'reliance', 'delhi');
select * from suppliers;


insert into parts values
(20001, 'book', 'red'),
(20002, 'pen', 'red'),
(20003, 'pencil', 'green'),
(20004, 'mobile', 'green'),
(20005, 'charger', 'black');
select* from parts;

insert into catalog values
(10001, 20001, 10),
(10001, 20002, 10),
(10001, 20003, 30),
(10001, 20004, 10),
(10001, 20005, 10),
(10002, 20001, 10),
(10002, 20002, 20),
(10003, 20003, 30),
(10004, 20003, 40);
select* from catalog;

