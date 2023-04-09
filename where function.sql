/*SELECT
	employee_id,
	first_name,
	last_name,
	department_id
FROM
	employees
/*WHERE 
	department_id = 5 */
WHERE
	last_name = 'Chen'
ORDER BY
	first_name*/

SELECT
	employee_id,
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE
	YEAR (hire_date) = 1999 --hire_date >= '1999-01-01' 
ORDER BY
	hire_date DESC