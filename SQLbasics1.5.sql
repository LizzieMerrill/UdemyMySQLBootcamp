/*
Using online SQL editor at https://www.w3schools.com/sql/trysql.asp?filename=trysql_op_or
Using default database on the online IDE for all calls (v1.6)
*/


-- Sorts products by price in descending order
SELECT * FROM products
ORDER BY Price DESC;


-- Sorts products by rice in ascending order (default call)
SELECT * FROM products
ORDER BY Price;


-- Calls data from two tables, customers and orders, to display a sorted list of customers based on how many orders they've made
SELECT 	-- call begin
    customerName,	-- instructs the first column to display CustomerName information
    COUNT(*) AS 'number of orders'	-- displays customer names sorted based on how many times they ordered
FROM customers	-- call finished
INNER JOIN orders	-- (begin) this call combines data from the customers table and the orders table on the display
	ON orders.CustomerID = customers.CustomerID	-- places 'number of orders' in the second column next to customer name, where
GROUP BY customers.customerID	-- for customers who have the same number of orders, the next level of sorting is by their ID
ORDER BY "number of orders" DESC;	-- most to least orders (call end)


-- Instagram clone database calls: this is new content, I haven't learned this up to this point.
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- More advanced functions in MySQL; they look familiar, but I have never used them in data before.
SELECT first_name, 
       last_name, 
       Count(rating)                    AS COUNT, 
       Ifnull(Min(rating), 0)           AS MIN, 
       Ifnull(Max(rating), 0)           AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
       CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 


-- This function deletes the whole customers table
DROP TABLE Customers;
