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


