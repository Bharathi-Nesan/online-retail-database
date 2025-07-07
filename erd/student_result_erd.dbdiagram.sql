Table Students {
  student_id INT [pk, increment]
  reg_no VARCHAR(20)
  name VARCHAR(100)
  dept VARCHAR(50)
  year INT
}

Table Courses {
  course_id INT [pk, increment]
  course_code VARCHAR(10)
  course_name VARCHAR(100)
  credits INT
}

Table Semesters {
  semester_id INT [pk, increment]
  semester_name VARCHAR(20)
  start_date DATE
  end_date DATE
}

Table Grades {
  grade_id INT [pk, increment]
  student_id INT [ref: > Students.student_id]
  course_id INT [ref: > Courses.course_id]
  semester_id INT [ref: > Semesters.semester_id]
  grade_letter VARCHAR(2)
  grade_point INT
}
