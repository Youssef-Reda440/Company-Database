USE Company 

INSERT INTO Metting
(Title, MettingDate, Start_Time, End_Time, Entity_Type)
VALUES
('Sprint Planning',  '2023-04-01', '2023-04-01 10:00', '2023-04-01 12:00', 'Project'),
('HR Policy Review', '2023-04-05', '2023-04-05 11:00', '2023-04-05 12:30', 'Department'),
('Client Kickoff',   '2023-04-10', '2023-04-10 13:00', '2023-04-10 15:00', 'Contract'),
('DevOps Sync',      '2023-04-15', '2023-04-15 10:30', '2023-04-15 11:30', 'Team'),
('QA Review',        '2023-04-20', '2023-04-20 14:00', '2023-04-20 16:00', 'Team');

INSERT INTO Metting_Attendence
(Person_Id, Metting_Id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(8, 1),

(6, 2),
(15, 2),

(10, 3),
(26, 3),
(27, 3),

(4, 4),
(19, 4),

(5, 5),
(20, 5);
