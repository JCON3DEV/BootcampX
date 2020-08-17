SELECT id, name 
FROM students 
WHERE cohort_id = 7 
ORDER BY name;

SELECT COUNT(id)
FROM students
WHERE students.cohort_id IN ( 1, 2, 3);

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS null;

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

SELECT name, email,phone
FROM students
WHERE github IS NULL AND end_date IS NOT NULL;
