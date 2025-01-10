-- https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

-- Approach:
-- Firstly we concatenate the upper and lower string
-- The we use UPPER function which chapitalizes then we have substring which substitutes the string which takes 3 arguments, the first is the string itself, the second is the starting index from which it should start capitalizing and the 3rd argument is the ending index till which it should capitalize.
-- similarly the lower also then order by user_id by asc

select
user_id
,CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2))) as name
from users order by user_id asc
