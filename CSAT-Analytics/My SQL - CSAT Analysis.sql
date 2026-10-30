SHOW DATABASES;
USE project_csat_analytics;

SHOW TABLES;
DESCRIBE CSAT;

SELECT id, COUNT(*) AS duplicate_count
FROM CSAT
GROUP BY id
HAVING COUNT(*) > 1;

SELECT
    SUM(id IS NULL) AS id_null,
    SUM(csat_score IS NULL) AS csat_score_null
FROM CSAT;

SELECT sentiment, COUNT(*) AS call_count
FROM CSAT
GROUP BY sentiment
ORDER BY call_count DESC;

SELECT csat_score, COUNT(*) AS call_count
FROM CSAT
GROUP BY csat_score
ORDER BY csat_score;

SELECT Call_Day, COUNT(*) AS call_count
FROM CSAT
GROUP BY Call_Day
ORDER BY Call_Day;

SELECT reason, COUNT(*) AS call_count
FROM CSAT
GROUP BY reason
ORDER BY call_count DESC;

SELECT state, COUNT(*) AS call_count
FROM CSAT
GROUP BY state
ORDER BY call_count DESC;

SELECT channel, COUNT(*) AS call_count
FROM CSAT
GROUP BY channel
ORDER BY call_count DESC;

SELECT response_time, COUNT(*) AS call_count
FROM CSAT
GROUP BY response_time
ORDER BY call_count DESC;

SELECT call_center, COUNT(*) AS call_count
FROM CSAT
GROUP BY call_center
ORDER BY call_count DESC;

SELECT
    MIN(call_duration_in_minutes) AS minimum_duration,
    MAX(call_duration_in_minutes) AS maximum_duration,
    AVG(call_duration_in_minutes) AS average_duration
FROM CSAT;

SELECT
    sentiment,
    COUNT(*) AS call_count,
    AVG(csat_score) AS average_csat
FROM CSAT
GROUP BY sentiment
ORDER BY call_count DESC;

SELECT
    reason,
    COUNT(*) AS call_count,
    AVG(csat_score) AS average_csat
FROM CSAT
GROUP BY reason
ORDER BY call_count DESC;

SELECT
    reason,
    response_time,
    COUNT(*) AS call_count
FROM CSAT
GROUP BY reason, response_time
ORDER BY reason, call_count DESC;




SELECT * FROM CSAT;