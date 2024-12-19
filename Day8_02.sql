-- https://leetcode.com/problems/find-followers-count/?envType=study-plan-v2&envId=top-sql-50
-- Write a solution that will, for each user, return the number of followers.
-- Return the result table ordered by user_id in ascending order.

select
user_id
,count(follower_id) as followers_count
from
Followers
group by 1
order by user_id asc
