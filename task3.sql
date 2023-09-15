-- Connect to the "my_new_database" database
\c my_new_database

-- Total number of webinars, first started time, last ended time, total audience, and average audience for "Introduction to Databases"
SELECT
    COUNT(*) AS Total,
    MIN(starts_on) AS "First started on",
    MAX(ends_on) AS "Last ended on",
    SUM(audience) AS "Total audience",
    AVG(audience) AS "Average audience"
FROM
    webinar
WHERE
    name = 'Introduction to Databases';
