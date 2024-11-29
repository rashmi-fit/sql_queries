-- https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

with Sales as (
    select * from Sales
),
Product as (
    select * from Product
)

select 
 emp.name
,emp_uni.unique_id
from emp left join emp_uni using (id)
