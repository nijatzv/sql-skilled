/*SELECT
	salary
FROM
	employees
	ORDER BY salary DESC;

	--removing duplicated values*/

/*SELECT
	DISTINCT salary
FROM
	employees
	ORDER BY salary DESC;*/


SELECT DISTINCT
	job_id,
	salary
FROM
	employees
ORDER BY
	job_id,
	salary DESC;
