SELECT first_name, surname, COUNT(course_no) AS no_of_course
FROM Students, Student_Course_Offerings
WHERE Students.student_no = Student_Course_Offerings.student_no
GROUP BY first_name, surname
ORDER BY COUNT(course_no) ASC;