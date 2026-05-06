## 06_final_analysis.sql

USE churn_db;

-- 1. Total customers
SELECT COUNT(*) AS total_customers
FROM churn_data;

-- 2. Total churned customers
SELECT COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1;

-- 3. Churn by geography
SELECT Geography, COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1
GROUP BY Geography
ORDER BY churned_customers DESC;

-- 4. Churn by gender
SELECT Gender, COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1
GROUP BY Gender;

-- 5. Average balance of churned and non-churned customers
SELECT Exited, AVG(Balance) AS average_balance
FROM churn_data
GROUP BY Exited;

-- 6. Churn by active membership
SELECT IsActiveMember, COUNT(*) AS total_customers
FROM churn_data
WHERE Exited = 1
GROUP BY IsActiveMember;

-- 7. High balance churned customers
SELECT Surname, Geography, Gender, Age, Balance
FROM churn_data
WHERE Exited = 1 AND Balance > 100000
ORDER BY Balance DESC;

