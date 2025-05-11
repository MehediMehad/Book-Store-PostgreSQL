-- 1️⃣ Find books that are out of stock.
SELECT * FROM books WHERE stock = 0;

-- 2️⃣ Retrieve the most expensive book in the store.
SELECT *
FROM books
WHERE
    price = (
        SELECT MAX(price)
        FROM books
    );

-- 3️⃣ Find the total number of orders placed by each customer.
SELECT
    c.name AS customer_name,
    COUNT(o.id) AS total_orders
FROM
    customers c
LEFT JOIN
    orders o ON c.id = o.customer_id
GROUP BY
    c.name;

-- 4️⃣ Calculate the total revenue generated from book sales.
SELECT SUM(b.price * o.quantity) AS total_revenue
FROM orders o
JOIN books b ON o.book_id = b.id;

-- 5️⃣ List all customers who have placed more than one order.
SELECT 
    c.name,
    COUNT(o.id) AS orders_count
FROM 
    customers c
JOIN 
    orders o ON c.id = o.customer_id
GROUP BY 
    c.id, c.name
HAVING 
    COUNT(o.id) > 1


-- 6️⃣ Find the average price of books in the store.
SELECT ROUND(AVG(price), 2) AS avg_book_price
FROM books;

-- 7️⃣ Increase the price of all books published before 2000 by 10%.
UPDATE books
SET price = price * 1.10
WHERE published_year < 2000;





SELECT * FROM orders;
SELECT * FROM books;