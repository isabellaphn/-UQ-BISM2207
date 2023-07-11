SELECT DISTINCT s.first_name, s.surname, sco.final_grade, sco.course_no
FROM Students s, Student_Course_Offerings sco
WHERE s.student_no = sco.student_no
AND course_no = 'COMP130'
AND semester = '1'
AND year = '2012'
AND final_grade > (SELECT AVG(final_grade) AS final_grade
FROM Student_Course_Offerings
WHERE course_no = 'COMP130');