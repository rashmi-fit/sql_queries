-- https://leetcode.com/problems/classes-more-than-5-students/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find all the classes that have at least five students.

select
class from Courses
group by 1
having count(student) >= 5
