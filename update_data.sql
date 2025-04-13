-- Update the 'stock' values in the 'books' table to be between 0 and 15
UPDATE books
SET stock = CASE
    WHEN title = 'The Great Gatsby' THEN 5
    WHEN title = 'To Kill a Mockingbird' THEN 12
    WHEN title = 'Pride and Prejudice' THEN 8
    WHEN title = '1984' THEN 3
    WHEN title = 'The Catcher in the Rye' THEN 10
    WHEN title = 'The Lord of the Rings' THEN 1
    WHEN title = 'Harry Potter and the Sorcerer''s Stone' THEN 15
    WHEN title = 'The Alchemist' THEN 7
    WHEN title = 'One Hundred Years of Solitude' THEN 6
    WHEN title = 'Moby Dick' THEN 2
    WHEN title = 'The Kite Runner' THEN 9
    WHEN title = 'The Da Vinci Code' THEN 11
    WHEN title = 'The Girl with the Dragon Tattoo' THEN 4
    WHEN title = 'The Hunger Games' THEN 13
    WHEN title = 'The Help' THEN 0  -- Setting one to 0
    WHEN title = 'Gone Girl' THEN 14
    WHEN title = 'The Martian' THEN 0  -- Setting another to 0
    WHEN title = 'Little Fires Everywhere' THEN 6
    WHEN title = 'Where the Crawdads Sing' THEN 12
    WHEN title = 'Becoming' THEN 4
END;