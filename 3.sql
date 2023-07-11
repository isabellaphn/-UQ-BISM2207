SELECT Student_Course_Offerings.course_no, Students.first_name, Students.surname, Student_Course_Offerings.final_grade
FROM Student_Course_Offerings,Students,Australian_Students
WHERE Student_Course_Offerings.student_no = Students.student_no
AND Students.student_no = Australian_Students.student_no
AND course_no = 'COMP130'
ORDER BY final_grade desc;