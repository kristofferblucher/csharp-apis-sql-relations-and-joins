-- Show title, director name and star name for all films

SELECT title, directorName, starName
FROM film
LEFT JOIN star ON film.starid = star.starid
LEFT JOIN director ON film.directorid = director.directorid;

