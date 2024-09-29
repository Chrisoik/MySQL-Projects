CREATE DATABASE Library;

USE Library;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

ALTER TABLE books
ADD CONSTRAINT UNIQUE (title);

ALTER TABLE borrowed_books
ADD CONSTRAINT fk_member
FOREIGN KEY (member_id) REFERENCES members (member_id)
ON DELETE CASCADE;