USE master;

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Farm')
BEGIN 
    CREATE DATABASE Farm;
END
GO

USE Farm;
GO
CREATE TABLE Chicken(
    ChickID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(50) NOT NULL,
    Breed VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    EggProduction DECIMAL(5,2) NOT NULL, 
    IsPregnant BIT NOT NULL, 
    LastVetCheck DATE NOT NULL
);

GO
INSERT INTO Chicken(Name, Breed, Age, EggProduction, IsPregnant, LastVetCheck) VALUES
('Jeffy', 'Holstein', 5, 25.5, 1, '2026-04-01'),
('Lilly', 'Brain', 2, 27.5, 1, '2026-06-12'),
('Tumi', 'Hoot', 7, 19.5, 1, '2026-07-13');