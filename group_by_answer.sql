SELECT genre, count(genre)
FROM movies
GROUP by genre;

SELECT year, sum(revenue)
FROM movies
GROUP by year;

SELECT genre, avg(revenue)
FROM movies
GROUP by genre;

SELECT genre,language, avg(revenue)
FROM movies
GROUP by genre, language;

SELECT language, count(*) as count_language
FROM movies
GROUP by language
ORDER by count_language ASC
LIMIT 1;

SELECT country, count(*) as count_country
FROM movies
GROUP by country
ORDER by count_country DESC
LIMIT 1;

SELECT genre, count(genre) as count_genre
FROM movies
GROUP by genre
HAVING count_genre > 2;

SELECT year, sum(revenue) as total_revenue
FROM movies
GROUP by year
HAVING total_revenue > 1000;

SELECT language, count(*) as count_language
FROM movies
GROUP by language
HAVING count_language > 3;