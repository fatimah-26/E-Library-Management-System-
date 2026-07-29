
CREATE DATABASE My_library;

USE My_library;


-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    biography TEXT
);


-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200),
    publish_year INT,
    category VARCHAR(100),
    status VARCHAR(20),
    author_id INT,
    FOREIGN KEY (author_id)
        REFERENCES Authors(author_id)
);


-- Create Members table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(150)
);


-- Create Borrowings table
CREATE TABLE Borrowings (
    borrow_id INT PRIMARY KEY,
    borrow_date DATE,
    return_date DATE,
    book_id INT,
    member_id INT,

    FOREIGN KEY (book_id)
        REFERENCES Books(book_id),

    FOREIGN KEY (member_id)
        REFERENCES Members(member_id)
);


-- Insert Authors
INSERT INTO Authors
VALUES
(1,'J.K. Rowling','British Author'),
(2,'Takashi Hiraide','Japanese Author'),
(3,'Dean Burnett','British Author');


-- Insert Books
INSERT INTO Books
VALUES
(101,'Harry Potter and the Philosopher''s Stone',1997,'Fantasy','Available',1),

(102,'The Guest Cat',2001,'Fiction','Available',2),

(103,'The Idiot Brain',2016,'Science','Available',3);


-- Insert Members
INSERT INTO Members
VALUES
(1,'Fatimah','fatimah@gmail.com'),
(2,'Sara','sara@gmail.com'),
(3,'Ahmed','ahmed@gmail.com');


-- Insert Borrowings
INSERT INTO Borrowings
VALUES
(1,'2026-07-23',NULL,101,1),

(2,'2026-07-20','2026-07-22',102,2),

(3,'2026-07-21',NULL,103,3);



-- Show all books
SELECT * FROM Books;


-- Show books with their authors
SELECT 
    b.title,
    a.name AS author
FROM Books b
JOIN Authors a
ON b.author_id = a.author_id;


-- Show borrowing details
SELECT 
    m.name AS Member,
    b.title AS Book,
    br.borrow_date,
    br.return_date
FROM Borrowings br
JOIN Members m
ON br.member_id = m.member_id
JOIN Books b
ON br.book_id = b.book_id;