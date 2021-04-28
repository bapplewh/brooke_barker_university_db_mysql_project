USE mysql_capstone_schema;

-- which student/professor have the most courses in common
SELECT 
	course.course_name, 
    student.student_name, 
    professor.professor_name
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
JOIN student
ON grade_student_id = student_id;