use amrita;

CREATE TABLE student1(
	id int primary key,
    name varchar(100),
    age int,
    marks int,
    dept_id int
);

CREATE TABLE department1(
	dept_id int primary key,
    dept_name varchar(100)
    );
    
CREATE TABLE employee1(
	emp_id int primary key,
    emp_name varchar(100),
    salary int,
    dept_id int
    );
    
select * from student1;

select * from department1;

select * from employee1;

-- inserting records

INSERT into department1 values
(1,"Computer Science"),
(2,"Mathematics"),
(3,"Physics")
;

INSERT into department1 values
(4,"mechanical");

-- insert students

INSERT into student1 VALUES
(1,"Alice",20,85,1),
(2,"Bob",21,78,2),
(3,"Charlie",19,90,1),
(4,"David",22,88,3),
(5,"Eva",21,76,2)
;

-- Inserting Employee

INSERT INTO employee1 VALUES
(1,"John",50000,1),
(2,"Jane",60000,1),
(3,"Jake",45000,2),
(4,"Jill",55000,3),
(5,"Jim",62000,3)
;


select name,marks from student1 where marks > (select avg(marks) from student1);

select emp_name,salary from employee1 where salary > (select avg(salary) from employee1);

select dept_id,dept_name from department1 where dept_id in (select distinct dept_id from student1);

select name,(select dept_name from department1 where dept_id = student1.dept_id) as department from student1;

select dept_id,dept_name from department1 where dept_id not in (select distinct dept_id from student1);