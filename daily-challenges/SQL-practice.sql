# Challenge 1: May 7, 2026
WITH cte AS (
SELECT user_id, COUNT(tweet_id) AS tweet_count
FROM tweets
WHERE EXTRACT(year FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT tweet_count AS tweet_bucket, COUNT(user_id)
FROM cte
GROUP BY tweet_count;