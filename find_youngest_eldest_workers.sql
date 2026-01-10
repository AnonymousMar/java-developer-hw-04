/*find the youngest and the eldesr workers and add type row*/
SELECT 
    name,
    birthday,
    CASE 
        WHEN birthday = (SELECT MAX(birthday) FROM worker) THEN 'YOUNGEST'
        WHEN birthday = (SELECT MIN(birthday) FROM worker) THEN 'ELDEST'
    END AS type
FROM worker
WHERE birthday = (SELECT MAX(birthday) FROM worker)
   OR birthday = (SELECT MIN(birthday) FROM worker)
ORDER BY birthday DESC;
