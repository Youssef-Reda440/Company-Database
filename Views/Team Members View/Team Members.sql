CREATE VIEW vw_TeamMembers
AS 
SELECT t.Name AS TeamName, d.Name AS DepartmentName, p.Person_Type, p.FirstName, p.LastName
FROM Team t JOIN Department d
ON t.Department_Id = d.Department_Id
JOIN Employee e
ON e.Team_Id = t.Team_Id
JOIN Person p
ON p.Person_Id = e.Person_Id
UNION ALL 
SELECT t.Name AS TeamName, d.Name AS DepartmentName, p.Person_Type, p.FirstName, p.LastName
FROM Team t JOIN Department d
ON t.Department_Id = d.Department_Id
JOIN Team_Freelancer tf
ON tf.Team_Id = t.Team_Id
JOIN Freelancer f
ON f.Person_Id = tf.Freelancer_Id
JOIN Person p
ON p.Person_Id = f.Person_Id