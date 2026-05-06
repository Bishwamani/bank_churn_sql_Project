## 02_basic_queries.sql

USE churn_db;

SELECT * FROM churn_data;

SELECT CustomerId, Surname, Geography, Age
FROM churn_data;

SELECT *
FROM churn_data
WHERE Age > 40;

SELECT *
FROM churn_data
WHERE Exited = 1;

SELECT *
FROM churn_data
ORDER BY Balance DESC;

SELECT Surname, Balance
FROM churn_data
ORDER BY Balance DESC
LIMIT 1;