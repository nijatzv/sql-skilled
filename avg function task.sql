/* 'Marketing Manager' vəzifəsi olan bütün işçilər üçün orta əmək haqqı nə qədərdir? */

SELECT * FROM employees
SELECT * FROM jobs

SELECT
	e.job_id,
	AVG(salary),
	job_title
FROM
	employees e
INNER JOIN jobs j ON j.job_id = e.job_id
WHERE
	e.job_id = 10
GROUP BY
	e.job_id,
	job_title