--Sub queries --

select MAX(salary) AS third_highest from employee_salary 
WHERE salary NOT IN(select DISTINCT salary from employee_salary ORDER BY salary DESC LIMIT 2);

SELECT * from employee_demographics;

SELECT * from employee_salary;
select employee_id from employee_salary WHERE dept_id = 1;
SELECT * from employee_demographics WHERE employee_id IN (select employee_id from employee_salary WHERE dept_id = 1);

select first_name,salary ,AVG(salary) from employee_salary GROUP BY first_name,salary;
select AVG(salary) from employee_salary;

select first_name , salary ,(select AVG(salary) from employee_salary) from employee_salary;

select gender, AVG(age), MIN(age),MAX(age) ,Count(age) from employee_demographics GROUP BY gender;

select * from (select gender, AVG(age), MIN(age),MAX(age) ,Count(age) from employee_demographics GROUP BY gender);

select gender, AVG(MAX(age)) from ( select gender, AVG(age) , MIN(age) ,MAX(age) , COUNT(age) from employee_demographics GROUP BY gender) AS Agg_table GROUP BY gender;


SELECT gender, AVG(max_age)
FROM (
    SELECT gender, AVG(age), MIN(age), MAX(age) AS max_age, COUNT(age)
    FROM employee_demographics
    GROUP BY gender
) AS Agg_table
GROUP BY gender;



