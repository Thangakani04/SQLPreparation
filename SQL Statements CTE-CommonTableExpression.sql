--CTE Common Table expression--
WITH CTE_EXAMPLE AS 
(select gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal,Count(salary) count_sal from employee_demographics dem 
JOIN employee_salary sal ON dem.employee_id = sal.employee_id GROUP BY gender)
select AVG(avg_sal) from CTE_EXAMPLE;

select AVG(avg_sal) from 
(select gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal,Count(salary) count_sal from employee_demographics dem 
JOIN employee_salary sal ON dem.employee_id = sal.employee_id GROUP BY gender) example_subquery;

WITH CTE_EXAMPLE AS 
(select employee_id, gender, birth_date from employee_demographics WHERE birth_date > '1985-01-01'),
CTE_EXAMPLE2 AS (select employee_id, salary from employee_salary)
select * from CTE_EXAMPLE JOIN CTE_EXAMPLE2 ON CTE_EXAMPLE.employee_id = CTE_EXAMPLE2.employee_id;

