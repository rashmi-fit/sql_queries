-- https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50
-- A single number is a number that appeared only once in the MyNumbers table.
-- Find the largest single number. If there is no single number, report null.

with single_number  as (
    select num
    from MyNumbers
    group by 1
    having count(*) = 1
)

select max(num) as num from single_number
