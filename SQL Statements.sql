Select gender , AVG(age) FROM employeedemographics WHERE AVG(age) > 40 GROUP BY gender;

Select gender , AVG(age) FROM employeedemographics  GROUP BY gender HAVING AVG(age) > 50;

Select DISTINCT gender FROM employeedemographics WHERE age > 30;

Select * FROM employeedemographics WHERE FirstName LIKE 'M%'

Select * FROM employeedemographics WHERE FirstName LIKE 'J__';

