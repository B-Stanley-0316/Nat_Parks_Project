-- Drop table if exists
DROP TABLE parks_trails;

-- Create a new table
CREATE TABLE parks_trails (
	park_code SERIAL PRIMARY KEY,
	park_name VARCHAR(45) NOT NULL,
	"state" VARCHAR(10) NOT NULL,
	acres INT,
	latitude NUMERIC (4,2),
	longitude NUMERIC (4,2),
	trail_count INT,
	avg_popularity NUMERIC (6,)
);