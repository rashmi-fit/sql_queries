-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/solutions/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

with 
Visits as(select * from Visits),
Transactions as (select * from Transactions)

select 
customer_id
,count(*) as count_no_trans
from Visits 
left join Transactions using (visit_id)
where Transactions.transaction_id is null
group by 1
