-- TASK 3 (DELETE)
-- dependents cədvəlindən employee_id 101,102 və 103 olan sətirləri silin. Bunu bir sorğu yazaraq edin.

DELETE FROM dependents
WHERE 
	employee_id IN (101, 102, 103)

SELECT
	COUNT(*)
FROM
	dependents
WHERE
	employee_id IN (101, 102, 103);

SELECT employee_id
FROM dependents