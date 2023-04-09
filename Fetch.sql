/*SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM
	employees
ORDER BY
	salary DESC
OFFSET 0 ROWS  -- mueyyen setir buraxib sonrasini gormek
FETCH NEXT 15 ROWS ONLY
*/

-- En yuksek maas alan 6-ci isciden baslayaraq, maasa gore azalan siraya gore en yuksek maas alan 10 iscinin siyahisini nece elde ederdiniz?
SELECT
	employee_id,
	first_name,
	last_name,
	salary
FROM
	employees
ORDER BY
	salary DESC
OFFSET 5 ROWS
FETCH NEXT 10 ROWS ONLY