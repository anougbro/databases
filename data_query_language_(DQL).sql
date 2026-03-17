/*** 

What You're Aiming For
We have the following relational model created. 
Now we are going to write SQL queries to retrieve data from these tables  using DQL language:

https://i.imgur.com/Am5S7XF.png 


***/

/* Step 1: Display all the data of customers */

SELECT * FROM Customer;


/* 2: Display the product_name and category for products which their price is between 5000 and 10000 */
SELECT product_name, category FROM Product WHERE Price BETWEEN 5000 AND 10000;


/* Step 3: Display all the data of products sorted in descending order of price. */
SELECT * FROM Product ORDER BY Price DESC;


/* Step 4: Display the total number of orders, the average amount, the highest total amount and the lowest total amount for each product_id, display the number of orders */
SELECT COUNT(total_amount) AS TotalOrders, AVG(total_amount) AS AverageAmount, MAX(total_amount) AS HighestAmount, MIN(total_amount) AS LowestAmount FROM Orders;

/* Step 5: Display the customer_id which has more than 2 orders */
SELECT customer_id FROM Orders GROUP BY customer_id HAVING COUNT(*) > 2;


/* Step 6: For each month of the 2020 year, display the number of orders */
SELECT MONTH(order_date) AS OrderMonth, COUNT(*) AS NumberOfOrders FROM Orders WHERE YEAR(order_date) = 2020 GROUP BY MONTH(order_date);

/* Step 7: For each order, display the product_name, the customer_name and the date of the order*/
SELECT p.product_name, c.customer_name, o.order_date FROM Orders o JOIN Product p ON o.product_id = p.product_id JOIN Customer c ON o.customer_id = c.customer_id;

/* Display all the orders made three months ago  */
SELECT * FROM Orders WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);

/* Display customers (customer_id) who have never ordered a product */
SELECT customer_id FROM Customer WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM Orders);