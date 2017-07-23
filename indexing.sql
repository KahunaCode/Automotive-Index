DROP USER IF EXISTS 'indexed_cars_user';

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS "indexed_cars";

CREATE DATABASE "indexed_cars" WITH OWNER indexed_cars_user;

\timing;

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';

SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE 'NISSAN' AND model_code LIKE 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code LIKE '%LAM%';

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;