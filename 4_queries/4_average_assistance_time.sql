-- 4_average_assistance_time.sql

-- Get the average time of an assistance request.

-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)

SELECT AVG(AGE(started_at,completed_at)) AS average_assistance_request_duration
FROM assistance_requests;
