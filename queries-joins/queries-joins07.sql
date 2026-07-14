-- Get total submissions enrolled students less 100

SELECT students.name AS student, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.id, students.name
HAVING COUNT(assignment_submissions.*) < 100;
