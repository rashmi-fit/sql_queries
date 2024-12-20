-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
-- Assumption :  we will consider a manager an employee who has at least 1 other employee reporting to them.

WITH ManagerReports AS (
    SELECT
        e.employee_id AS manager_id,
        e.name AS manager_name,
        COUNT(r.employee_id) AS reports_count,
        AVG(r.age) AS avg_age
    FROM
        Employees e
    LEFT JOIN
        Employees r ON e.employee_id = r.reports_to
    WHERE
        r.employee_id IS NOT NULL
    GROUP BY
        1,2
)

SELECT
    manager_id AS employee_id,
    manager_name AS name,
    reports_count,
    ROUND(avg_age) AS average_age
FROM
    ManagerReports
ORDER BY
    employee_id

