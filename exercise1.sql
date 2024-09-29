USE sakila;

SELECT *
FROM actor;

SELECT first_name, last_name
FROM customer
LIMIT 5         -- to limit sou emfanizei se auti tin periptosi tis protes 5 grammes --
OFFSET 2;       -- to offset ksekinaei ousiastika apo tin 3 grammi paralipei tis protes 2 se auti tin periptosi --

SELECT DISTINCT name
FROM language;

SELECT CONCAT(first_name,' ',last_name) AS name
FROM customer;

SELECT *
FROM actor
WHERE first_name LIKE '%o%';