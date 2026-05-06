## 03_aggregations_groupby.sql

USE churn_db;

SELECT COUNT(*) AS total_customers
FROM churn_data;

SELECT AVG(Balance) AS average_balance
FROM churn_data;

SELECT Geography, COUNT(*) AS total_customers
FROM churn_data
GROUP BY Geography;

SELECT Gender, COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1
GROUP BY Gender;

SELECT Geography, COUNT(*) AS churned_customers
FROM churn_data
WHERE Exited = 1
GROUP BY Geography
ORDER BY churned_customers DESC;

SELECT IsActiveMember, COUNT(*) AS total_customers
FROM churn_data
GROUP BY IsActiveMember;

## Add churn rate percentage

SELECT 
    Geography,
    COUNT(*) AS churned_customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM churn_data WHERE Geography = c.Geography), 2) AS churn_rate_pct
FROM churn_data c
WHERE Exited = 1
GROUP BY Geography
ORDER BY churned_customers DESC;

## Include total customers per region for context

SELECT 
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM churn_data
GROUP BY Geography
ORDER BY churned_customers DESC;

## Add ranking

SELECT 
    Geography,
    COUNT(*) AS churned_customers,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS churn_rank
FROM churn_data
WHERE Exited = 1
GROUP BY Geography;

