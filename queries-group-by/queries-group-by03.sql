-- Get classes more 18 students

SELECT classes.name AS class_name, COUNT(students.*) AS total_students
FROM classes
JOIN students ON students.class_id = classes.id
GROUP BY classes.name
HAVING COUNT(students.*) >= 18
ORDER BY total_students;
