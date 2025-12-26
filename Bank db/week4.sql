create table borrower (
          	customer_name VARCHAR(50),
	loan_number INT,
	PRIMARY KEY (customer_name, loan_number),
	FOREIGN KEY (customer_name) REFERENCES bank_customer(customer_name),
	FOREIGN KEY (loan_number) REFERENCES loan(loan_number)
); 

desc borrower;
	
insert into borrower values ("Avinash", 1),
("Dinesh", 2),
("Mohan", 3),
("Nikil", 4),
("Ravi", 5);
select * from borrower;


--q1
select d.customer_name
from depositer d 
join bank_account ba
on d.accno=ba.accno
join branch b
on b.branch_name=ba.branch_name
WHERE b.branch_city = 'Delhi'
group by d.customer_name
HAVING COUNT(DISTINCT ba.branch_name) = (
    SELECT COUNT(*) FROM branch WHERE branch_city = 'Delhi'
);

--q2
select distinct customer_name from borrower 
where customer_name not in (select customer_name from depositer);

--q3
SELECT DISTINCT bc.customer_name FROM bank_customer bc
JOIN depositer d ON bc.customer_name = d.customer_name
JOIN bank_account ba ON d.accno = ba.accno
JOIN borrower br ON bc.customer_name = br.customer_name
JOIN loan l ON br.loan_number = l.loan_number
JOIN branch b ON b.branch_name = ba.branch_name
WHERE b.branch_city = 'Bangalore'
AND l.branch_name = ba.branch_name;

--q4
select branch_name from branch where assets > ALL (select assets from branch where branch_city=’Bangalore’);
 
--q5
DELETE FROM depositer
WHERE accno IN (SELECT accno 
FROM bank_account
WHERE branch_name IN (
SELECT branch_name
FROM branch
WHERE branch_city = 'Bombay'));
DELETE FROM bank_account
WHERE branch_name IN (
SELECT branch_name
FROM branch
WHERE branch_city = 'Bombay');
select * from bank_account;

--q6
UPDATE BANK_ACCOUNT
SET balance = balance * 1.05;








