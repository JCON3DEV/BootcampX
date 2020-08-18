SELECT SUM(assignment_submissions.duration) AS total_duration 
FROM assignment_submissions 
JOIN students ON student.id = student_id 
WHERE students.name ='Ibrahim Schimmel';



