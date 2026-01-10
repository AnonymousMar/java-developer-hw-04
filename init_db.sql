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
/*table project_worker*/
CREATE TABLE project_worker(
project_id INT NOT NULL,
worker_id INT NOT NULL,

PRIMARY KEY(project_id, worker_id),
FOREIGN KEY(project_id) REFERENCES project(id),
FOREIGN KEY(worker_id) REFERENCES worker(id)
);