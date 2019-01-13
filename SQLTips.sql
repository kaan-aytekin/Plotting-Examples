CREATE DATABASE someDatabase;
DROP DATABASE someDatabase;
SHOW DATABASES;
USE employees;
CREATE TABLE months (id int, name varchar(10), days int);
INSERT INTO months VALUES (1,'January',31);
INSERT INTO months (id,name,days) VALUES (2,'February',29);
SELECT * FROM characters LIMIT 10;
SELECT name, weapon FROM "characters"  ORDER BY name DESC;
SELECT * FROM "characters" WHERE weapon = "pistol";
SELECT * FROM albums WHERE genre = 'rock' AND sales_in_millions <= 50 ORDER BY released
SELECT * FROM albums WHERE released BETWEEN 1975 AND 1985;
SELECT * FROM albums WHERE genre IN ('pop','soul');
SELECT dept_name FROM departments WHERE dept_name LIKE '%en%';
SELECT DISTINCT title FROM titles ORDER BY title;

SELECT MAX(released) FROM albums;
SELECT artist,album,released FROM albums WHERE released = ( SELECT MIN(released) FROM albums);

SELECT games.name, games.genre, devs.name AS developer, devs.country 
FROM video_games AS games 
INNER JOIN game_developers AS devs 
ON games.developer_id = devs.id;

UPDATE tv_series SET genre = 'drama' WHERE id = 2;
DELETE FROM tv_series WHERE id = 4;
TRUNCATE TABLE table_name;
DROP TABLE table_name;