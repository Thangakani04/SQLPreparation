select * from employee_salary;
select * from employee_demographics;

select salary from employee_salary where salary NOT IN (select DISTINCT salary from employee_salary);

SELECT salary
FROM employee_salary
WHERE salary NOT IN (
    SELECT DISTINCT salary
    FROM employee_salary
);

SELECT salary
FROM employee_salary
WHERE salary IN (
    SELECT salary
    FROM employee_salary
    GROUP BY salary
    HAVING COUNT(*) > 1
);

