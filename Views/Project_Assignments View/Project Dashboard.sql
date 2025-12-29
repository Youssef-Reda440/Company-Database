CREATE VIEW vw_ProjectDashboard 
AS 
SELECT pr.Name, pr.Description, pr.Budget, p.FirstName+' '+p.LastName AS Manager_Name, pc.FirstName+' '+pc.LastName AS Client_Name, DATEDIFF(DAY, pr.StartDate, pr.EndDate) AS Project_Duration
FROM Project Pr JOIN Person p  
ON pr.Manager_Id = p.Person_Id 
JOIN Contract c
ON c.Contract_Id = pr.Contract_Id
JOIN Client cl
ON cl.Person_Id = c.Client_Id
JOIN Person pc
ON pc.Person_Id = cl.Person_Id