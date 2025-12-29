USE Company

CREATE TABLE Department
(
	Department_Id INT IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedAt DATETIME NOT NULL DEFAULT DATEADD(HOUR, 1, GETDATE()),
	CONSTRAINT Department_PK PRIMARY KEY (Department_Id),

	CONSTRAINT CK_Department_Date CHECK (UpdatedAt > CreatedAt)
) 

CREATE TABLE Team_Freelancer
(
	Freelancer_Id INT,
	Team_Id INT,
	Role VARCHAR(40),
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	CONSTRAINT Team_Freelnacer_PK PRIMARY KEY (Freelancer_Id, Team_Id),
	CONSTRAINT Team_Freelnacer_FK1 FOREIGN KEY (Freelancer_Id) REFERENCES Freelancer(Person_Id) ON DELETE CASCADE,
	CONSTRAINT Team_Freelnacer_FK2 FOREIGN KEY (Team_Id) REFERENCES Team(Team_Id) ON DELETE CASCADE,

	CONSTRAINT CK_Team_Freelancer_Date CHECK (EndDate > StartDate)
)