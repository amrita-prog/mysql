use amrita;

select * from emp;

-- WHERE clause is used to filter records
select * from emp where name = 'amrita';

-- LIMIT clause is used to set an upper limit on the number
select * from emp limit 2;

-- ORDER BY is used to sort the result-set in ascending (ASC) or descending order (DESC)
select salary from emp order by salary asc;

select name,salary,(salary+500) as new_sal from emp;

select name,salary from emp where salary >= 150000;

SELECT name, UPPER(name) AS UppercaseName FROM emp;

SELECT name, LOWER(name) AS LowercaseName FROM emp;

SELECT name, LENGTH(name) AS NameLength FROM emp;

SELECT name, SUBSTRING(name, 1, 3) AS NameSubstring FROM emp;

SELECT id, NOW() AS CurrentDateTime FROM emp;

SELECT name, FORMAT(salary, 2) AS FormattedSalary FROM emp;

SELECT name, CONCAT(name, ' from ', location) AS NameWithLocation FROM emp;

SELECT name, REPLACE(name, 'a', '@') AS ReplacedName FROM emp;

SELECT location, TRIM(location) AS TrimmedLocation FROM emp;




