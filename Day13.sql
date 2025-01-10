-- https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find for each date the number of different products sold and their names.
-- Approach
select
sell_date
, count(distinct product) as num_sold
, group_concat(distinct product) as products
from activities
group by 1;
