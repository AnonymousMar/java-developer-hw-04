/*table worker*/
INSERT INTO worker (name, birthday, level, salary) VALUES
('John','2002-12-10','Junior',1500),
('Leon','2003-03-23','Junior',1400),
('Viktoria','2000-02-22','Middle',2000),
('Valeria','1980-09-02','Senior',5000),
('Ivan','2004-07-19','Trainee',900),
('Oleg','1975-02-01','Senior',7500),
('Tetiana','1999-03-04','Middle',2500),
('Vitalii','1976-02-01','Senior',8500),
('Pavlo','1970-12-20','Senior',9000),
('Kateryna','2002-12-12','Trainee',800);
/*table client*/
INSERT INTO client(name) VALUES
('Klara'),
('Klava'),
('Christian'),
('Ronja'),
('Ben');
/*table project*/
INSERT INTO project (client_id, start_date, finish_date) VALUES
(5, '2026-01-08', '2026-02-08'),
(4, '2026-03-08', '2026-06-08'),
(3, '2025-10-10', '2025-12-22'),
(2, '2025-05-30', '2025-10-01'),
(1, '2025-10-12', '2025-11-30'),
(1, '2025-07-15', '2025-12-30'),
(2, '2025-11-13', '2026-02-20'),
(3, '2026-05-10', '2026-08-21'),
(4, '2026-10-01', '2026-12-28'),
(5, '2026-04-16', '2026-08-30');
/*table project_worker*/
INSERT INTO project_worker(project_id,worker_id) VALUES
(1,3),
(1,5),
(1,1),
(2,2),
(3,4),
(4,6),
(5,7),
(6,8),
(7,9),
(8,9);