-- Inserting data into the 'books' table
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Kite Runner', 'Khaled Hosseini', 13.99, 65, 2003),
('The Da Vinci Code', 'Dan Brown', 11.75, 70, 2003),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', 15.25, 50, 2005),
('The Hunger Games', 'Suzanne Collins', 12.00, 90, 2008),
('The Help', 'Kathryn Stockett', 14.50, 55, 2009),
('Gone Girl', 'Gillian Flynn', 10.99, 85, 2012),
('The Martian', 'Andy Weir', 16.00, 40, 2014),
('Little Fires Everywhere', 'Celeste Ng', 13.50, 60, 2017),
('Where the Crawdads Sing', 'Delia Owens', 15.75, 75, 2018),
('Becoming', 'Michelle Obama', 18.00, 45, 2018),
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 50, 1925),
('To Kill a Mockingbird', 'Harper Lee', 12.50, 75, 1960),
('Pride and Prejudice', 'Jane Austen', 9.75, 60, 1813),
('1984', 'George Orwell', 11.20, 40, 1949),
('The Catcher in the Rye', 'J.D. Salinger', 8.99, 80, 1951),
('The Lord of the Rings', 'J.R.R. Tolkien', 25.00, 30, 1954);

SELECT * FROM books;

-- Inserting data into the 'customers' table
INSERT INTO customers (name, email, joined_date) VALUES
('John Smith', 'john.smith@example.com', '2023-01-15'),
('Alice Johnson', 'alice.johnson@example.net', '2023-02-20'),
('Bob Williams', 'bob.williams@test.com', '2023-03-10'),
('Eva Brown', 'eva.brown@email.com', '2023-04-05'),
('Michael Davis', 'michael.davis@domain.org', '2023-05-12'),
('Sophia Wilson', 'sophia.wilson@mail.co', '2023-06-22'),
('David Garcia', 'david.garcia@site.info', '2023-07-01'),
('Olivia Rodriguez', 'olivia.rodriguez@web.io', '2023-08-18'),
('Joseph Martinez', 'joseph.martinez@online.tv', '2023-09-27'),
('Isabella Robinson', 'isabella.robinson@net.us', '2023-10-30');


SELECT * FROM customers;

-- Inserting data into the 'orders' table
INSERT INTO orders (customer_id, book_id, quantity, order_date) VALUES
(1, 1, 2, '2023-01-16 10:00:00'), 
(2, 3, 1, '2023-02-21 14:30:00'), 
(3, 2, 3, '2023-03-11 09:15:00'), 
(3, 2, 1, '2023-06-06 11:00:00'), 
(4, 5, 2, '2023-05-13 16:45:00'), 
(5, 6, 1, '2023-06-23 12:00:00'), 
(2, 7, 2, '2023-07-02 10:30:00'), 
(6, 8, 1, '2023-08-19 08:00:00'), 
(7, 9, 3, '2023-09-28 15:15:00'), 
(8, 10, 1, '2023-10-31 17:00:00');

SELECT * FROM orders;
