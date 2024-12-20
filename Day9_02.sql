-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to report all the employees with their primary department. For employees who belong to one department, report their only department.

WITH PrimaryDepartment AS (
    SELECT employee_id, department_id
    FROM Employee
    GROUP BY 1
    HAVING COUNT(department_id) = 1

    UNION ALL

    SELECT employee_id, department_id
    FROM Employee
    WHERE primary_flag = 'Y'
)

SELECT employee_id, department_id
FROM PrimaryDepartment
ORDER BY employee_id
