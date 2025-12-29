CREATE VIEW vw_ProjectAssignments
AS 
SELECT pr.Name Project_Name, p.FirstName+' '+p.LastName AS Person_Name, p.Person_Type, pa.RoleInProject, pa.AssignedAt
FROM Project pr JOIN Project_Assignment pa
ON pr.Project_Id = pa.Project_Id
JOIN Person p 
ON p.Person_Id = pa.Person_Id