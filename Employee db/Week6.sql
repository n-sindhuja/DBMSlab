
--q1select m.ename,count(*)
from emp e,emp m
where e.mgr_no=m.empno
group by m.ename
having count(*) = (select max(mycount)
from (Select count(*)mycount
from emp
group by mgr_no)a);

--q2
select * from emp m
where m.empno in 
(select mgr_no from emp)and 
m.sal>(select avg(e.sal) from emp e 
where e.mgr_no=m.empno);

--q3
SELECT e.deptno, e.ename
FROM emp e WHERE e.sal = (SELECT MAX(sal)
FROM emp WHERE deptno = e.deptno 
AND sal < (SELECT MAX(sal)  FROM emp WHERE deptno = e.deptno      ));

--q4
SELECT e.*
FROM emp e
JOIN incentives i ON e.empno = i.empno
WHERE i.incentive_date BETWEEN '2019-01-01' AND '2019-01-31'
ORDER BY i.incentive_amount DESC
LIMIT 1 OFFSET 1;


--q5
select * from emp e where e.deptno=
(select m.deptno from emp m 
where m.empno=e.mgr_no);









