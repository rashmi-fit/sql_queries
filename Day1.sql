-- https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
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
