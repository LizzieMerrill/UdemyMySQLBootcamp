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
