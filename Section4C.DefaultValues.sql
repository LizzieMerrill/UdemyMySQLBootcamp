CREATE TABLE cats3(
    name VARCHAR(50) DEFAULT 'mystery',
    age INT DEFAULT 99
    );
-- Query OK, 0 rows affected (0.01 sec)
INSERT INTO cats3(age) VALUES(2);
-- Query OK, 1 row affected (0.01 sec)

SELECT * FROM cats3;
/*
+---------+------+
| name    | age  |
+---------+------+
| mystery |    2 |
+---------+------+
1 row in set (0.00 sec)
*/
INSERT INTO cats3() VALUES();
-- Query OK, 1 row affected (0.01 sec)

SELECT * FROM cats3;
/*
+---------+------+
| name    | age  |
+---------+------+
| mystery |    2 |
| mystery |   99 |
+---------+------+
2 rows in set (0.00 sec)
*/
INSERT INTO cats3() VALUES();
-- Query OK, 1 row affected (0.01 sec)

SELECT * FROM cats3;
/*
+---------+------+
| name    | age  |
+---------+------+
| mystery |    2 |
| mystery |   99 |
| mystery |   99 |
+---------+------+
3 rows in set (0.00 sec)
*/

INSERT INTO cats3(name, age) VALUES(NULL, NULL);
-- Query OK, 1 row affected (0.00 sec)

SELECT * FROM cats3;
/*
+---------+------+
| name    | age  |
+---------+------+
| mystery |    2 |
| mystery |   99 |
| mystery |   99 |
| NULL    | NULL |
+---------+------+
4 rows in set (0.00 sec)
*/
-- Correct field declaration with not null defaults
CREATE TABLE cats4(
     name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
     age INT NOT NULL DEFAULT 99
     );
-- Query OK, 0 rows affected (0.02 sec)
/*
INSERT INTO cats4(name, age) VALUES(NULL, NULL);
ERROR 1048 (23000): Column 'name' cannot be null
*/
INSERT INTO cats4() VALUES();
-- Query OK, 1 row affected (0.01 sec)

SELECT * FROM cats4;
/*
+---------+-----+
| name    | age |
+---------+-----+
| unnamed |  99 |
+---------+-----+
1 row in set (0.00 sec)
*/
DESC cats4;
/*
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | unnamed |       |
| age   | int          | NO   |     | 99      |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
*/
