SELECT students.name AS student_name, courses.title AS course_title
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.id
INNER JOIN courses ON enrollments.course_id = courses.id
ORDER BY students.name ASC, courses.title ASC;