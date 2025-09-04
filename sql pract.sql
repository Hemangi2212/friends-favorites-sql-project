-- create database
CREATE DATABASE IF NOT EXISTS friends;
USE friends;

-- drop old table if exists (optional, for fresh run)
DROP TABLE IF EXISTS favs;

-- create table without auto increment
CREATE TABLE favs (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fav_place VARCHAR(100),
    fav_food VARCHAR(100)
);

-- insert data (now you MUST provide user_id yourself)
INSERT INTO favs (user_id, name, email, fav_place, fav_food) VALUES
(1, 'Hema Ransing', 'hema123@gmail.com', 'Paris', 'Pasta'),
(2, 'Dnyaneshwari Bhosale', 'dnyaneshwari@gmail.com', 'Manali', 'Momos'),
(3, 'Samruddhi Shinde', 'samruddhi@gmail.com', 'Jaipur', 'Paneer Tikka'),
(4, 'Vedant Gawade', 'vedant@gmail.com', 'Kerala', 'Dosa'),
(5, 'Vaishnavi Bhonde', 'vaishnavi@gmail.com', 'Shimla', 'Chole Bhature'),
(6, 'Omkar Awari', 'omkar@gmail.com', 'Goa', 'Seafood');

-- view table
SELECT * FROM favs;

-- insert one more user (must give new id = 7)
INSERT INTO favs (user_id, name, email, fav_place, fav_food)
VALUES (7, 'Sanika Temkar', 'sanika@gmail.com', 'Hill Station', 'Pizza');


INSERT INTO favs (user_id, name, email, fav_place, fav_food)
VALUES (8, 'Hemangi Ransing', 'hemass111gmail.com', 'Korea', 'Paneer');

INSERT INTO favs (user_id, name, email, fav_place, fav_food)
VALUES (9, 'Omkar Awari', 'omkargmail.com', 'Dwarka', 'Rice');

-- view updated table
SELECT * FROM favs;

# all user's fav place n food
SELECT name, fav_place, fav_food 
FROM favs;

# update 
UPDATE favs
SET fav_food = 'Ice Cream'
WHERE user_id = 1;

# delete 
DELETE FROM favs
WHERE user_id = 6;


# count how many frds like each food 
SELECT fav_food, COUNT(*) AS total_friends
FROM favs
GROUP BY fav_food;


SELECT name, email 
FROM favs
WHERE fav_place = 'Paris';

# Show all emails (for sending invites 🎉)
SELECT name, email 
FROM favs;

#Add a new column later mobile number

ALTER TABLE favs
ADD COLUMN mobile_no VARCHAR(15);

alter table favs 
add column  travel varchar(50);


UPDATE favs SET mobile_no = '9876543210' WHERE user_id = 1;
UPDATE favs SET mobile_no = '9123456780' WHERE user_id = 2;
UPDATE favs SET mobile_no = '9988776655' WHERE user_id = 3;
UPDATE favs SET mobile_no = '9090909090' WHERE user_id = 4;
UPDATE favs SET mobile_no = '8008008008' WHERE user_id = 5;
 -- UPDATE favs SET mobile_no = '7777777777' WHERE user_id = 6;
UPDATE favs SET mobile_no = '8888888888' WHERE user_id = 7;

UPDATE favs SET mobile_no = '5656778965' WHERE user_id = 8;
update favs set mobile_no = '9876543219' where user_id  = 9;

# weather theay ahve bike or car adding info into travel col
UPDATE favs SET travel = 'Car' WHERE user_id = 1;
UPDATE favs SET travel = 'Scooty' WHERE user_id = 2;
UPDATE favs SET travel = 'Scooty' WHERE user_id = 3;
UPDATE favs SET travel = 'Bike' WHERE user_id = 4;
UPDATE favs SET travel = 'Scooty' WHERE user_id = 5;
UPDATE favs SET travel = 'Train' WHERE user_id = 7;
UPDATE favs SET travel = 'Car' WHERE user_id = 8;
update favs set travel = 'Bike' where user_id = 9;

select * from favs;

-------------------- creating new table ----------------
DROP TABLE IF EXISTS fav_songs;

CREATE TABLE fav_songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    song_name VARCHAR(100) NOT NULL,
    singer VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    FOREIGN KEY (user_id) REFERENCES favs(user_id)
) ENGINE=InnoDB;

-- Insert data
INSERT INTO fav_songs (user_id, song_name, singer, genre, release_year) VALUES
(1, 'Perfect', 'Ed Sheeran', 'Pop', 2017),
(1, 'Tum Hi Ho', 'Arijit Singh', 'Romantic', 2013),
(2, 'Shape of You', 'Ed Sheeran', 'Pop', 2017),
(3, 'Kesariya', 'Arijit Singh', 'Romantic', 2022),
(4, 'Believer', 'Imagine Dragons', 'Rock', 2017),
(5, 'Ghungroo', 'Arijit Singh', 'Bollywood', 2019),
(7, 'Channa Mereya', 'Arijit Singh', 'Bollywood', 2016);


INSERT INTO fav_songs (user_id, song_name, singer, genre, release_year) VALUES
(8,'Jennie','Jennie Kim','Kpop',2025);

insert into fav_songs(user_id,song_name,singer,genre,release_year)
values(9,'Bekhayali','Arjit','Broken',2021);


-- View songs
SELECT * FROM fav_songs;

SELECT f.name, s.song_name, s.singer, s.genre
FROM favs f
JOIN fav_songs s ON f.user_id = s.user_id;

# i want the name who like pop genre
SELECT DISTINCT f.name, s.genre
FROM favs f
JOIN fav_songs s ON f.user_id = s.user_id
WHERE s.genre = 'Pop';





