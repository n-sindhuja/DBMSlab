--q1
select distinct p.pname from parts p join catalog c on p.pid = c.pid;

--q2
select s.sname from suppliers s where not exists (select * from parts p where not exists (select * from catalog c where c.sid = s.sid and c.pid = p.pid));

--q3
select s.sname from suppliers s where not exists (select * from parts p where p.color ='red' and not exists ( select * from catalog c where c.sid = s.sid and c.pid = p.pid));

--q4
select p.pname from parts p
join catalog c1 on p.pid = c1.pid
join suppliers s on s.sid = c1.sid
where s.sname = 'acme widget'
and not exists (
    select * from catalog c2 where c2.pid = p.pid and c2.sid != c1.sid
);

--q5
select distinct c.sid from catalog c join (select pid, avg(cost) as avg_cost from catalog group by pid) a on c.pid = a.pid where c.cost > a.avg_cost;

--q6
select p.pname, s.sname from parts p
join catalog c on p.pid = c.pid
join suppliers s on s.sid = c.sid
where c.cost = (
    select max(cost) from catalog where pid = p.pid
);



