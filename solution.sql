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



SELECT * FROM orders;
SELECT * FROM books;