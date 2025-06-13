-- Joins

use amrita;

select * from payment;

select * from emp;

INSERT INTO emp(id, name, salary, location) VALUES
(11, 'rajat', 110000, 'andheri'),
(12, 'neha', 125000, 'borivali'),
(13, 'vishal', 130000, 'bandra'),
(14, 'swati', 95000, 'goregaon'),
(15, 'manav', 145000, 'dadar'),
(16, 'isha', 115000, 'kurla');

-- inner join
select * from emp as e inner join payment as p on e.id = p.id;

-- Left join
select * from emp as e left join payment as p on e.id = p.id;

-- right join
select * from emp as e right join payment as p on e.id = p.id;

-- union join
select * from emp 
union 
select * from payment;
