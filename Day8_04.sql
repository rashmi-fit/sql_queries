-- https://leetcode.com/problems/customers-who-bought-all-products/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.
-- Return the result table in any order.

with abc as (
    select customer_id
    , count(product_key)
    from customer
    group by 1
    having count(product_key)>1)
select customer_id from abc
