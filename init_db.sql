/*table worker*/
CREATE TABLE worker(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(1000) NOT NULL,
birthday DATE,
level VARCHAR(100)  NOT NULL,
salary INT,

CHECK(CHAR_LENGTH(name) BETWEEN 2 AND 1000),
CHECK(YEAR(birthday) > 1900),
CHECK(salary > 100 AND salary < 10000)
);

ALTER TABLE worker
ADD CONSTRAINT level_values
CHECK(level IN ('Trainee', 'Junior', 'Middle', 'Senior'));
/*table client*/
CREATE TABLE client(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(1000) NOT NULL,
CHECK(LENGTH(name) BETWEEN 2 AND 1000)
);
/*table project*/
CREATE TABLE project(
id INT PRIMARY KEY AUTO_INCREMENT,
client_id INT,
start_date DATE,
finish_date DATE
);

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

/*table project_worker*/
CREATE TABLE project_worker(
project_id INT NOT NULL,
worker_id INT NOT NULL,

PRIMARY KEY(project_id, worker_id),
FOREIGN KEY(project_id) REFERENCES project(id),
FOREIGN KEY(worker_id) REFERENCES worker(id)
);