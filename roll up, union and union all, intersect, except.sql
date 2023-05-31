											/* ROLLUP - Məlumatların qruplaşdırılması – Grouping Data

ROLLUP SQL-də müəyyən edilmiş sütunlar iyerarxiyasına əsaslanaraq qruplaşdırılmış məlumatlar üçün yarımcəmlərin və ümumi cəmlərin yaradılmasına imkan verən xüsusiyyətdir. */

SELECT * FROM inventory

SELECT
	warehouse, SUM(quantiy)
FROM
	inventory
GROUP BY warehouse;


SELECT
	warehouse, SUM(quantity)
FROM
	inventory
GROUP BY (warehouse);


SELECT
	warehouse, product, SUM(quantity)
FROM
	inventrory
GROUP BY
	warehouse, product;



SELECT
	warehouse, product, SUM(quantity)
FROM
	inventrory
GROUP BY
	warehouse, product;



SELECT
	warehouse, product, SUM(quantity)
FROM
	inventrory
GROUP BY
	warehouse, ROLLUP(product);



											/* 9.1 UNION and UNION ALL - SET Operatorları – SET Operators

					UNION iki və ya daha çox SELECT ifadəsinin nəticələrini bir nəticə dəstində birləşdirmək üçün istifadə edilən SQL operatorudur. */

SELECT
	first_name, last_name
FROM
	employees
UNION

SELECT
	first_name, last_name
FROM
	dependents
ORDER BY
	last_name


SELECT
	first_name, last_name
FROM
	employees
UNION ALL							/* it does not eliminate duplicate rows */

SELECT
	first_name, last_name
FROM
	dependents
ORDER BY
	last_name


											/* 9.2 INTERSECT - SET Operatorları – SET Operator

						INTERSECT operatoru SQL-də iki və ya daha çox SELECT ifadələri arasında yalnız ümumi nəticələri qaytarmaq üçün istifadə olunur. */

SELECT ID, Name FROM Table1
INTERSECT
SELECT ID, Name FROM Table2;


											/* EXCEPT (MINUS) - SET Operatorları – SET Operators. EXCEPT (MİNUS) funsiyası. */

SELECT
	employee_id
FROM
	employees
EXCEPT
SELECT
	employee_id
FROM
	dependents;


