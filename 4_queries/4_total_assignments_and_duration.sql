-- 4_total_assignments_and_duration.sql



-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.
SELECT day, sum(assignments.duration), count(*) AS number_of_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY day
LIMIT 5;