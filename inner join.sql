
SELECT
	first_name,
	last_name,
	employees.department_id,
	departments.department_id,
	department_name
FROM
	employees
		INNER JOIN
	departments ON departments.department_id = employees.department_id


SELECT
	first_name,
	last_name,
	job_title,
	department_name
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
INNER JOIN jobs j ON j.job_id = e.job_id
WHERE
	e.department_id IN (1,2,3);
