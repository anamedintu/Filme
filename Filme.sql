-- Crearea bazei de date
CREATE DATABASE IF NOT EXISTS FilmeDB;
USE FilmeDB;

-- Tabelul Movie
CREATE TABLE Movie (
    id_movie INT AUTO_INCREMENT PRIMARY KEY,
    release_year YEAR NOT NULL,
    duration INT NOT NULL, -- minute
    budget DECIMAL(15,2),
    box_office DECIMAL(15,2)
);
DESCRIBE MOVIE;

-- Tabelul Genre
CREATE TABLE Genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name_genre VARCHAR(50) NOT NULL
);
DESCRIBE Genre;

-- Tabelul Director
CREATE TABLE Director (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    director VARCHAR(100) NOT NULL
);
DESCRIBE Director;

-- Tabelul Language
CREATE TABLE Language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name_language VARCHAR(50) NOT NULL
);
DESCRIBE Language;

-- Tabelul Country
CREATE TABLE Country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    name_country VARCHAR(50) NOT NULL
);
DESCRIBE Country;

-- Relație M:N: Movie - Genre
CREATE TABLE Movie_Genre (
    id_movie INT,
    genre_id INT,
    PRIMARY KEY (id_movie, genre_id),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);
DESCRIBE Movie_Genre;

-- Relație M:N: Movie - Director
CREATE TABLE Movie_Director (
    id_movie INT,
    director_id INT,
    PRIMARY KEY (id_movie, director_id),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie),
    FOREIGN KEY (director_id) REFERENCES Director(director_id)
);
DESCRIBE Movie_Director;

-- Relație M:N: Movie - Language
CREATE TABLE Movie_Language (
    id_movie INT,
    language_id INT,
    PRIMARY KEY (id_movie, language_id),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie),
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);
Describe Movie_language;

-- Relație M:N: Movie - Country
CREATE TABLE Movie_Country (
    id_movie INT,
    country_id INT,
    PRIMARY KEY (id_movie, country_id),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie),
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);
DESCRIBE Movie_Country;
