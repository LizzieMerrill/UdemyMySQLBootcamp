INSERT INTO cats(name) VALUES('Todd');
-- Query OK, 1 row affected (0.02 sec)

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
| Todd        | NULL |
+-------------+------+
7 rows in set (0.00 sec)
*/

INSERT INTO cats() VALUES();
-- Query OK, 1 row affected (0.01 sec)

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
| Todd        | NULL |
| NULL        | NULL |
+-------------+------+
8 rows in set (0.00 sec)
*/

CREATE TABLE cats2
    (
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
    );
-- Query OK, 0 rows affected (0.02 sec)
/*
INSERT INTO cats2(name) VALUES('Bilbo');
ERROR 1364 (HY000): Field 'age' doesn't have a default value
*/


-- Now we need to set a default value for these fields if we would rather have a default value than an error (either way is fine).
-- But first, let's test cats2 with the not null values

SELECT * FROM cats2;
-- Empty set (0.00 sec)

INSERT INTO cats2(name, age) VALUES('Bilbo', 19);
-- Query OK, 1 row affected (0.00 sec)

SELECT * FROM cats2;
/*
+-------+-----+
| name  | age |
+-------+-----+
| Bilbo |  19 |
+-------+-----+
1 row in set (0.00 sec)
*/



-- Best Practice: ALWAYS USE SINGLE QUOTES, NEVER DOUBLE QUOTES!!!**********************************************************************************8


CREATE TABLE shops (name VARCHAR(100));
-- Query OK, 0 rows affected (0.01 sec)
INSERT INTO shops(name) VALUES('shoe emporium');
-- Query OK, 1 row affected (0.00 sec)
INSERT INTO shops(name) VALUES ('mario\'s pizza'); -- You have to put a backslash in front of any single quotes being used as apostrophes mid-text
-- Query OK, 1 row affected (0.01 sec)
SELECT * FROM shops;
/*
+---------------+
| name          |
+---------------+
| shoe emporium |
| mario's pizza |
+---------------+
2 rows in set (0.00 sec)
*/
INSERT INTO shops(name) VALUES('she said "haha"'); -- shows that you don't have to escape a set of double quotes if they exist within a set of single quotes
-- Query OK, 1 row affected (0.01 sec)

SELECT * FROM shops;
/*
+-----------------+
| name            |
+-----------------+
| shoe emporium   |
| mario's pizza   |
| she said "haha" |
+-----------------+
3 rows in set (0.00 sec)
*/
-- ************************************************************************************************************************************************8

