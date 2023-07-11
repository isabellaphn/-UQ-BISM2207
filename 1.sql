SELECT DISTINCT s.staff_no, s.first_name, s.surname 
FROM Staff s
LEFT JOIN Tutorials t
ON s.staff_no = t.staff_no
ORDER BY s.staff_no;