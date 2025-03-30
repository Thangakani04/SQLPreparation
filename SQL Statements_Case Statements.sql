--CASE STATEMENTS--
select first_name, last_name ,age,
CASE
   WHEN age<=30 THEN 'Young'
   WHEN age>45 THEN 'Old'
   WHEN age BETWEEN 50 AND 70 THEN 'Very old'
   WHEN gender = 'Female' THEN 'Lady'
   WHEN gender ='Male' then 'Gents'
END
FROM employee_demographics;


select first_name, last_name ,age,
CASE
   WHEN age<=30 THEN 'Young'
   WHEN age>= 50  THEN 'On Deaths Door'
   WHEN age BETWEEN 31 AND 50 THEN 'Old'  
END AS Age_bracket
FROM employee_demographics;


--PAY INCREASE AND BONUS--
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10%

select first_name, last_name, salary,
CASE 
    WHEN salary < 50000 Then salary + (salary* 0.05)
	WHEN salary > 50000 Then salary + (salary * 0.07)
END AS New_salary,
CASE
	WHEN dept_id = 6 THEN salary + (salary * 0.10)
END AS Bonus
from employee_salary;























