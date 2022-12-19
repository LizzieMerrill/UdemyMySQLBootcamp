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
