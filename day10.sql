create database amrit;

show databases;

use amrita;

create user 'amrita'@'localhost' identified by '1234';

select user,host from mysql.user;

grant select,create on amrita.* to 'amrita'@'localhost';

flush privileges;	