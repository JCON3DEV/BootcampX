SELECT students.name AS rollover_student, students.start_date AS student_start_date , cohorts.name, cohort.start_date AS cohort_start_date 
FROM students 
JOIN cohorts ON cohort_id = cohort.id 
WHERE student.start_date != cohort.start_date 
ORDER BY cohort_start_date;

-- how are these differnet?
--Above has error msg missing FROM clause ??
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;
