SELECT
	SUM(salary)
FROM
	employees;


SELECT
	SUM(salary)
FROM
	employees
WHERE
	department_id = 5;


SELECT
	department_id,
	SUM(salary)
FROM
	employees
GROUP BY
	department_id;



SELECT
	e.department_id,
	department_name,
	SUM(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name



SELECT
	e.department_id,
	department_name,
	SUM(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	department_name
ORDER BY
	SUM(salary) DESC;