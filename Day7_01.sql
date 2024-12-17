-- https://leetcode.com/problems/monthly-transactions-i/?envType=study-plan-v2&envId=top-sql-50
-- Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

WITH all_data AS (
    SELECT
        country,
        DATE_FORMAT(trans_date, '%Y-%m') AS month,
        state,
        amount
    FROM Transactions
),
all_transactions AS (
    SELECT
        country,
        month,
        COUNT(*) AS total_transactions,
        SUM(amount) AS total_amount
    FROM all_data
    GROUP BY 1, 2
),
approved_transactions AS (
    SELECT
        country,
        month,
        COUNT(*) AS approved_count,
        SUM(amount) AS approved_amount
    FROM all_data
    WHERE state = 'approved'
    GROUP BY 1, 2
)
SELECT
    a.country,
    a.month,
    a.total_transactions as trans_count,
    a.total_amount as trans_total_amount,
    COALESCE(b.approved_count, 0) AS approved_count ,
    COALESCE(b.approved_amount, 0) AS approved_total_amount
FROM all_transactions a
LEFT JOIN approved_transactions b
ON a.country = b.country AND a.month = b.month

