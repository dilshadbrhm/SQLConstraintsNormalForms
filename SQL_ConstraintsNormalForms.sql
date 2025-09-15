CREATE DATABASE PB306

USE PB306
CREATE TABLE Students(
Id INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(25) NOT NULL,
Surname NVARCHAR(25) NOT NULL DEFAULT 'xxx',
FinCode CHAR(9) NOT NULL UNIQUE,
Age INT CHECK (Age>=10) NOT NULL,
AvgPoint DECIMAL(5,2) CHECK(AvgPoint>=0 AND AvgPoint<=100) NOT NULL
)
Truncate Table Students
INSERT INTO Students ([Name], Surname, FinCode, Age, AvgPoint)
VALUES 
('Dilshad','Ibrahimli','1A2B3C4E',21,85),
('Ali','Aliyev','1A2B3C4f',19,99),
('Vali','Valiyev','1A2B3Cff',18,57),
('Arzu','Aliyeva','1A2B3C23',55,79),
('Isa','Aliyev','1A2B3C4G',19,0),
('Asif','Aliyev','1A2B3C4P',19,55)


DELETE FROM Students WHERE AvgPoint=0

UPDATE Students SET AvgPoint=100 WHERE AvgPoint=99 

SELECT * FROM Students WHERE AvgPoint>51 AND AvgPoint<90

SELECT * FROM Students WHERE [Name] LIKE 'A%f'


