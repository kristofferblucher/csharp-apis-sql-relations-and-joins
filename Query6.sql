-- My own Queries
-- Show film titles and their directors country 

SELECT film.title, director.directorCountry
FROM film
JOIN director ON film.directorId = director.directorId;


--Show film titles and their stars
SELECT film.title, star.starName
FROM film
LEFT JOIN star ON film.starId = star.starId;

--Show stars and their birthday only where films have a rating of 9 or more

SELECT starName, starDOB
FROM film
LEFT JOIN star ON film.starId = star.starId
WHERE film.score >= 9;

-- Show writer and writeremail only where films have a rating of 7 or less

SELECT writerName, writerEmail
FROM film
LEFT JOIN writer ON film.writerId = writer.writerId
WHERE film.score <=7;

--Show film titles, star names and their birthday for films between 1960 and 1980
SELECT film.title, star.starName, star.stardob
FROM film
JOIN star ON film.starId = star.StarId
WHERE year BETWEEN 1960 AND 1980;

