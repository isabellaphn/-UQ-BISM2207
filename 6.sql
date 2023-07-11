SELECT DISTINCT s.first_name, s.surname,
AVG(CASE WHEN year = '2015' THEN final_grade END) AS avg_2015,
AVG(CASE WHEN year = '2014' THEN final_grade END) AS avg_2014,
(AVG(CASE WHEN year = '2015' THEN final_grade END) - AVG(CASE WHEN year = '2014' THEN final_grade END))*100 AS percentage_difference
FROM Students s, Student_Course_Offerings sco
WHERE s.student_no = sco.student_no
GROUP BY s.first_name, s.surname
HAVING AVG(CASE WHEN year = '2015' THEN final_grade END) > AVG(CASE WHEN year = '2014' THEN final_grade END)
