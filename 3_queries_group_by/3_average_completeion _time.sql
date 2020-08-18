SELECT students.name AS student, avg(assignment_submissions.duration) AS assignment_submissions_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY assignment_submissions_duration DESC;
