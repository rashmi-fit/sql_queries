-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find managers with at least five direct reports.
WITH ManagerReports AS (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
SELECT E.name
FROM Employee E
JOIN ManagerReports MR
ON E.id = MR.managerId;
