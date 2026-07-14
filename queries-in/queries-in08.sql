-- Get total assistance requests class

SELECT classes.name AS class,
       SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN classes ON classes.id = students.class_id
GROUP BY classes.name
ORDER BY total_duration;
