										/* HAVING - Məlumatların qruplaşdırılması – Grouping Data

						HAVING, müəyyən bir şərt və ya şərtlər toplusu əsasında GROUP BY sorğusunun nəticələrini filtrləmək üçün istifadə edilən SQL açar sözüdür. */

SELECT
	department_id, SUM(salary)
FROM
	employees
GROUP BY
	department_id
HAVING SUM(salary) BETWEEN 20000 AND 30000
ORDER BY SUM(salary);


SELECT
	e.department_id,
	department_name,
	MIN(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	department_name
HAVING 
	MIN(salary) >= 10000
ORDER BY
	MIN(salary);


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
HAVING AVG(salary) BETWEEN 5000 AND 7000
ORDER BY
	AVG(salary);