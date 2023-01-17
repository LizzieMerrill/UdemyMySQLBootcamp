SELECT database();
/*
+------------+
| database() |
+------------+
| pet_shop   |
+------------+
1 row in set (0.00 sec)
*/
CREATE TABLE cats(name VARCHAR(50), age INT);
-- Query OK, 0 rows affected (0.02 sec)

DESC cats;
/*
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
*/

INSERT INTO cats (name, age) VALUES ("Blue Steele", 5);
-- Query OK, 1 row affected (0.01 sec)
INSERT INTO cats (name, age) VALUES ("Jenkins", 7);
-- Query OK, 1 row affected (0.01 sec)


-- select: default database display command
SELECT * FROM cats;
/*
+-------------+------+
| name        | age  |
+-------------+------+
| Blue Steele |    5 |
| Jenkins     |    7 |
+-------------+------+
2 rows in set (0.00 sec)
*/


-- Swaps order of parameters, query still runs fine if you keep data typing correct
INSERT INTO cats(age, name) VALUES(2, "Beth");
-- Query OK, 1 row affected (0.00 sec)

SELECT * FROM cats;
/*
+-------------+------+
| name        | age  |
+-------------+------+
| Blue Steele |    5 |
| Jenkins     |    7 |
| Beth        |    2 |
+-------------+------+
3 rows in set (0.00 sec)
*/


-- Multiple insertion
 INSERT INTO cats(name, age) VALUES
    ("Meatball", 5),
    ("Turkey", 1),
    ("Potato Face", 15);
-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0

SELECT * FROM cats;
/*
+-------------+------+
| name        | age  |
+-------------+------+
| Blue Steele |    5 |
| Jenkins     |    7 |
| Beth        |    2 |
| Meatball    |    5 |
| Turkey      |    1 |
| Potato Face |   15 |
+-------------+------+
6 rows in set (0.00 sec)
*/












-- 4.40, 4.41 Insertion Exercise:

use pet_shop; -- had to reopen database due to log off period
-- Database changed
SELECT database();
/*
+------------+
| database() |
+------------+
| pet_shop   |
+------------+
1 row in set (0.00 sec)
*/
CREATE TABLE people
 (
 first_name VARCHAR(20),
 last_name VARCHAR(20),
 age INT
 );
-- Query OK, 0 rows affected (0.02 sec)

/*
SHOW pet_shop;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'pet_shop' at line 1
*/
SELECT database();
/*
+------------+
| database() |
+------------+
| pet_shop   |
+------------+
1 row in set (0.00 sec)
*/
SHOW TABLES;
/*
+--------------------+
| Tables_in_pet_shop |
+--------------------+
| cats               |
| people             |
+--------------------+
2 rows in set (0.01 sec)
*/
INSERT INTO people (first_name, last_name, age) VALUES ("Tina", "Belcher", 13);
-- Query OK, 1 row affected (0.02 sec)

DESC people;
/*
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
*/
SELECT * FROM people;
/*
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Tina       | Belcher   |   13 |
+------------+-----------+------+
1 row in set (0.00 sec)
*/
INSERT INTO people (first_name, last_name, age) VALUES ("Bob", "Belcher", 42);
-- Query OK, 1 row affected (0.01 sec)

/*
INSERT INTO people (first_name, last_name, age) VALUES
    -> (),
    -> (),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
*/
SELECT * FROM people;
/*
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Tina       | Belcher   |   13 |
| Bob        | Belcher   |   42 |
+------------+-----------+------+
2 rows in set (0.00 sec)
*/
INSERT INTO people (first_name, last_name, age) VALUES
 ("Linda", "Belcher", 45),
 ("Phillip", "Frond", 38),
 ("Calvin", "Fischoeder", 70);
-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0

SELECT * FROM people;
/*
+------------+------------+------+
| first_name | last_name  | age  |
+------------+------------+------+
| Tina       | Belcher    |   13 |
| Bob        | Belcher    |   42 |
| Linda      | Belcher    |   45 |
| Phillip    | Frond      |   38 |
| Calvin     | Fischoeder |   70 |
+------------+------------+------+
5 rows in set (0.00 sec)
*/
