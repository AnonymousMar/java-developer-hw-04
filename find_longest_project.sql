/*find the longest project */
SELECT name, DATEDIFF('MONTH', start_date, finish_date) AS month_count
FROM project
WHERE DATEDIFF('MONTH', start_date, finish_date) = (
    SELECT MAX(DATEDIFF('MONTH', start_date, finish_date)) 
    FROM project
)
ORDER BY month_count DESC;