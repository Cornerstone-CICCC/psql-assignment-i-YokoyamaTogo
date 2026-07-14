--  Get total assistance requests instructor

SELECT COUNT(assistance_requests.*) AS total_assistances,
       instructors.name AS instructor_name
FROM assistance_requests
JOIN instructors ON instructors.id = assistance_requests.instructor_id
WHERE instructors.name = 'Waylon Boehm'
GROUP BY instructors.name;
