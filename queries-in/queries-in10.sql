-- Get total assistance requests assignment

SELECT assignments.id,
       assignments.day,
       assignments.chapter,
       assignments.name,
       COUNT(assistance_requests.*) AS total_assistances
FROM assignments
LEFT JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, assignments.day, assignments.chapter, assignments.name
ORDER BY total_assistances DESC;
