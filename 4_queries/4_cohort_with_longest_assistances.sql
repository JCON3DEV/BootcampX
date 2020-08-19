-- 4_cohort_with_longest_assistances.sql

-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.
SELECT AVG(AGE(started_at,completed_at)) AS average_assistance_request_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name 
ORDER BY average_assistance_request_duration ASC
LIMIT 1;