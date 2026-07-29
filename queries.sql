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