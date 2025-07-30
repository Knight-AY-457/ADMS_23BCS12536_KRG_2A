CREATE TABLE Author(
	author_id INT PRIMARY KEY,
	name VARCHAR(50),
	country VARCHAR(20)
)

CREATE TABLE Book (
	book_id INT PRIMARY KEY,
	title VARCHAR(50),
	author_id INT
	FOREIGN KEY (author_id) REFERENCES Author(author_id)
)

INSERT INTO Author (author_id, name, country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Eichiro Oda', 'Japan');

INSERT INTO Book (book_id, title, author_id) VALUES
(101, 'Harry Potter and the Philosophers Stone', 1),
(102, 'A Game of Thrones', 2),
(103, 'The One Piece', 3);

SELECT 
    Book.title AS Book_Title,
    Author.name AS Author_Name,
    Author.country AS Author_Country
FROM 
    Book
INNER JOIN 
    Author ON Book.author_id = Author.author_id;