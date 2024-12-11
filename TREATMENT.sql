CREATE DATABASE movies_db;
USE movies_db;

CREATE TABLE movies (
    adult BOOL,
    belongs_to_collection VARCHAR(255),
    budget INT,
    genres VARCHAR(255),
    homepage VARCHAR(255),
	release_year INT,
    id INT NOT NULL PRIMARY KEY,
    imdb_id VARCHAR(255),
    original_language VARCHAR(255),
    original_title VARCHAR(255),
    overview VARCHAR(255),
    popularity FLOAT,
    poster_path VARCHAR(255),
    production_companies VARCHAR(255),
    production_countries VARCHAR(255),
    release_date DATE,
    revenue FLOAT,
    runtime INT,
    spoken_languages FLOAT,
    status VARCHAR(255),
    tagline VARCHAR(255),
    title VARCHAR(255),
    video BOOL,
    vote_average FLOAT,
	vote_count INT
);

ALTER TABLE movies DROP COLUMN adult;
ALTER TABLE movies DROP COLUMN video;
ALTER TABLE movies DROP COLUMN imdb_id; 
ALTER TABLE movies DROP COLUMN original_title;
ALTER TABLE movies DROP COLUMN poster_path;
ALTER TABLE movies DROP COLUMN homepage;

UPDATE movies
SET revenue = COALESCE(revenue, 0) WHERE id IS NOT NULL;

SELECT * FROM movies LIMIT 10;