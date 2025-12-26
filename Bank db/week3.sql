--q1
select branch_name,CONCAT(assets/100000,'Lakhs') as assets_in_lakha from branch ;

--q2
select d.customer_name from depositer d, bank_account b where
b.branch_name='SBI_ResidencyRoad' and d.accno=b.accno group by
d.customer_name having count(d.accno)>=2;

--q3
create view sum_of_loan
as select branch_name, SUM(Balance)
from bank_account
group by branch_name;
select * from sum_of_loan;






