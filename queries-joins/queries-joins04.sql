-- Get total time assignments per student

SELECT students.name AS student_name, SUM(assignment_submissions.duration) AS total_time
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel'
GROUP BY students.name;
