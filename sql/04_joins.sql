## 04_joins.sql

USE churn_db;

SELECT c.CustomerId, c.Surname, c.Geography, a.Balance, a.Exited
FROM customers c
INNER JOIN accounts a
ON c.CustomerId = a.CustomerId;

SELECT c.Surname, c.Geography, a.Balance
FROM customers c
LEFT JOIN accounts a
ON c.CustomerId = a.CustomerId;

SELECT c.Surname, a.CustomerId, a.Balance
FROM customers c
RIGHT JOIN accounts a
ON c.CustomerId = a.CustomerId;

SELECT c.Surname, c.Geography, a.Balance, a.Exited
FROM customers c
INNER JOIN accounts a
ON c.CustomerId = a.CustomerId
WHERE a.Exited = 1;

SELECT c.Surname, c.Geography, a.Balance
FROM customers c
INNER JOIN accounts a
ON c.CustomerId = a.CustomerId
WHERE a.Balance > 100000;