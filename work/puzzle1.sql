USE Puzzles
GO

/*----------------------------------------------------
DDL for Puzzle #1
Shopping Carts
*/----------------------------------------------------

DROP TABLE IF EXISTS Cart1;
DROP TABLE IF EXISTS Cart2;
GO

CREATE TABLE Cart1
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

CREATE TABLE Cart2
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

INSERT INTO Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO

INSERT INTO Cart2 (Item) VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO

/*----------------------------------------------------
Answer
*/----------------------------------------------------

SELECT
    c1.Item as 'Item Cart 1',
    c2.Item as 'Item Cart 2'
FROM Cart1 as c1
FULL OUTER JOIN Cart2 as c2 ON c1.Item = c2.Item
ORDER BY 'Item Cart 1' DESC, 'Item Cart 2' DESC

