select firstname from employeedemographics where lastname LIKE '%M' GROUP BY firstname HAVING AVG(age) >30;
select * from employeedemographics;
select age ,count(*) as count from employeedemographics group by age;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Age INT,
    JobTitle VARCHAR(50),
    Salary DECIMAL(10,2),
    ManagerID INT
);
select * from Employee;
INSERT INTO Employee (EmpID, EmpName, Age, JobTitle, Salary, ManagerID) VALUES
(1, 'Allen Jack', 50, 'Manager', 4000.00, 11),
(2, 'Joe Wang', 27, 'Analyst', 200.00, 1),
(3, 'Henry Ted', 26, 'Senior Analyst', 400.00, 1),
(4, 'Sam Aston', 22, 'Analyst', 200.00, 1),
(5, 'Mike George', 21, 'Analyst', 260.00, 3),
(6, 'Molly Sam', 23, 'Analyst', 280.00, 8),
(7, 'Nicky Bell', 28, 'Analyst', 280.00, 8),
(8, 'John Ford', 21, 'Senior Analyst', 300.00, 1),
(9, 'Monika William', 31, 'Analyst', 200.00, 3),
(10, 'Jennifer Dion', 29, 'Analyst', 200.00, 3),
(11, 'Sam William', 53, 'Senior Manager', 6000.00, NULL);
select salary ,Count(salary) from Employee group by salary;
select empname,empid from Employee order by salary desc limit 1 offset 2;
select * from Employee order by salary desc;
select * from Employee;
//1.Find all employees whose salary is greater than 250.
select * from Employee where salary > 250;
//2.Find the total number of employees in the company.
select jobtitle from Employee group by jobtitle;
//3.List all the unique job titles present in the Employee table.
select count(*) as total_number_of_employees from Employee;
//4.Find employees whose age is between 22 and 30 (inclusive).
select * from Employee where age between 22 and 30;
//5.Find the highest paid employee in the company.
select empname from Employee order by salary desc limit 1;
//6.Find the average salary of employees with the job title 'Analyst'.
select AVG(salary) from Employee where jobtitle ='Analyst';
//7.List all employees along with their manager names.
select e.empname as Empname , e.empid, m.empname as Managername from Employee e LEFT JOIN Employee m on m.empid = e.managerid;
//8.Find managers who have at least 2 employees directly reporting to them.
select managerid from employee where managerid is not null group by managerid having count(*) >=2;
//9.Find employees who do not have any manager.
select empname from Employee where managerid is null;
//10.Find the names of managers who have at least 3 direct reports.
select e.empname as EmpName , e.empid as Empid from Employee e where empid in (select managerid from Employee group by managerid having count(*) >=3);
//11.List the number of employees under each manager.
select managerid , count(*) as NoOfEmployees from Employee where managerid is not null group by managerid;
//12.Find the youngest employee in the company.
select empname from Employee order by age limit 1;
//13.Find the number of employees in each job title.
select jobtitle, count(*) from Employee group by jobtitle;
//14.List employees whose names start with ‘J’.
select empname from Employee where empname like 'J%';
//15.Find the second highest salary in the Employee table.
select * from Employee order by salary desc limit 1 offset 1;