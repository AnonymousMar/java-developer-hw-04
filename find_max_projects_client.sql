/*max projects client(s)*/
SELECT client.name, COUNT(project.client_id) AS project_count
FROM project
JOIN client on project.client_id = client.id
GROUP BY client.id,client.name
HAVING COUNT(project.client_id) = (
SELECT MAX(client_projects)
FROM(
SELECT client_id, COUNT(*) AS client_projects
FROM project
GROUP BY client_id) AS summary);