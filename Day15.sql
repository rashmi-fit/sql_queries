-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

with cte1 as (
    select
    product_id
    ,product_name
    ,product_category
    from Products
),
cte2 as(
    select
    product_id
    ,order_date
    ,sum(unit) AS total_units
    from Orders
    where order_date between '2020-02-01' and '2020-02-29'
    group by 1
    having total_units >= 100
)

select
cte1.product_name
,cte2.total_units as unit
from cte1
join cte2 using(product_id)
