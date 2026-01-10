/* create row with projects names and find the longest project */
ALTER TABLE project ADD COLUMN name VARCHAR(25);

UPDATE project
SET name = 'Project A'
WHERE id = 1;
UPDATE project
SET name = 'Project B'
WHERE id = 2;
UPDATE project
SET name = 'Project C'
WHERE id = 3;
UPDATE project
SET name = 'Project D'
WHERE id = 4;
UPDATE project
SET name = 'Project E'
WHERE id = 5;
UPDATE project
SET name = 'Project F'
WHERE id = 6;
UPDATE project
SET name = 'Project G'
WHERE id = 7;
UPDATE project
SET name = 'Project H'
WHERE id = 8;
UPDATE project
SET name = 'Project I'
WHERE id = 9;
UPDATE project
SET name = 'Project J'
WHERE id = 10;

SELECT name, DATEDIFF('MONTH', start_date, finish_date) AS month_count
FROM project
WHERE DATEDIFF('MONTH', start_date, finish_date) = (
    SELECT MAX(DATEDIFF('MONTH', start_date, finish_date)) 
    FROM project
)
ORDER BY month_count DESC;