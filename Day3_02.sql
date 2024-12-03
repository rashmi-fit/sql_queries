-- Write a solution to find the confirmation rate of each user.
-- https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50

-- WITH
--     Signups AS (
--         SELECT user_id, time_stamp
--         FROM Signups
--     ),
--     Confirmations AS (
--         SELECT user_id, time_stamp, action
--         FROM Confirmations
--     ),
--     AggregatedConfirmations AS (
--         SELECT
--             user_id,
--             COUNT(*) AS total_messages,
--             SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) AS confirmed_messages
--         FROM Confirmations
--         GROUP BY user_id
--     )
-- SELECT
--     s.user_id,
--     ROUND(COALESCE(ac.confirmed_messages * 1.0 / ac.total_messages, 0), 2) AS confirmation_rate
-- FROM
--     Signups s
-- LEFT JOIN AggregatedConfirmations ac
--     ON s.user_id = ac.user_id;

WITH
    AggregatedConfirmations AS (
        SELECT
            user_id,
            COUNT(*) AS total_messages,
            SUM(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END) AS confirmed_messages
        FROM Confirmations
        GROUP BY 1
    )
SELECT
    s.user_id,
    ROUND(COALESCE(ac.confirmed_messages * 1.0 / ac.total_messages, 0), 2) AS confirmation_rate
FROM
    Signups s
LEFT JOIN AggregatedConfirmations ac
    ON s.user_id = ac.user_id;
