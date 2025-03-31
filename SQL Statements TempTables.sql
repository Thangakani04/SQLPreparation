--Temporary Tables--

CREATE TEMPORARY TABLE Table_name (first_name varchar(50) , last_name varchar(50) , fav_movie varchar(100));
select * from Table_name;
Insert into Table_name Values('Thanga','kani','Tiger');

CREATE TEMPORARY TABLE salary_over_50k AS
select * from employee_salary where salary >= 50000;

select * from salary_over_50k;