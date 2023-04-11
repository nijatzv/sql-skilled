																					-- TASK is at the end of the page
SELECT
	employee_id,
	first_name,
	last_name,
	phone_number
FROM
	employees
WHERE
	phone_number IS NOT NULL;    -- gives rows with(out) phone number



SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM
	employees
WHERE
	department_id = 5
AND NOT salary>5000
ORDER BY
	salary;



SELECT
	employee_id,
	first_name,
	last_name,
	department_id
FROM 
	employees
WHERE
	department_id NOT IN (1,2,3)
ORDER BY
	first_name, last_name;



SELECT
	employee_id,
	first_name,
	last_name
FROM
	employees
WHERE 
	first_name NOT LIKE 'D%'
ORDER BY
	first_name;




SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM
	employees
WHERE
	salary NOT BETWEEN 3000
AND 5000
ORDER BY
	salary;


														-- using CASE
SELECT
	first_name,
	last_name,
	hire_date,
	CASE (2000 - YEAR(hire_date))
		WHEN 1 THEN '1 year'
		WHEN 3 THEN '3 years'
		WHEN 5 THEN '5 years'
		WHEN 10 THEN '10 years'
		WHEN 15 THEN '15 years'
		WHEN 20 THEN '20 years'
		WHEN 25 THEN '25 years'
		WHEN 30 THEN '30 years'
	END aniversary
FROM
	employees
ORDER BY
	first_name;


SELECT
	first_name,
	last_name,
	CASE
		WHEN salary < 3000 THEN 'Low'
		WHEN salary >= 3000 AND salary <= 5000 THEN 'Average'
		WHEN salary > 5000 THEN 'High'
	END evaluation
FROM
	employees;


																			--TASK 7 (CASE)
SELECT
	first_name, last_name, salary,
	CASE
		WHEN salary > 10000 THEN 'High'
		WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium'
	END salary_range
FROM 
	employees
ORDER BY
	first_name