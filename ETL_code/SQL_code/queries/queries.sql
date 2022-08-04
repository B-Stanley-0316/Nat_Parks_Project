-- Check that data is present in any given table:
SELECT * FROM working_bio;

-- MERGE Parks and trails data to create a new table with trail count and average popularity PER park

-- ** Group by park name & count on trails from trails_final: **

DROP TABLE trail_count_per_park CASCADE;

SELECT park_name, COUNT(trail_id)
INTO trail_count_per_park
FROM trails_final
GROUP BY (park_name)
ORDER BY (park_name);

SELECT * FROM trail_count_per_park;

-- ** Group by park name & average popularity from trails_final: **

DROP TABLE pop_avg_per_park CASCADE;

SELECT park_name, ROUND(AVG(popularity),3)
INTO pop_avg_per_park
FROM trails_final
GROUP BY (park_name)
ORDER BY (park_name);

SELECT * FROM pop_avg_per_park;

-- ** MERGE trail count, popularity average, and parks data: **

SELECT
  parks_final.park_code,
  parks_final.park_name,
  parks_final.state,
  parks_final.acres,
  parks_final.latitude,
  parks_final.longitude,
  trail_count_per_park.count as trail_count,
  pop_avg_per_park.round as avg_popularity
FROM parks_final
JOIN trail_count_per_park
  ON parks_final.park_name = trail_count_per_park.park_name
JOIN pop_avg_per_park
  ON parks_final.park_name = pop_avg_per_park.park_name;

-- SELECT 
-- 	park_name,
-- 	trail_id,
-- 	popularity,
-- COUNT(trail_id)
-- INTO trail_count
-- FROM trails_final
-- GROUP BY (park_name, trail_id)
-- ORDER BY (park_name);

SELECT * FROM trail_count;

-- DROP TABLE bio_count_per_park CASCADE;


