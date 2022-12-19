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

mysql> SELECT * FROM cats;
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




-- 4.40 Exercise
