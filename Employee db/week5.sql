--q1
select distinct e.empno from emp e join assigned_to a on e.empno=a.empno 
join project p on p.pno=a.pno
where ploc in('bengaluru','hyderabad','mysuru');

--q2
select e.empno from emp e where e.empno not in
(select empno from incentives);

--q3
select e.ename,e.empno,d.dname,a.job_role,d.loc as department_location,
p.ploc as project_location from emp e 
join assigned_to a on e.empno=a.empno 
join project p on a.pno=p.pno
join dept d on e.deptno=d.deptno
where p.ploc=d.loc;





