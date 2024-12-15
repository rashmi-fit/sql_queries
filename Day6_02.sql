-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/solutions/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to calculate the number of unique subjects each teacher teaches in the university.

select
teacher_id
,count(distinct subject_id) as cnt
from Teacher
group by 1
