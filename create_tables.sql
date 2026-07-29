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
