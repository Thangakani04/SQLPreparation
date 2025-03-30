select * from employeedemographics;
select * from employeesalary;

select firstname from employeedemographics where lastname LIKE '%M' GROUP BY firstname HAVING AVG(age) >30;

select * from employeedemographics ORDER BY age DESC LIMIT 1 OFFSET 1;
select * from employeesalary ORDER BY salary DESC ;
select * from employeesalary ORDER BY salary DESC LIMIT 2 OFFSET 1;

select gender , AVG(age) AS avg_age from employeedemographics group by gender having AVG(age) > 30;