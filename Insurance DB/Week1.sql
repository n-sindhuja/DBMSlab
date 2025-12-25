--q1
select accident_date,location from accident;
--q2
update participated 
set damage_amount=25000 
where reg_num='KA053408' and report_num=12; 
select * from participated; 
--q3
insert into accident values(16,'2008-03-08',"Domlur"); 
select * from accident; 
--q4
select distinct driver_id
from participated
where damage_amount >= 25000;
