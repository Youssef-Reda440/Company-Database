CREATE DATABASE Company 

USE Company 

CREATE TABLE Person
(
	Person_Id INT IDENTITY(1, 1),
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL CONSTRAINT UQ_Person_Email UNIQUE (Email), 
	Phone VARCHAR(50) NOT NULL,
	Gender CHAR(1) NOT NULL CONSTRAINT CK_Person_Gender CHECK (Gender IN('M','F')), 
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedAt DATETIME NOT NULL DEFAULT DATEADD(HOUR, 1, GETDATE()),
	Person_Type VARCHAR(20) NOT NULL,
	CONSTRAINT Person_PK PRIMARY KEY (Person_Id),

	CONSTRAINT CK_Person_Date CHECK (UpdatedAt > CreatedAt)
)

CREATE TABLE Freelancer
(
	Person_Id INT,
	HourlyRate INT NOT NULL CHECK (HourlyRate > 0),
	Contract_Start DATETIME NOT NULL,
	Contract_End DATETIME NOT NULL,
	Availability VARCHAR(20),
	CONSTRAINT Freelancer_PK PRIMARY KEY (Person_Id),
	CONSTRAINT Freelancer_FK FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id),

	CONSTRAINT CK_Freelancer_Contract CHECK (Contract_End > Contract_Start)
)

CREATE TABLE Supplier
(
	Person_Id INT,
	Supplier_Type VARCHAR(50) NOT NULL,
	Rating DECIMAL(10, 3) NOT NULL CONSTRAINT CK_Supplier_Rating CHECK (Rating BETWEEN 0 AND 5),
	Contract_Start DATETIME NOT NULL,
	Contract_End DATETIME NOT NULL,
	CONSTRAINT Supplier_PK PRIMARY KEY (Person_Id),
	CONSTRAINT Supplier_FK FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id),

	CONSTRAINT CK_Supplier_Contract CHECK (Contract_End > Contract_Start)
)

CREATE TABLE Client
(
	Person_Id INT,
	Company_Name VARCHAR(50) NOT NULL,
	Industry VARCHAR(50) NOT NULL,
	CONSTRAINT Client_PK PRIMARY KEY (Person_Id),
	CONSTRAINT Client_FK FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id)
)

CREATE TABLE Team
(
	Team_Id INT IDENTITY(1,1),
	Name VARCHAR(30) NOT NULL,
	CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedAt DATETIME NOT NULL DEFAULT DATEADD(HOUR, 1, GETDATE()),
	CONSTRAINT Team_PK PRIMARY KEY (Team_Id),

	CONSTRAINT CK_Team_Date CHECK (UpdatedAt > CreatedAt)
)

CREATE TABLE Employee
(
	Person_Id INT ,
	HireDate DATETIME NOT NULL,
	JobTitle VARCHAR(50) NOT NULL,
	Salary DECIMAL(10, 3) NOT NULL CHECK (Salary > 0), 
	Employee_Type VARCHAR(50),
	Team_Id INT,
	CONSTRAINT Employee_PK PRIMARY KEY (Person_Id),
	CONSTRAINT Employee_FK1 FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id),
	CONSTRAINT Employee_FK2 FOREIGN KEY (Team_Id) REFERENCES Team(Team_Id)
)

CREATE TABLE Metting
(
	Metting_Id INT IDENTITY(1, 1),
	Title VARCHAR(40) NOT NULL,
	MettingDate DATETIME NOT NULL,
	Start_Time DATETIME NOT NULL,
	End_Time DATETIME NOT NULL,
	Entity_Type VARCHAR(40) NOT NULL,
	CONSTRAINT Metting_PK PRIMARY KEY (Metting_Id),

	CONSTRAINT CK_Metting_Time CHECK (End_time > Start_Time)
)

CREATE TABLE Metting_Attendence
(
	Person_Id INT,
	Metting_Id INT,
	CONSTRAINT Metting_Attendence_PK PRIMARY KEY (Person_Id, Metting_Id),
	CONSTRAINT Metting_Attendence_FK1 FOREIGN KEY (Person_Id) REFERENCES Person(Person_Id) ON DELETE CASCADE,
	CONSTRAINT Metting_Attendence_FK2 FOREIGN KEY (Metting_Id) REFERENCES Metting(Metting_Id) ON DELETE CASCADE
)
