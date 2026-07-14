-- Get class longest assistance

SELECT classes.name AS class,
       AVG(assistance_requests.completed_at - assistance_requests.started_at) AS avg_duration_assistance
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN classes ON classes.id = students.class_id
GROUP BY classes.name
ORDER BY avg_duration_assistance DESC
LIMIT 1;
