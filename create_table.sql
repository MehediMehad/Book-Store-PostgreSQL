
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

SELECT * FROM customers;

-- Create the orders table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    book_id INTEGER REFERENCES books(id),
    quantity INTEGER NOT NULL,
    CONSTRAINT quantity_greater_than_zero CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM orders;