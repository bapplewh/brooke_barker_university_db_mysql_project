USE mysql_capstone_schema;

-- top grades for each student
SELECT student.student_name, MAX(grade.grade)
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
JOIN student
ON grade_student_id = student_id
GROUP BY student.student_name;


SELECT *
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
JOIN student
ON grade_student_id = student_id;