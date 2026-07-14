-- Total students first 3 classes:
SELECT count(*) AS total_students
FROM students
WHERE class_id IN (1, 2, 3);