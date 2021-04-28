USE mysql_capstone_schema;

-- group students by courses
SELECT student.student_name, course.course_name
FROM course
JOIN grade
ON course_id = grade_course_id
JOIN student
ON grade_student_id = student_id;