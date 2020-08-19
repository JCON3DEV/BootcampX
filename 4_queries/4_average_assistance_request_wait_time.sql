-- 4_average_assistance_request_wait_time.sql

-- Calculate the average time it takes to start an assistance request.
SELECT avg(started_at - created_at) AS average_wait_times
FROM assistance_requests;
