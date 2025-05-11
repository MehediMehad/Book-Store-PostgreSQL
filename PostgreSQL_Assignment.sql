-- Create the books table
CREATE Table "books"(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    CONSTRAINT price_non_negative CHECK (price >= 0),
    stock INTEGER NOT NULL,
    published_year INTEGER NOT NULL
);

SELECT * FROM books;


-- Create the customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);


-- Create the orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    book_id INTEGER REFERENCES books(id),
    quantity INTEGER NOT NULL,
    CONSTRAINT quantity_greater_than_zero CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


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



-- 8️⃣ Delete customers who haven't placed any orders.
DELETE FROM customers
WHERE id NOT IN (SELECT customer_id FROM orders);



SELECT * FROM orders;
SELECT * FROM books;