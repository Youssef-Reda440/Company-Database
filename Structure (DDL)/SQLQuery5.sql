USE Company

ALTER TABLE Team 
ADD Department_Id INT

ALTER TABLE Team 
ADD CONSTRAINT Team_FK
FOREIGN KEY (Department_Id) 
REFERENCES Department(Department_Id)
