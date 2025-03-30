-- String Functions --

select LENGTH('Thangakani');
select * from employee_demographics;

select first_name ,LENGTH(first_name) from employee_demographics ORDER BY 1;
select UPPER('kani');
select UPPER('THANGAKANI');

select first_name,UPPER(first_name) from employee_demographics ORDER BY 1;
select TRIM('                      kani   ') AS name;
select LTRIM('                      kani   ') AS name;
select RTRIM('                      kani                ') AS name;
SELECT first_name, LEFT(first_name , 4) , RIGHT(first_name , 4) from employee_demographics;

SELECT first_name, LEFT(first_name , 4) , RIGHT(first_name , 4), SUBSTRING(first_name,3,2), birth_date from employee_demographics;

SELECT first_name, LEFT(first_name , 4) , RIGHT(first_name , 4), SUBSTRING(first_name,3,2), birth_date,SUBSTRING(birth_date::TEXT,6,2) from employee_demographics;

SELECT SUBSTRING(first_name, 4,2) from employee_demographics;

select SUBSTRING(birth_date::TEXT,6,2) from employee_demographics;
select SUBSTRING(birth_date::TEXT,6,2) AS birth_month from employee_demographics;
select first_name, REPLACE(first_name,'a','z') from employee_demographics;
select POSITION('x' IN 'Alexander');
select first_name,POSITION ('an' IN first_name) from employee_demographics;
select first_name, last_name , CONCAT(first_name, ' ',last_name) AS full_name from employee_demographics;

