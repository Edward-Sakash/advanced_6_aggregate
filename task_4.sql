-- Connect to the "my_new_database" database
--\c my_new_database

-- Update the teacher_id based on the teacher's name
UPDATE webinar w
SET teacher_id = t.id
FROM teacher t
WHERE w.teacher = t.name;

SELECT
    COUNT(*) AS "Total",                         -- Total number of webinars
    MIN(starts_on) AS "First started on",       -- Date and time of the earliest webinar
    MAX(ends_on) AS "Last ended on",             -- Date and time of the latest webinar
    SUM(audience) AS "Total audience",           -- Total number of attendees across all webinars
    AVG(audience * 1.0) AS "Average audience"    -- Average number of attendees per webinar
FROM webinar

JOIN teacher on teacher.id = webinar.teacher_id
WHERE teacher.city = 'Barcelona';








