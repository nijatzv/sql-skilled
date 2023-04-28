SELECT
	AVG(salary)
FROM
	employees;


SELECT
	AVG(DISTINCT salary)
FROM
	employees;


SELECT 
	ROUND(AVG(DISTINCT salary),2)
FROM
	employees;


SELECT 
	ROUND(AVG(DISTINCT salary),2)
FROM
	employees
WHERE
	department_id = 5;


SELECT
	department_id,
	AVG(salary)
FROM
	employees
GROUP BY
	department_id


SELECT * FROM employees
SELECT * FROM departments

SELECT
	e.department_id,
	department_name,
	ROUND(AVG(salary), 2)
FROM 
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	department_name