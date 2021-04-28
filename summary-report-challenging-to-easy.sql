USE mysql_capstone_schema;

-- summary report of challenging to easy courses
SELECT course.course_name, AVG(grade.grade)
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
GROUP BY course.course_name
ORDER BY AVG(grade.grade) ASC;