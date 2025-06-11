-- TIMESTAMPS & EXTRACT 

use amrita;

select * from payment;

SELECT NOW() AS current_datetime;

SELECT CURDATE() AS `current_date`;

SELECT CURTIME() AS `current_time`;

SELECT CURRENT_TIMESTAMP(6) AS `current_datetime_with_precision`;

SELECT UTC_TIMESTAMP() AS `utc_datetime`;


SELECT YEAR(NOW()) AS current_year; 

SELECT QUARTER(NOW()) AS current_quarter; 

SELECT MONTH(NOW()) AS current_month;

SELECT WEEK(NOW(), 1) AS current_week; 

SELECT DAY(NOW()) AS current_day; 

SELECT HOUR(NOW()) AS current_hour; 

SELECT MINUTE(NOW()) AS current_minute; 