-- Creating 3 tables for SQL Database
-- parks_final, trails_final, and working_bio

-- **** PARKS****

-- Delete tables, if they exist, or if they're connected to other tables
DROP TABLE parks_final CASCADE;

-- Create a "parks" table
CREATE TABLE parks_final (
	park_code VARCHAR (5) PRIMARY KEY,
	park_name VARCHAR(45) NOT NULL,
	"state" VARCHAR(10) NOT NULL,
	acres INT NOT NULL,
	latitude NUMERIC (5,2) NOT NULL,
	longitude NUMERIC (5,2) NOT NULL,
	UNIQUE (park_name)
);

-- **** TRAILS****

-- Delete tables, if they exist, or if they're connected to other tables
DROP TABLE trails_final CASCADE;

-- Create a "trails" table
CREATE TABLE trails_final (
	trail_id VARCHAR(8) NOT NULL,
	"name" VARCHAR(180) NOT NULL,
	park_name VARCHAR(45) NOT NULL,
	city_name VARCHAR(45) NOT NULL,
	state_name VARCHAR(20) NOT NULL,
	country_name VARCHAR(15) NOT NULL,
	"_geoloc" VARCHAR(50) NOT NULL,
	popularity NUMERIC (6,2) NOT NULL,
	"length" NUMERIC (9,3) NOT NULL,
	elevation_gain NUMERIC (7,2) NOT NULL,
	difficulty_rating INT NOT NULL,
	route_type VARCHAR(15) NOT NULL,
	visitor_usage NUMERIC (2,1),
	avg_rating NUMERIC (2,1) NOT NULL,
	num_reviews INT NOT NULL,
	features VARCHAR (180) NOT NULL,
	activities VARCHAR (180) NOT NULL,
	units VARCHAR (1) NOT NULL,
	PRIMARY KEY (trail_id),
	UNIQUE (trail_id)
);
	
-- **** BIODIVERSITY****

-- Delete tables, if they exist, or if they're connected to other tables
DROP TABLE working_bio;

-- Create a "trails" table	
CREATE TABLE working_bio (
    species_id VARCHAR(15) NOT NULL,
    park_name VARCHAR(150) NOT NULL,
    category VARCHAR(30) NOT NULL,
    scientific_name VARCHAR(80) NOT NULL,
    occurrence VARCHAR(30) NOT NULL,
    abundance VARCHAR(5) NOT NULL,
    conservation_status VARCHAR(5) NOT NULL,
	FOREIGN KEY (park_name) REFERENCES parks_final (park_name),
  	PRIMARY KEY (species_id),
    UNIQUE (species_id)
);

