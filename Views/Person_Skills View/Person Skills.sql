CREATE VIEW vw_PersonSkills
AS 
SELECT p.FirstName+' '+p.LastName AS Person_Name, s.Name AS Skill_Name, ps.Level, ps.ExperienceYears
FROM Person p JOIN Person_Skill ps
ON p.Person_Id = ps.Person_Id
JOIN Skill s
ON s.Skill_Id = ps.Skill_Id