--q1
select * from car order by year asc;

--q2
select count(report_num) CNT from car c,participated p where c.reg_num=p.reg_num and model='Lancer';

--q3
select count(distinct driver_id) as total_people from participated a, accident b where a.report_num=b.report_num and b.accident_date like '2008-%';

--q4
SELECT * FROM participated ORDER BY damage_amount DESC;

--q5
SELECT AVG(damage_amount) FROM participated;

--q6
DELETE P FROM participated P
JOIN (
    SELECT AVG(damage_amount) AS avg_damage
    FROM PARTICIPATED
) A
ON P.damage_amount < A.avg_damage;
select * from participated;


--q7
SELECT name FROM person A, participated B WHERE A.driver_id = B.driver_id AND damage_amount>(SELECT AVG(damage_amount) FROM participated);

--q8
SELECT MAX(damage_amount) FROM participated;

