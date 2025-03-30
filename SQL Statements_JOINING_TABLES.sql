select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

--JOINING TABLES--

select * from employee_demographics AS dem INNER JOIN employee_salary AS sal ON dem.employee_id =sal.employee_id INNER JOIN parks_departments AS park ON sal.dept_id = park.department_id;
select salary from employee_salary  ORDER BY salary DESC;
select * from employee_salary  ORDER BY salary DESC LIMIT 1 OFFSET 2;
