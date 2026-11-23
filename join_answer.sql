SELECT t.first_name, c.country_name
FROM tourists t
INNER JOIN countries c on c.id = t.country_id;

SELECT *
FROM tourists t
INNER JOIN tours tr on t.tour_id = tr.id;

SELECT *
FROM tourists t
LEFT JOIN tours tr on t.tour_id = tr.id;

SELECT *
FROM tourists t
FULL JOIN tours tr on t.tour_id = tr.id;
