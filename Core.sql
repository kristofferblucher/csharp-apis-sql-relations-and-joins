CREATE TABLE Director(
DirectorId SERIAL PRIMARY key,
DirectorName VARCHAR(255),
DirectorCountry VARCHAR(50)
);

CREATE TABLE Star(
StarId SERIAL PRIMARY key,
StarName VARCHAR(255),
StarDOB DATE NOT NULL);

CREATE TABLE Writer(
WriterId SERIAL PRIMARY key,
WriterName VARCHAR(255),
WriterEmail VARCHAR(50));

CREATE TABLE People(
  PersonId SERIAL PRIMARY key,
  PeopleName VARCHAR(255));

CREATE TABLE Film (
    FilmId SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    DirectorId INT REFERENCES People(PersonId),
    StarId INT REFERENCES People(PersonId),
    WriterId INT REFERENCES People(PersonId),
    Year INT NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Score INT CHECK (Score BETWEEN 1 AND 10)
);


INSERT INTO Star (StarName, StarDOB) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

INSERT INTO Director (DirectorName, DirectorCountry) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO Writer (WriterName, WriterEmail) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO Film (Title, DirectorId, StarId, WriterId, Year, Genre, Score) VALUES
('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
('Titanic', 4, 4, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
('El Cid', 6, 6, 6, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);

INSERT INTO people2 (peopleName) VALUES
('Stanley Kubrick'), 
('George Lucas'), 
('Robert Mulligan'), 
('James Cameron'), 
('David Lean'), 
('Anthony Mann'),
('Theodoros Angelopoulos'),
('Paul Verhoeven'),
('Krzysztof Kieslowski'),
('Jean-Paul Rappeneau'),
('Keir Dullea'),
('Mark Hamill'),
('Gregory Peck'),
('Leonardo DiCaprio'),
('Julie Christie'),
('Charlton Heston'),
('Manos Katrakis'),
('Rutger Hauer'),
('Juliette Binoche'),
('Gerard Depardieu');