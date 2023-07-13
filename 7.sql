SELECT student_no, course_no, semester, 'year', final_grade
FROM Student_Course_Offerings sco
WHERE sco.final_grade = (SELECT MAX(final_grade) FROM Student_Course_Offerings);