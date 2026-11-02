SELECT courses.title AS course_title, assignments.title AS assignment_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
ORDER BY courses.title ASC, assignments.title ASC;