-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show Table --
SHOW TABLES;

-- Create Table --

CREATE TABLE books ( 
    id INT auto_increment primary key, 
    author1 VARCHAR (100) NOT NULL, 
    author2 VARCHAR (100), 
    author3 VARCHAR (100), 
    title VARCHAR(100), 
    DESCRIPTION VARCHAR(100), 
    place_sell VARCHAR(3), 
    stock INT default 0, 
    creation_date datetime  default  current_timestamp  on update current_timestamp 
    );

-- Update Table --
SELECT * from books;

Alter Table books
    Add price INT default 0,
    Add 'status' enum('available', 'out of stock', 'limited'),
    Drop place_sell;

-- Insert Table --
insert into books(author1, title, description, stock, creation_date, price, status)
 values ('Nita','Part 1','Layangan Putus',23,'2021/12/21 12:34:56',123000,'limited'),
        ('Alex','Kencan Anti Zonk',34,'2021/12/12 10:11:12',45000,'available'),
        ('Sule','Cara Membuat Penonton Ketawa',45,'2021/11/21 08:09:10',67000,'limited');

-- Select Table --
SELECT * from books; 

-- Alias --
SELECT id as ID, Author1 as A1, Author2 as A2, Author3 as Author3
From books;

-- Select Where --
SELECT * WHERE id = 1;

-- Operator AND --
SELECT * From books WHERE id = 1 AND Author1 = 'Nita' ;

-- Operator OR --
SELECT * From books WHERE id = 1 OR Author2 = 'Sule' ;

-- Operator NOT --
SELECT * From books WHERE not id = 1;

--- Order By ---
SELECT * From books order by id ASC;

--- Limit ---
SELECT * From books
    -> limit 2;

--- Update ---
UPDATE books
SET Author1 = 'WKWK Land', price = 69000
WHERE id = 1;

--- Delete Row ---
DELETE row books WHERE id = 2;