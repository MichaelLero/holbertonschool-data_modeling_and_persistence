SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(*) > (
    SELECT 1.0 * COUNT(*) / (SELECT COUNT(*) FROM courses)
    FROM assignments
)
ORDER BY courses.title ASC;