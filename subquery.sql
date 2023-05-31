													/* SUBQUERY - Alt sorğu – Subquery. Sorğu daxilində sorğuların yazılması. */

SELECT
	*
FROM
	departments
WHERE
	location_id = 1700;



SELECT
	employee_id, first_name, last_name
FROM
	employees
WHERE
	department_id IN (1, 3, 9, 10, 11)
ORDER BY
	first_name, last_name;


SELECT
	employee_id, first_name, last_name
FROM
	employees
WHERE
	department_id IN (SELECT
		department_id
		FROM
			departments
		WHERE
			location_id = 1700)
ORDER BY
	first_name, last_name


SELECT
	employee_id, first_name, last_name
FROM
	employees
WHERE
	department_id NOT IN (SELECT
		department_id
	FROM
		departments
	WHERE
		location_id = 1700)
ORDER BY
	first_name, last_name;


SELECT
	employee_id, first_name, last_name, salary
FROM
	employees
WHERE
	salary > (SELECT
		AVG(salary)
	FROM
		employees);


SELECT
	employee_id, first_name, last_name, salary
FROM
	employees
WHERE
	salary = (SELECT
		MAX(salary)
	FROM
		employees)
ORDER BY
	first_name, last_name;


														/* EXİSTS funksiyası. */

SELECT
	employee_id,first_name, last_name
FROM
	employees e
WHERE 
	EXISTS (SELECT
		*
	FROM
		dependents d
	WHERE
		d.employee_id = e.employee_id);


														/* ALL funksiyası. */

SELECT
	MAX(salary)
FROM
	employees
WHERE
	department_id = 2;


SELECT
	first_name, last_name, salary
FROM
	employees
WHERE
	salary > ALL (SELECT
		salary
	FROM
		employees
	WHERE
		department_id = 2)
ORDER BY salary;



SELECT
	MIN(salary)
FROM
	employees
WHERE
	department_id = 2;


SELECT
	first_name, last_name, salary
FROM
	employees
WHERE
	salary < ALL (SELECT
		salary
	FROM
		employees
	WHERE
		department_id = 2)
ORDER BY salary DESC;


SELECT
	first_name, last_name, salary
FROM
	employees
WHERE 
	salary = ALL (SELECT
		MAX(salary)
	FROM
		employees
	WHERE
		department_id = 2);


														/* ANY funksiyası. */

SELECT
	ROUND(AVG(salary),2)
FROM
	employees
GROUP BY
	department_id
ORDER BY
	AVG(salary) DESC;


SELECT
	first_name, last_name, salary
FROM
	employees
WHERE
	salary = ANY(
		SELECT
			AVG(salary)
		FROM
			employees
		GROUP BY
			department_id)
ORDER BY
	first_name, last_name,
	salary;


SELECT
	first_name, last_name, salary
FROM
	employees
WHERE
	salary > ANY(
		SELECT
			AVG(salary)
		FROM
			employees
		GROUP BY
			department_id)
ORDER BY
	salary;