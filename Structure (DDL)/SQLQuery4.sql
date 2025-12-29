USE Company 

CREATE TABLE Contract
(
	Contract_Id INT IDENTITY(1,1),
	ContractName VARCHAR(10) NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	Total_Value DECIMAL(10,3) NOT NULL CHECK (Total_Value > 0),
	Client_Id INT,
	CONSTRAINT Contract_PK PRIMARY KEY (Contract_Id),
	CONSTRAINT Contract_FK FOREIGN KEY (Client_Id) REFERENCES Client(Person_Id),

	CONSTRAINT CK_Contract_Date CHECK (EndDate > StartDate)
)

CREATE TABLE Project
(
	Project_Id INT IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	Description VARCHAR(50) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	Budget DECIMAL(10,3) CHECK (Budget > 0),
	Manager_Id INT,
	Contract_Id INT,
	CONSTRAINT Project_PK PRIMARY KEY (Project_Id),
	CONSTRAINT Project_FK1 FOREIGN KEY (Manager_Id) REFERENCES Employee(Person_Id),
	CONSTRAINT Project_FK2 FOREIGN KEY (Contract_Id) REFERENCES Contract(Contract_Id),

	CONSTRAINT CK_Project_Date CHECK (EndDate > StartDate)
)

CREATE TABLE Project_Assignment
(
	Person_Id INT,
	Project_Id INT,
	RoleInProject VARCHAR(10) NOT NULL,
	AssignedAt DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	CONSTRAINT Project_Assignment_PK PRIMARY KEY(Person_Id,Project_Id),
	CONSTRAINT Project_Assignment_FK1 FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id) ON DELETE CASCADE,
	CONSTRAINT Project_Assignment_FK2 FOREIGN KEY (Project_Id) REFERENCES Project(Project_Id) ON DELETE CASCADE,

	CONSTRAINT CK_Project_Assignment_Date CHECK (EndDate > AssignedAt)
)

