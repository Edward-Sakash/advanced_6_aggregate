\c my_new_database

SELECT
    COUNT(*) AS "Total",
    MIN(starts_on) AS "First started on",
    MAX(ends_on) AS "Last ended on",
    SUM(audience) AS "Total audience",
    AVG(audience) AS "Average audience"
FROM webinar
WHERE teacher = 'Julius Maxim';

