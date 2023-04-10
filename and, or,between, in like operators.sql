-- TASK 6 IS AT THE END OF THE PAGE

--											AND function
SELECT
	first_name, last_name, salary
FROM
	employees
WHERE
	salary>5000 AND salary<7000
ORDER BY salary DESC;


--											OR function
SELECT
	first_name, last_name, hire_date
FROM
	employees
WHERE
	YEAR (hire_date) = 1997 OR YEAR (hire_date) = 1998
ORDER BY
	first_name,
	last_name;
	

--											BETWEEN function
SELECT
	employee_id, first_name, last_name, hire_date
FROM
	employees
WHERE
	hire_date BETWEEN '1999-01-01' AND '2000-12-31'
ORDER BY
	hire_date;


SELECT
	employee_id, 
	first_name, 
	last_name, 
	salary
FROM
	employees
WHERE
	salary NOT BETWEEN 2500 AND 2900;
	

--											IN function
SELECT
	first_name,
	last_name,
	department_id
FROM
	employees
WHERE
	department_id IN (3,8,9)
ORDER BY department_id;
	

--											LIKE function
SELECT
	employee_id,
	first_name, last_name
FROM
	employees
WHERE
	first_name LIKE 'jo%'     -- % is in LIKE operator. It must be written
ORDER BY
	first_name;


SELECT
	employee_id, first_name, last_name
FROM
	employees
WHERE first_name LIKE '_h%'
ORDER BY
	first_name;
	

--											Task 6 - LIKE (Filtering Data)
SELECT
	employee_id, first_name, last_name
FROM
	employees
WHERE
	last_name LIKE '%son%'
ORDER BY
	last_name

