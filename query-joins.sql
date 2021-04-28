USE mysql_capstone_schema;

-- This is connecting the professor to the course
SELECT *
FROM professor
JOIN course
ON professor_id = course_professor_id;

-- This is connecting the professor to the course, and the course to the grade
SELECT *
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id;

-- This is connecting the professor to the course, and the course to the grade, and the grade to the student
SELECT *
FROM professor
JOIN course
ON professor_id = course_professor_id
JOIN grade
ON course_id = grade_course_id
JOIN student
ON grade_student_id = student_id;

-- connecting professor and course tables
SELECT *
FROM professor, course
WHERE professor.professor_id = course.course_professor_id;