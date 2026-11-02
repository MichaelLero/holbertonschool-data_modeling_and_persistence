SELECT name AS instructor_name
FROM instructors
WHERE id IN (
    SELECT instructor_id
    FROM courses
    WHERE id IN (
        SELECT course_id
        FROM registrations
    )
)
ORDER BY name ASC;