USE mysql_capstone_schema;

-- average grade thats given by each professor
SELECT professor.professor_name, AVG(grade.grade)
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
GROUP BY professor.professor_name;