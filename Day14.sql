-- https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50-- Write a solution to find for each date the number of different products sold and their names.
-- Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

DELETE p
FROM person p
JOIN person p2 ON p.email = p2.email
WHERE p.id > p2.id;

-- for sql users use delete statement not a select statement
