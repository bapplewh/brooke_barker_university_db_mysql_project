USE mysql_capstone_schema;

SELECT *
FROM course;

SELECT *
FROM grade;

SELECT *
FROM professor;

SELECT *
FROM student;

INSERT INTO professor(professor_name)
VALUES ("Professor One");

INSERT INTO professor(professor_name)
VALUES ("Professor Two");

INSERT INTO professor(professor_name)
VALUES ("Professor Three");

INSERT INTO professor(professor_name)
VALUES ("Professor Four");

INSERT INTO student(student_name)
VALUES ("Student One");

INSERT INTO student(student_name)
VALUES ("Student Two");

INSERT INTO student(student_name)
VALUES ("Student Three");

INSERT INTO student(student_name)
VALUES ("Student Four");

INSERT INTO course(course_name, course_professor_id)
VALUES ("English", 1);

INSERT INTO course(course_name, course_professor_id)
VALUES ("Math", 2);

INSERT INTO course(course_name, course_professor_id)
VALUES ("Art", 3);

INSERT INTO course(course_name, course_professor_id)
VALUES ("Computer Science", 4);

INSERT INTO course(course_name, course_professor_id)
VALUES ("Biology", 1);

INSERT INTO grade(grade, grade_course_id, grade_student_id)
VALUES (100, 1, 1);

INSERT INTO grade(grade, grade_course_id, grade_student_id)
VALUES (90, 2, 2);

INSERT INTO grade(grade, grade_course_id, grade_student_id)
VALUES (80, 3, 3);

INSERT INTO grade(grade, grade_course_id, grade_student_id)
VALUES (70, 4, 4);

INSERT INTO grade(grade, grade_course_id, grade_student_id)
VALUES (100, 5, 1);