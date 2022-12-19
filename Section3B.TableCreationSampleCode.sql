CREATE TABLE cats
(
name VARCHAR(100),
age INT
); -- creates a table of cats with two columns, one for name and one for age, properly typed and character limited

-- 
-- 
-- 
-- 
-- 

-- IN TERMINAL
SELECT database();
-- database() \n tea_shop
SHOW DATABASES;
-- terminal: shows defaults, chicken_coop, tea_shop
CREATE DATABASE pet_shop;
-- terminal: Query OK, 1 row affected (0.00 sec)
USE pet_shop;
-- terminal: Database changed
CREATE TABLE cats (
     name VARCHAR(50),
     age INT
     );
-- terminal: Query OK, 0 rows affected (0.01 sec)

-- ^this query creates table 'cats' in database 'pet_shop' vecause we used the USE pet_shop; command earlier

-- in workbench now:
USE pet_shop;
CREATE TABLE dogs (
name VARCHAR(50),
breed VARCHAR(50), -- same as cats table except for added breed
age INT
); 


-- simple command to show all tables in current database being used
SHOW TABLES;
-- +--------------------+
-- | Tables_in_pet_shop |
-- +--------------------+
-- | cats               |
-- | dogs               |
-- +--------------------+


USE tea_shop;
-- Database changed
SHOW TABLES; -- there are no tables in the tea shop database yet
-- Empty set (0.00 sec)


-- SHOW COLUMNS FROM <tablename>; shows columns in a table
-- or DESC tablename; , same thing

SHOW COLUMNS FROM cats;
-- ERROR 1146 (42S02): Table 'tea_shop.cats' doesn't exist
USE pet_shop;
-- Database changed
SHOW COLUMNS FROM cats;
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)
SHOW COLUMNS FROM dogs;
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | breed | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




/*
DESC tablename;
DESCRIBE tablename;
*/
DESCRIBE cats;
-- shows cats data again
DESC cats; -- common practice
-- shows cats data again


-- In workbench or GUI-based editor, you can click into a table and on the bottom left corner it'll display the table's characteristics
