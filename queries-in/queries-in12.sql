-- Get instructor assisted class

SELECT DISTINCT instructors.name AS instructor,
                classes.name AS class
FROM assistance_requests
JOIN instructors ON instructors.id = assistance_requests.instructor_id
JOIN students ON students.id = assistance_requests.student_id
JOIN classes ON classes.id = students.class_id
WHERE classes.name = 'JUL02'
ORDER BY instructor;
