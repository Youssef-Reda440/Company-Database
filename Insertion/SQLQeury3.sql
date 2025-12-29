USE Company

INSERT INTO Task
(Title, Description, EstimatedHours)
VALUES
('Build REST API','Develop backend APIs',120),
('Design UI','Create frontend layouts',80),
('Mobile Features','Implement mobile features',100),
('CI/CD Pipeline','Setup deployment pipeline',60),
('System Testing','Perform system testing',90);

INSERT INTO Skill
(Name, Description)
VALUES
('Java','Backend development'),
('JavaScript','Frontend development'),
('Flutter','Mobile development'),
('Docker','Containerization and DevOps'),
('Testing','Software testing');

INSERT INTO Person_Skill
(Person_Id, Skill_Id, Level, ExperienceYears)
VALUES
(1, 1, 'Advanced', 5),
(2, 2, 'Advanced', 4),
(3, 3, 'Medium', 3),
(4, 4, 'Advanced', 6),
(5, 5, 'Medium', 4),
(11, 1, 'Beginner', 2),
(12, 2, 'Advanced', 2),
(15, 5, 'Advanced', 6),
(16, 1, 'Advanced', 3),
(17, 2, 'Beginner', 1);

INSERT INTO Task_Skill
(Skill_Id, Task_Id, RequiredLevel)
VALUES
(1, 1, 'Advanced'),
(2, 2, 'Advanced'),
(3, 3, 'Medium'),
(4, 4, 'Advanced'),
(5, 5, 'Beginner');

INSERT INTO Task_Assignment
(Person_Id, Task_Id, RoleOnTask, HoursWorked, AssignedDate)
VALUES
(1, 1, 'Owner', 110, '2023-01-10'),
(2, 2, 'Owner', 70,  '2023-01-15'),
(3, 3, 'Dev',   90,  '2023-02-01'),
(4, 4, 'Lead',  55,  '2023-02-10'),
(5, 5, 'Tester',80,  '2023-03-01'),
(11,1, 'Dev',   60,  '2023-01-20'),
(12,2, 'Dev',   50,  '2023-01-22');
