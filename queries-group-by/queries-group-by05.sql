-- Get enrolled students average time completion

SELECT students.name AS student_name, AVG(assignment_submissions.duration) AS average_time
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_time DESC;
