--Show directors and film titles for films with a score of 8 or higher

SELECT directorName, title
FROM film
LEFT JOIN director ON film.directorid = director.directorid
WHERE film.score >= 8;

