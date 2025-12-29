USE Company 

INSERT INTO Person
(FirstName, LastName, Email, Phone, Gender, Person_Type)
VALUES
('Ahmed','Hassan','ahmed.hassan@company.com','01010000001','M','Employee'),
('Mohamed','Ali','mohamed.ali@company.com','01010000002','M','Employee'),
('Omar','Youssef','omar.youssef@company.com','01010000003','M','Employee'),
('Mahmoud','Fathy','mahmoud.fathy@company.com','01010000004','M','Employee'),
('Khaled','Samir','khaled.samir@company.com','01010000005','M','Employee'),
('Sara','Ibrahim','sara.ibrahim@company.com','01010000006','F','Employee'),
('Mona','Adel','mona.adel@company.com','01010000007','F','Employee'),
('Nour','Maher','nour.maher@company.com','01010000008','F','Employee'),
('Aya','Mostafa','aya.mostafa@company.com','01010000009','F','Employee'),
('Huda','Tarek','huda.tarek@company.com','01010000010','F','Employee'),
('Youssef','Gamal','youssef.gamal@company.com','01010000011','M','Employee'),
('Mostafa','Said','mostafa.said@company.com','01010000012','M','Employee'),
('Eslam','Nabil','eslam.nabil@company.com','01010000013','M','Employee'),
('Amr','Reda','amr.reda@company.com','01010000014','M','Employee'),
('Hany','Ashraf','hany.ashraf@company.com','01010000015','M','Employee'),

('Ali','Hatem','ali.hatem@company.com','01010000016','M','Freelancer'),
('Tamer','Essam','tamer.essam@company.com','01010000017','M','Freelancer'),
('Ramy','Ehab','ramy.ehab@company.com','01010000018','M','Freelancer'),
('Laila','Fouad','laila.fouad@company.com','01010000019','F','Freelancer'),
('Nada','Saad','nada.saad@company.com','01010000020','F','Freelancer'),

('Global','Supplies','global.supplies@company.com','01010000021','M','Supplier'),
('Tech','Source','tech.source@company.com','01010000022','M','Supplier'),
('Prime','Logistics','prime.logistics@company.com','01010000023','M','Supplier'),
('Smart','Devices','smart.devices@company.com','01010000024','M','Supplier'),
('Office','World','office.world@company.com','01010000025','M','Supplier'),

('Acme','Corp','contact@acme.com','01010000026','M','Client'),
('Vision','Tech','info@visiontech.com','01010000027','M','Client'),
('Future','Systems','contact@future.com','01010000028','M','Client'),
('Blue','Ocean','info@blueocean.com','01010000029','M','Client'),
('Next','Gen','contact@nextgen.com','01010000030','M','Client')

INSERT INTO Department (Name)
VALUES
('IT'),  
('HR'),
('Finance'),   
('Operations'),   
('QA');  

INSERT INTO Team (Name, Department_Id)
VALUES
('Backend Team', 1),  
('Frontend Team', 1), 
('Mobile Team', 1), 
('DevOps Team', 4),  
('QA Team', 5);  


INSERT INTO Employee
(Person_Id, HireDate, JobTitle, Salary, Employee_Type, Team_Id)
VALUES
(1,'2020-01-10','Backend Developer',12000,'Full-Time',1),
(2,'2019-03-15','Frontend Developer',11000,'Full-Time',2),
(3,'2018-06-01','Mobile Developer',13000,'Full-Time',3),
(4,'2017-09-20','DevOps Engineer',15000,'Full-Time',4),
(5,'2016-02-11','QA Engineer',9000,'Full-Time',5),

(6,'2021-05-01','HR Specialist',8000,'Full-Time',5),
(7,'2020-07-10','UI Designer',9500,'Full-Time',2),
(8,'2019-11-12','Product Owner',18000,'Full-Time',1),
(9,'2018-04-18','Scrum Master',16000,'Full-Time',1),
(10,'2017-08-08','Team Lead',20000,'Full-Time',1),

(11,'2022-01-15','Junior Backend Developer',8500,'Full-Time',1),
(12,'2022-02-20','Junior Frontend Developer',8000,'Full-Time',2),
(13,'2021-10-01','Business Analyst',14000,'Full-Time',3),
(14,'2020-12-05','System Analyst',15000,'Full-Time',4),
(15,'2019-06-30','QA Lead',17000,'Full-Time',5);

INSERT INTO Freelancer
(Person_Id, HourlyRate, Contract_Start, Contract_End, Availability)
VALUES
(16,300,'2023-01-01','2024-01-01','Full-Time'),
(17,250,'2023-02-01','2024-02-01','Part-Time'),
(18,280,'2023-03-01','2024-03-01','Full-Time'),
(19,220,'2023-04-01','2024-04-01','Part-Time'),
(20,200,'2023-05-01','2024-05-01','Part-Time');

INSERT INTO Supplier
(Person_Id, Supplier_Type, Rating, Contract_Start, Contract_End)
VALUES
(21,'Hardware',4.500,'2022-01-01','2025-01-01'),
(22,'Software',4.200,'2022-06-01','2025-06-01'),
(23,'Logistics',4.000,'2021-03-01','2024-03-01'),
(24,'Devices',4.800,'2023-01-01','2026-01-01'),
(25,'Office Supplies',3.900,'2022-09-01','2025-09-01');

INSERT INTO Client
(Person_Id, Company_Name, Industry)
VALUES
(26,'Acme Corp','Manufacturing'),
(27,'Vision Tech','Technology'),
(28,'Future Systems','Software'),
(29,'Blue Ocean','Marketing'),
(30,'Next Gen','AI');

INSERT INTO Team_Freelancer
(Freelancer_Id, Team_Id, StartDate, EndDate, Role)
VALUES
(16, 1, '2023-01-01', '2023-12-31', 'Backend Developer'),
(17, 2, '2023-02-01', '2023-11-30', 'Frontend Developer'),
(18, 3, '2023-03-01', '2023-12-31', 'Mobile Developer'),
(19, 4, '2023-04-01', '2023-10-31', 'DevOps Support'),
(20, 5, '2023-05-01', '2023-09-30', 'QA Tester');
