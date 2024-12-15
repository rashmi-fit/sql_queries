-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

select
id
,movie
,description
,rating
from Cinema
where  id % 2 = 1 and description!= 'boring'
order by rating desc
