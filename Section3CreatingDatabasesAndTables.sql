show databases; -- shows all databases you've created, and the MySQL default databases

-- CREATE DATABASE <name>; -- creates an empty database with name <name>
-- create database <name>; -- also creates an empty database with name <name>
-- spaces are technically allowed in database names, but highly frowned upon

CREATE DATABASE pet_shop;
CREATE DATABASE SlimeStore
CREATE DATABASE chicken_coop;
--  I created databases (2 in terminal, one in workbench) on my root MySQL save

DROP DATABASE SlimeStore;
DROP DATABASE pet_shop;
-- dropped 2/3 of them

-- USE <database name>; -- same function as double clicking on a database, selecting it as the field to work in
SELECT database(); -- a command that shows the current database you're in





-- example:
USE chicken_coop;
-- terminal: Database changed
SELECT database();
-- terminal: 
-- +--------------+
-- | database()   |
-- +--------------+
-- | chicken_coop |
-- +--------------+

CREATE DATABASE tea_shop;
-- terminal: Query OK, 1 row affected (0.01 sec)
SELECT database();
-- terminal: 
-- +--------------+
-- | database()   |
-- +--------------+
-- | chicken_coop |
-- +--------------+
USE tea_shop;
-- terminal: Database changed
SELECT database();
-- +--------------+
-- | database()   |
-- +--------------+
-- | chicken_coop |
-- +--------------+



-- double clicking on a database on left-hand side of workbench has same effect as use function


-- varchar(100) as a datatype for a column indicates there are only a maximum of 100 characters allowed in any given data cell
