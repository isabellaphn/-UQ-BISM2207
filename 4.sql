SELECT DISTINCT Students.first_name, Students.surname, Foreign_Students.nationality, Student_Course_Offerings.final_grade
FROM Students, Foreign_Students, Undergraduate_Thesis, Student_Course_Offerings
WHERE Students.student_no = Foreign_Students.student_no
AND Foreign_Students.student_no = Undergraduate_Thesis.student_no
AND final_grade > 5
ORDER BY final_grade DESC;