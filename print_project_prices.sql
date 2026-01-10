/*projects price*/
SELECT p.name AS name,
SUM(w.salary * DATEDIFF('MONTH', p.start_date, p.finish_date)) AS price
FROM project p
JOIN project_worker pw ON p.id = pw.project_id
JOIN worker w ON pw.worker_id = w.id
GROUP BY p.name
ORDER BY price DESC;