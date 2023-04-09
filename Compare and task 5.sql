-- !! TASK 5 (COMPARE) IS AT THE END OF PAGE !!

SELECT
	employee_id, first_name, last_name, phone_number
FROM
	employees
WHERE
	phone_number IS NULL -- IS not =

	------

SELECT 
	employee_id, first_name, last_name, department_id
FROM
	employees
WHERE
	department_id <> 8
ORDER BY
	first_name, last_name;

	------

SELECT
	employee_id, first_name, last_name, department_id
FROM
	employees
WHERE 
	department_id <> 8
	AND department_id <> 10
ORDER BY first_name, last_name;

------

SELECT
	employee_id, first_name, last_name, salary
FROM
	employees
WHERE
	salary>10000
ORDER BY salary DESC;


------

SELECT
	employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE
	salary>10000 AND department_id = 8
ORDER BY salary DESC




--                                                                                          TASK 5: 
SELECT
	employee_id, first_name, last_name, salary
FROM employees
WHERE
	salary>=5000
ORDER BY
	salary DESC