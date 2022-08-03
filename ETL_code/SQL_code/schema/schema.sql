-- Delete tables, if they exist, or if they're connected to other tables

DROP TABLE working_bio CASCADE;
--DROP TABLE trails_final CASCADE;



-- Creating tables for SQL Database


-- Group by park name & count on category - Maybe in SQL


CREATE TABLE working_bio (
    species_id VARCHAR(15) NOT NULL,
    park_name VARCHAR(150) NOT NULL,
    category VARCHAR(30) NOT NULL,
    scientific_name VARCHAR(80) NOT NULL,
    occurrence VARCHAR(30) NOT NULL,
    abundance VARCHAR(10) NOT NULL,
    conservation_status VARCHAR(25) NOT NULL,
    UNIQUE (species_id)
);

SELECT * FROM working_bio;

DROP TABLE bio_category CASCADE;


SELECT 
	park_name,
	category, 
COUNT(category)
INTO bio_category
FROM working_bio
GROUP BY (park_name,category)
ORDER BY (park_name);

SELECT * FROM bio_category;

DROP TABLE bio_count_per_park CASCADE;


SELECT park_name, COUNT(scientific_name)
INTO bio_count_per_park
FROM working_bio
GROUP BY (park_name)
ORDER BY (park_name);

SELECT * FROM bio_count_per_park;



-- CREATE TABLE trails_final (
    --trail_id INT NOT NULL,
    --name_ VARCHAR(80) NOT NULL,
    --park_name VARCHAR(150) NOT NULL,
    --city_name VARCHAR(80) NOT NULL,
    --state_name VARCHAR(50) NOT NULL,
    --country_name VARCHAR(50) NOT NULL,
    --_geoloc VARCHAR(200) NOT NULL,
    --popularity FLOAT NOT NULL,
    --length_ FLOAT NOT NULL,
    --elevation_gain FLOAT NOT NULL,
    --difficulty_rating INT NOT NULL,
    --route_type VARCHAR(50) NOT NULL,
    --visitor_usage FLOAT NOT NULL,
    --avg_rating FLOAT NOT NULL,
    --num_reviews INT NOT NULL,
    --features VARCHAR NOT NULL,
    --activities VARCHAR NOT NULL,
    --units VARCHAR NOT NULL,
    --PRIMARY KEY (trail_id)
--);