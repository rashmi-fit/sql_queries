-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find the percentage of the users registered in each contest rounded to two decimals.


WITH
TotalUsers AS (
    SELECT COUNT(user_id) AS total_users
    FROM Users
),
ContestRegistrations AS (
    SELECT
        contest_id,
        COUNT(user_id) AS registered_users
    FROM Register
    GROUP BY 1
)
SELECT
    cr.contest_id,
    ROUND((cr.registered_users * 100.0) / tu.total_users, 2) AS percentage
FROM
    ContestRegistrations cr
CROSS JOIN
    TotalUsers tu
ORDER BY
    percentage DESC,
    cr.contest_id ASC
