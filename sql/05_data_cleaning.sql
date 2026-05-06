## 05_data_cleaning.sql

Use churn_db;

-- 1. Check table structure
DESCRIBE churn_data;

-- 2. View sample data
SELECT *
FROM churn_data
LIMIT 10;

-- 3. Rename columns with spaces
ALTER TABLE churn_data
CHANGE `Satisfaction Score` Satisfaction_score INT;

ALTER TABLE churn_data
CHANGE `Card Type` Card_Type VARCHAR(50);

ALTER TABLE churn_data
CHANGE `Point Earned` Point_Earned INT;

-- 4. Check for duplicate customers
SELECT CustomerId, COUNT(*) AS duplicate_count
FROM churn_data
GROUP BY CustomerId
HAVING COUNT(*) > 1;

-- 5. Check for missing values
SELECT *
FROM churn_data
WHERE CustomerId IS NULL
   OR Surname IS NULL
   OR CreditScore IS NULL
   OR Geography IS NULL
   OR Gender IS NULL
   OR Age IS NULL
   OR Balance IS NULL
   OR EstimatedSalary IS NULL;

-- 6. Check unique values in categorical columns
SELECT DISTINCT Geography
FROM churn_data;

SELECT DISTINCT Gender
FROM churn_data;

SELECT DISTINCT Card_Type
FROM churn_data;

-- 7. Check invalid ages
SELECT *
FROM churn_data
WHERE Age <= 0 OR Age > 100;

-- 8. Check invalid credit scores
SELECT *
FROM churn_data
WHERE CreditScore < 300 OR CreditScore > 900;

-- 9. Check invalid churn values
SELECT *
FROM churn_data
WHERE Exited NOT IN (0, 1);

-- 10. Check invalid complaint values
SELECT *
FROM churn_data
WHERE Complain NOT IN (0, 1);

-- 11. Check invalid satisfaction scores
SELECT *
FROM churn_data
WHERE Satisfaction_score < 1 OR Satisfaction_score > 5;

-- 12. Check invalid balance or salary
SELECT *
FROM churn_data
WHERE Balance < 0
   OR EstimatedSalary < 0;

-- 13. Final structure check
DESCRIBE churn_data;
