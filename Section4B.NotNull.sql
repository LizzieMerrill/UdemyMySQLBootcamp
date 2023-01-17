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
