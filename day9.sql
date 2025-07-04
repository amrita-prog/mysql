use amrita;

CREATE TABLE orders(
	order_id int primary key,
    customer_name varchar(100),
    order_date DATE,
    delivery_date DATE,
    amount DECIMAL(10,2),
    discount_percentage int
);

INSERT INTO orders VALUES
(1, 'Amit', '2024-12-01', '2024-12-05', 1000.50, 10),
(2, 'Sita', '2024-12-02', '2024-12-06', 1500.00, 5),
(3, 'Ravi', '2024-12-03', '2024-12-07', 2000.75, 15),
(4, 'Priya', '2024-12-04', '2024-12-10', 500.00, 0),
(5, 'John', '2024-12-05', '2024-12-08', 2500.00, 20),
(6, 'Sneha', '2024-12-06', '2024-12-12', 1750.25, 10),
(7, 'Vikram', '2024-12-07', '2024-12-11', 2200.00, 5),
(8, 'Fatima', '2024-12-08', '2024-12-13', 3000.50, 25),
(9, 'David', '2024-12-09', '2024-12-15', 4000.0, 23),
(10, 'Anjali', '2024-12-10', '2024-12-14', 1200.00, 0);

select * from orders;

-- show the order month and week day

select
customer_name,order_date,
month(order_date) as month, 
weekday(order_date) as week_day, 
dayname(order_date) as day_name 
from orders;

-- Calculate number of days taken for delivery

select 
order_id,datediff(delivery_date,order_date) as date_diff 
from orders;

-- add 7 day to delivery date

select 
order_id,delivery_date,
date_add(delivery_date,interval 7 day) as extended_delivery 
from orders;

-- calculate the total amount discount

select 
order_id,amount,discount_percentage , 
(amount * discount_percentage / 100) as amt_dis 
from orders;

-- Get Quaterly Sales 

select
quarter(order_date) as quarter_num,
sum(amount) as total_sales
from orders
group by quarter(order_date) ;

-- weekday vs weekend

select 
  case
    when dayofweek(order_date) in (1,7) then "Weekend"
    else "Weekday"
  end as day_type,
  count(*) as total_orders,
  sum(amount) as total_sales
  from orders
  group by day_type;
  
  -- monthly sales trend
  
  select
  month(order_date) as month_day,
  count(*) as total_sales,
  sum(amount) as total_amt
  from orders
  group by month_day;
  
  -- date formatting
  
  select 
  date_format(order_date,"%d-%b-%Y") as for_date 
  from orders;
  
  create view fmt_view as 
  select 
  date_format(order_date,"%d-%b-%Y") as for_date 
  from orders;
  
create or replace view fmt_view as
  select
  month(order_date) as month_day,
  count(*) as total_sales,
  sum(amount) as total_amt
  from orders
  group by month_day;
  
  