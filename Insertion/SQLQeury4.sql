USE Company

INSERT INTO Contract
(ContractName, StartDate, EndDate, Total_Value, Client_Id)
VALUES
('C001', '2023-01-01', '2024-01-01', 500000, 26),
('C002', '2023-02-01', '2024-02-01', 350000, 27),
('C003', '2023-03-01', '2024-03-01', 420000, 28),
('C004', '2023-04-01', '2024-04-01', 300000, 29),
('C005', '2023-05-01', '2024-05-01', 600000, 30);

INSERT INTO Project
(Name, Description, StartDate, EndDate, Budget, Manager_Id, Contract_Id)
VALUES
('ERP System',     'Enterprise system',     '2023-01-10', '2023-12-31', 300000, 10, 1),
('HR Platform',    'HR management system',  '2023-02-15', '2023-11-30', 200000, 6,  2),
('Mobile App',     'Customer mobile app',   '2023-03-01', '2023-10-31', 180000, 3,  3),
('DevOps Tools',   'Automation tools',      '2023-04-01', '2023-12-01', 150000, 4,  4),
('QA Automation',  'Testing automation',    '2023-05-01', '2023-11-30', 120000, 15, 5);

INSERT INTO Project_Assignment
(Person_Id, Project_Id, RoleInProject, AssignedAt, EndDate)
VALUES
(1,  1, 'Dev',   '2023-01-10', '2023-12-31'),
(2,  1, 'UI',    '2023-01-15', '2023-12-31'),
(10, 1, 'Lead',  '2023-01-10', '2023-12-31'),

(6,  2, 'HR',    '2023-02-15', '2023-11-30'),
(7,  2, 'UI',    '2023-02-20', '2023-11-30'),

(3,  3, 'Dev',   '2023-03-01', '2023-10-31'),
(16, 3, 'Dev',   '2023-03-05', '2023-10-31'),

(4,  4, 'Lead',  '2023-04-01', '2023-12-01'),
(19, 4, 'Ops',   '2023-04-05', '2023-10-31'),

(5,  5, 'QA',    '2023-05-01', '2023-11-30'),
(20, 5, 'QA',    '2023-05-05', '2023-09-30');
