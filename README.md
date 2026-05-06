## README.md

# Customer Churn SQL Analysis Project

## Project Overview

This project analyzes customer churn data using SQL. The goal is to explore customer information, account details, churn patterns, and business insights using basic and intermediate SQL concepts.

## Dataset

The dataset contains bank customer information such as customer ID, surname, geography, gender, age, credit score, balance, number of products, active membership status, and churn status.

## Tools Used

- MySQL Workbench
- SQL
- GitHub

## SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- COUNT
- AVG
- GROUP BY
- ALTER TABLE
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Primary Key and Foreign Key concept

## Tables Created

### churn_data
Original imported dataset.

### customers
Contains customer personal information such as CustomerId, Surname, Geography, Gender, and Age.

### accounts
Contains account-related information such as CustomerId, CreditScore, Balance, NumOfProducts, HasCrCard, IsActiveMember, and Exited.

## Key Business Questions

1. How many customers are in the dataset?
2. How many customers have churned?
3. Which geography has the highest churn?
4. Which gender has more churned customers?
5. What is the average balance of churned customers?
6. Are inactive members more likely to churn?
7. Which high-balance customers have exited?

## Key Insights

- Churned customers can be identified using the Exited column.
- Geography and gender can be used to compare churn patterns.
- Balance and active membership status help understand customer risk.
- JOINs were used to combine customer and account details from separate tables.

## Conclusion

This project helped me practice SQL from scratch using a real-world customer churn dataset. I created separate tables, performed filtering, aggregation, grouping, joins, and basic data cleaning to answer business questions.