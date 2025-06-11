-- Group by & having clause

use amrita;

create table payment(
id int(5),
name varchar(50),
salary int(10),
location varchar(100),
mode varchar(10)
);

INSERT INTO payment (id, name, salary, location, mode) VALUES
(1, 'Ravi Kumar', 55000, 'Mumbai', 'UPI'),
(2, 'Ankita Shah', 62000, 'Delhi', 'Cash'),
(3, 'Amit Joshi', 47000, 'Bangalore', 'Card'),
(4, 'Pooja Mehta', 53000, 'Chennai', 'UPI'),
(5, 'Suresh Yadav', 60000, 'Kolkata', 'NetBank'),
(6, 'Khushbu Singh', 58000, 'Pune', 'Cash'),
(7, 'Neha Agarwal', 49500, 'Ahmedabad', 'Card'),
(8, 'Rahul Dev', 52000, 'Jaipur', 'UPI'),
(9, 'Divya Rai', 61500, 'Lucknow', 'NetBank'),
(10, 'Vikas Taneja', 57500, 'Hyderabad', 'Card');

select * from payment;

select mode,sum(salary) as newSal from payment group by mode;

select mode,sum(salary) as newSal from payment group by mode having count(salary) >= 2 ORDER BY newSal DESC;

