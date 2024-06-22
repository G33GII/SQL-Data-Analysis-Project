-- SQL Query Analysing NetflixShowsDB

CREATE DATABASE NetflixShowsDB;
USE NetflixShowsDB;


CREATE TABLE NetflixShows (
    show_id INT PRIMARY KEY,
    type VARCHAR(50),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50), -- You might need to convert this to DATE type later if required
    release_year INT,
    rating VARCHAR(50),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT
);

-- Moving CSV file to a dir 
sudo cp netflix_titles.csv /var/lib/mysql-files/
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
-- UPDATE (mysqld.cnf) with: secure-file-priv=/var/lib/mysql-files/


-- Importing CSV file to MYSQL
LOAD DATA INFILE '/var/lib/mysql-files/netflix_titles.csv'
INTO TABLE NetflixShows
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Had to change show_id column to a VARCHAR(255)
ALTER TABLE NetflixShows MODIFY COLUMN show_id VARCHAR(255);

