select age,gender from employee_demographics UNION select first_name , last_name from employee_salary;

SELECT age::VARCHAR AS name, gender::VARCHAR AS name
FROM employee_demographics
UNION
SELECT first_name::VARCHAR AS name, last_name::VARCHAR AS name
FROM employee_salary;

SELECT CAST (age AS VARCHAR) , CAST(gender AS VARCHAR)  
FROM employee_demographics
UNION
SELECT CAST (first_name AS VARCHAR) , CAST (last_name AS VARCHAR) 
FROM employee_salary;

select age:: VARCHAR, gender:: VARCHAR from employee_demographics UNION select first_name::VARCHAR , last_name:: VARCHAR from employee_salary;

select first_name::VARCHAR , last_name:: VARCHAR from employee_demographics UNION select first_name::VARCHAR , last_name:: VARCHAR from employee_salary;

select first_name::VARCHAR , last_name:: VARCHAR from employee_demographics UNION ALL select first_name::VARCHAR , last_name:: VARCHAR from employee_salary;

select first_name::VARCHAR , last_name:: VARCHAR, 'Old Lady' AS label from employee_demographics WHERE age > 40 AND gender = 'Female' UNION 
select first_name::VARCHAR , last_name::VARCHAR, 'Old Man' AS lABEL from employee_demographics WHERE age > 40 AND gender = 'Male' UNION
select first_name::VARCHAR, last_name::VARCHAR, 'Highly paid employees' AS LABEL  from employee_salary WHERE salary > 7000 ORDER BY first_name ,last_name ;