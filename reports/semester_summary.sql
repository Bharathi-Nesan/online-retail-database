-- Semester-wise summary of grades for all students
SELECT 
    s.reg_no,
    s.name AS student_name,
    c.course_code,
    c.course_name,
    sem.semester_name,
    g.grade_letter,
    g.grade_point
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
JOIN Semesters sem ON g.semester_id = sem.semester_id
WHERE sem.semester_name = 'Sem 5'
ORDER BY s.reg_no, c.course_code;
