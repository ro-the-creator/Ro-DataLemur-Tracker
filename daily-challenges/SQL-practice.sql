# Challenge 1: 05/07/2026 10:25
WITH cte AS (
SELECT user_id, COUNT(tweet_id) AS tweet_count
FROM tweets
WHERE EXTRACT(year FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT tweet_count AS tweet_bucket, COUNT(user_id)
FROM cte
GROUP BY tweet_count;

# Challenge 2: 05/12/2026 10:36
WITH cte AS (
SELECT user_id, COUNT(tweet_id) AS tweet_count
FROM tweets
WHERE EXTRACT(year FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT tweet_count AS tweet_bucket, COUNT(user_id)
FROM cte
GROUP BY tweet_count;

# Challenge 3: 05/12/2026 10:13
SELECT p.page_id
FROM pages p
LEFT OUTER JOIN page_likes l
USING(page_id)
WHERE user_id IS NULL
ORDER BY p.page_id ASC;

# Challenge 4: 05/13/2026 10:10
SELECT part, assembly_step 
FROM parts_assembly
WHERE assembly_step >= 2
AND finish_date IS NULL;