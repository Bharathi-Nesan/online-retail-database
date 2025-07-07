-- CGPA rank list
SELECT 
    s.name AS student_name,
    ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) AS cgpa,
    RANK() OVER (ORDER BY ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) DESC) AS rank_position
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
GROUP BY s.student_id
ORDER BY rank_position;
