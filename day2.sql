use amrita;

select * from emp;

insert into emp(id,name,salary,location) values 
(1,'amrita',150000,'churchgate'),
(2,'ayushee',100000,'kandivali'),
(3,'ankita',120000,'malad'),
(4,'ananya',140000,'vasai road');

-- update table
update emp set salary = 170000 where id=2;

-- add column
alter table emp add column gender varchar(10);

-- delete column
alter table emp drop column gender;

-- delete values
delete from emp where id = 3;

-- delete table
drop table emp;
