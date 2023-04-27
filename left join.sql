SELECT
	country_id,
	country_name
FROM
	countries
WHERE country_id IN ('US', 'UK', 'CN');


SELECT
	country_id,
	street_address,
	city
FROM
	locations
WHERE country_id IN ('US', 'UK', 'CN');


SELECT
	c.country_name,
	c.country_id,
	l.country_id,
	l.street_address,
	l.city
FROM
	countries c
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
	c.country_id IN ('US', 'UK', 'CN');



SELECT * FROM regions
SELECT * FROM countries
SELECT * FROM locations

SELECT
	r.region_name,
	c.country_name,
	l.street_address,
	l.city
FROM
	regions r
LEFT JOIN countries c ON c.region_id = r.region_id
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
	c.country_id IN ('US','UK','CN')