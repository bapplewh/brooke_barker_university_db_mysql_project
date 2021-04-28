USE mysql_capstone_schema;

CREATE TABLE `mysql_capstone_schema`.`professor` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `professor_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE INDEX `professor_id_UNIQUE` (`professor_id` ASC) VISIBLE);

CREATE TABLE `mysql_capstone_schema`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE);
  
  CREATE TABLE `mysql_capstone_schema`.`course` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `course_professor_id` INT NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `course_professor_id_idx` (`course_professor_id` ASC) VISIBLE,
  CONSTRAINT `course_professor_id`
    FOREIGN KEY (`course_professor_id`)
    REFERENCES `mysql_capstone_schema`.`professor` (`professor_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

CREATE TABLE `mysql_capstone_schema`.`grade` (
  `grade_id` INT NOT NULL AUTO_INCREMENT,
  `grade` INT NOT NULL,
  `grade_course_id` INT NOT NULL,
  `grade_student_id` INT NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE INDEX `grade_id_UNIQUE` (`grade_id` ASC) VISIBLE,
  INDEX `grade_course_id_idx` (`grade_course_id` ASC) VISIBLE,
  INDEX `grade_student_id_idx` (`grade_student_id` ASC) VISIBLE,
  CONSTRAINT `grade_course_id`
    FOREIGN KEY (`grade_course_id`)
    REFERENCES `mysql_capstone_schema`.`course` (`course_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `grade_student_id`
    FOREIGN KEY (`grade_student_id`)
    REFERENCES `mysql_capstone_schema`.`student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
