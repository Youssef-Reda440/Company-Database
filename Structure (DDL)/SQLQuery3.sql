USE Company

CREATE TABLE Task
(
	Task_Id INT IDENTITY(1,1),
	Title VARCHAR(50) NOT NULL,
	Description VARCHAR(100),
	EstimatedHours INT CHECK (EstimatedHours > 0),
	CONSTRAINT Task_PK PRIMARY KEY(Task_Id)
)

CREATE TABLE Task_Assignment
(
	Person_Id INT,
	Task_Id INT,
	RoleOnTask VARCHAR(10) NOT NULL,
	HoursWorked INT NOT NULL CHECK (HoursWorked > 0),
	AssignedDate DATE,
	CONSTRAINT Task_Assignment_PK PRIMARY KEY(Person_Id,Task_Id),
	CONSTRAINT Task_Assignment_FK1 FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id) ON DELETE CASCADE,
	CONSTRAINT Task_Assignment_FK2 FOREIGN KEY (Task_Id) REFERENCES Task(Task_Id) ON DELETE CASCADE
)

CREATE TABLE Skill
(
	Skill_Id INT IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	Description VARCHAR(100),
	CONSTRAINT Skill_PK PRIMARY KEY(Skill_Id)
)

CREATE TABLE Person_Skill
(
	Person_Id INT,
	Skill_Id INT,
	Level VARCHAR(10) NOT NULL,
	ExperienceYears INT NOT NULL,
	CONSTRAINT Person_Skill_PK PRIMARY KEY(Person_Id,Skill_Id),
	CONSTRAINT Person_Skill_FK1 FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id) ON DELETE CASCADE,
	CONSTRAINT Person_Skill_FK2 FOREIGN KEY (Skill_Id) REFERENCES Skill(Skill_Id) ON DELETE CASCADE
)

CREATE TABLE Task_Skill
(
	Skill_Id INT,
	Task_Id INT,
	RequiredLevel VARCHAR(10) NOT NULL,
	CONSTRAINT Task_Skill_PK PRIMARY KEY(Skill_Id, Task_Id),
	CONSTRAINT Task_Skill_FK1 FOREIGN KEY (Task_Id) REFERENCES Task(Task_Id) ON DELETE CASCADE,
	CONSTRAINT Task_Skill_FK2 FOREIGN KEY (Skill_Id) REFERENCES Skill(Skill_Id) ON DELETE CASCADE
)