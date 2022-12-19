-- DROP TABLE <tablename>;

DROP TABLE cats;
-- Query OK, 0 rows affected (0.01 sec)
SHOW TABLES;
/*
+--------------------+
| Tables_in_pet_shop |
+--------------------+
| dogs               |
+--------------------+
1 row in set (0.00 sec)
*/
DROP TABLE dogs;
-- Query OK, 0 rows affected (0.01 sec)





-- 3.30 Table Exercise in CLI: Creates, inspects, and deleted a semi-fleshed-out table.

CREATE TABLE pastries; -- doesn't work the same as creating an empty database does: for tables, you must specify columns with a certain syntax.
-- ERROR 4028 (HY000): A table must have at least one visible column.
CREATE TABLE pastries(
    name VARCHAR(50),
    quantity INT
    );
-- Query OK, 0 rows affected (0.02 sec)

SHOW TABLES;
/*
+--------------------+
| Tables_in_pet_shop |
+--------------------+
| pastries           |
+--------------------+
1 row in set (0.00 sec)
*/
SHOW COLUMNS FROM pastries;
/*
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(50) | YES  |     | NULL    |       |
| quantity | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
*/
DROP TABLE pastries;
-- Query OK, 0 rows affected (0.01 sec)
