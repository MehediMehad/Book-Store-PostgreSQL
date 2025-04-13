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




SELECT * FROM books;