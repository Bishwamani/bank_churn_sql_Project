## 01_create_tables.sql

Use churn_db;


CREATE TABLE customers AS
SELECT 
    CustomerId,
    Surname,
    Geography,
    Gender,
    Age
FROM churn_data;

CREATE TABLE accounts AS
SELECT 
    CustomerId,
    CreditScore,
    Balance,
    NumOfProducts,
    HasCrCard,
    IsActiveMember,
    Exited
FROM churn_data;
