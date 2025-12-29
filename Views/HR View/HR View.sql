CREATE VIEW vw_EmployeeProfile 
AS 
SELECT p.FirstName, p.LastName, p.Email, e.JobTitle, e.Salary, e.HireDate, t.Name AS TeamName, d.Name AS DepartmentName
FROM Person p JOIN Employee e 
ON p.Person_Id = e.Person_Id
JOIN Team t 
ON e.Team_Id = t.Team_Id 
JOIN Department d
ON t.Department_Id = d.Department_Id 