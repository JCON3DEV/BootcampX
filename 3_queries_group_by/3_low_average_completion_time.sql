SELECT students.name AS student_name, avg(assignment_submissions.duration) AS assignment_submissions_duration, avg(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE end_date IS NULL
GROUP BY student_name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY assignment_submissions_duration;
