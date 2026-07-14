-- Get total assignments per day greater than 10

SELECT day, COUNT(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;
