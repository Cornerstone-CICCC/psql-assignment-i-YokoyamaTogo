-- Get data assistance request

SELECT instructors.name AS instructor,
       students.name AS student,
       assignments.name AS assignment,
       assistance_requests.completed_at - assistance_requests.started_at AS assistance_duration
FROM assistance_requests
JOIN instructors ON instructors.id = assistance_requests.instructor_id
JOIN students ON students.id = assistance_requests.student_id
LEFT JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY assistance_duration;
