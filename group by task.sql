							/* Hər bir job title üçün orta əmək haqqını göstərən SQL sorğusu yazın. */

SELECT * FROM jobs
SELECT * FROM employees


SELECT
	j.job_title,
	AVG(salary) avg_salary
FROM
	employees e
INNER JOIN jobs j ON j.job_id = e.job_id
GROUP BY
	j.job_title
