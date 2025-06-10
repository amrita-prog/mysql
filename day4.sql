
-- AGGREGATE FUNCTION 

use amrita;

select * from emp;

select count(*) as totalrows from emp;
select sum(salary) as totalsalary from emp;
select avg(salary) as avgsalary from emp;
select max(salary) as maxsalary from emp;
select min(salary) as minsalary from emp;
select round(salary) as roundsal from emp;