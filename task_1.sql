-- Connect to the "my_new_database" database
\c my_new_database

-- Query to answer the questions:
-- Calculate statistics about the webinars
SELECT
    COUNT(*) AS "Total",                         -- Total number of webinars
    MIN(starts_on) AS "First started on",       -- Date and time of the earliest webinar
    MAX(ends_on) AS "Last ended on",             -- Date and time of the latest webinar
    SUM(audience) AS "Total audience",           -- Total number of attendees across all webinars
    AVG(audience * 1.0) AS "Average audience"    -- Average number of attendees per webinar
FROM webinar;

-- Optionally, you can include additional SQL queries or commands below this line.
