SELECT DISTINCT first_name, surname,
CASE
	WHEN Students.student_no = Foreign_Students.student_no THEN Foreign_Students.nationality
    ELSE 'N/A'
END AS nationality
FROM Students, Foreign_Students;