SELECT staff_no, first_name, surname, phd_title
FROM Staff
WHERE Staff.phd_title IS NOT NULL;