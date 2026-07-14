-- Get enrolled students average time completion less estimated

SELECT
  students.name AS student_name,
  AVG(assignment_submissions.duration) AS average_time,
  AVG(assignments.duration) AS average_estimated_time
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_time;
