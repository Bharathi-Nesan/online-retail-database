-- GPA per semester
SELECT 
    s.name AS student_name,
    sem.semester_name,
    ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) AS gpa
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
JOIN Semesters sem ON g.semester_id = sem.semester_id
GROUP BY s.student_id, sem.semester_id
ORDER BY s.student_id, sem.semester_id;

-- CGPA for all students
SELECT 
    s.name AS student_name,
    ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) AS cgpa
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
GROUP BY s.student_id
ORDER BY cgpa DESC;
