-- 58.280 and 72.159 before indexing and 52.687 and 53.983 after.
-- last two can't get faster because INT's don't get much faster without sorting the database or partitioning it.



-- DROP USER IF EXISTS 'indexed_cars_user';

-- CREATE USER indexed_cars_user;

-- DROP DATABASE IF EXISTS "indexed_cars";

-- CREATE DATABASE "indexed_cars" WITH OWNER indexed_cars_user;

-- \timing;

-- SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';

-- SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE 'NISSAN' AND model_code LIKE 'GT-R';

-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';

-- SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- SELECT * FROM car_models WHERE year = '2010';




CREATE INDEX title_index ON car_models(make_title);
-- CREATE INDEX lam_index ON car_models(make_title) WHERE make_code LIKE '%LAM%';

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';

SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE 'NISSAN' AND model_code LIKE 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models WHERE year = '2010';
