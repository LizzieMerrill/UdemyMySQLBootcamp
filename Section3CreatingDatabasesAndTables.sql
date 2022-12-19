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
