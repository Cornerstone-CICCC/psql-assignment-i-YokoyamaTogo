-- Get instructors assisted class with number

SELECT instructors.name AS instructor,
       classes.name AS class,
       COUNT(assistance_requests.*) AS total_assistances
FROM assistance_requests
JOIN instructors ON instructors.id = assistance_requests.instructor_id
JOIN students ON students.id = assistance_requests.student_id
JOIN classes ON classes.id = students.class_id
WHERE classes.name = 'JUL02'
GROUP BY instructors.id, instructors.name, classes.id, classes.name
ORDER BY instructor;
