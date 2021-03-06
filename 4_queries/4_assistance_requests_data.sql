-- 4_assistance_requests_data.sql


-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.
SELECT assignments.name AS assignmnet, teachers.name AS teacher, students.name AS student, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;